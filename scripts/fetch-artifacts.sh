#!/usr/bin/env bash
# Resolve the latest download links for each app and write a manifest the site
# links to directly. We do NOT re-host binaries: GitHub's 100 MB/file and Pages'
# ~1 GB limits make that impossible, and all repos are public so the release
# asset URLs work for any visitor.
#
# For each platform bucket we pick the NEWEST matching asset across recent
# releases (artifacts are scattered across prerelease tags).
#
#   output: dist/downloads/<slug>.tsv
#           lines: platform<TAB>filename<TAB>url<TAB>sizeMB<TAB>tag
#
# Requires: gh (authenticated), jq.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/lib.sh"

ROOT="$OLN_ROOT"
DIST="$ROOT/dist"
APPS="$ROOT/apps"
PER_PAGE=30
OUT="$DIST/downloads"

command -v gh >/dev/null || { echo "error: gh CLI not found" >&2; exit 1; }
command -v jq >/dev/null || { echo "error: jq not found" >&2; exit 1; }

mkdir -p "$OUT"

# Space-separated ERE patterns (matched against lowercased asset filename) per
# platform bucket, in PREFERENCE order — the first pattern with a match wins.
bucket_patterns() {
  case "$1" in
    macos)   echo 'macos|mac-os|mac_os|\.dmg' ;;
    windows) echo 'windows|win64|win-x64|win32|\.exe$|\.msi$' ;;
    linux)   echo '\.appimage$' 'linux|\.tar\.gz$' ;;   # prefer AppImage, else tar.gz
    android) echo '\.apk$' ;;
  esac
}

fetch_app() {
  repo="$1"; slug="$2"
  manifest="$OUT/$slug.tsv"
  rm -f "$manifest"

  json="$(gh api "repos/$repo/releases?per_page=$PER_PAGE" 2>/dev/null || true)"
  if [ -z "$json" ] || [ "$json" = "[]" ]; then
    echo "  - $slug: no releases yet"
    return 0
  fi

  # rows newest-first: tag<TAB>name<TAB>url<TAB>sizeBytes ; drafts excluded
  rows="$(printf '%s' "$json" | jq -r '
    map(select(.draft | not)) | .[] | .tag_name as $t
    | (.assets // [])[] | [$t, .name, .browser_download_url, (.size|tostring)] | @tsv
  ')"
  [ -n "$rows" ] || { echo "  - $slug: releases have no assets"; return 0; }

  got=0
  for bucket in macos windows linux android; do
    line=""
    for pat in $(bucket_patterns "$bucket"); do
      line="$(printf '%s\n' "$rows" | awk -F'\t' -v p="$pat" 'tolower($2) ~ p {print; exit}')"
      [ -n "$line" ] && break
    done
    [ -n "$line" ] || continue
    tag="$(printf '%s' "$line" | cut -f1)"
    name="$(printf '%s' "$line" | cut -f2)"
    url="$(printf '%s' "$line" | cut -f3)"
    bytes="$(printf '%s' "$line" | cut -f4)"
    mb="$(awk -v b="$bytes" 'BEGIN{ printf "%.0f", b/1048576 }')"
    printf '%s\t%s\t%s\t%s\t%s\n' "$bucket" "$name" "$url" "$mb" "$tag" >> "$manifest"
    echo "  ✓ $slug/$bucket: $name (${mb} MB, $tag)"
    got=$((got+1))
  done
  [ "$got" -gt 0 ] || echo "  - $slug: no desktop/android artifacts matched"
}

echo "Resolving download links -> $OUT/"
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  slug="$(fm_get "$m" slug)"
  repo="$(fm_get "$m" repo)"
  [ -n "$repo" ] || { echo "  - $slug: no repo in meta.md, skipping"; continue; }
  fetch_app "$repo" "$slug"
done
echo "Done."
