#!/usr/bin/env bash
# Store icon exports for manual upload to App Store Connect / Google Play.
#
#   input : meta.md `repo:` + `icon_src:` (path inside the app's repo to its
#           largest square icon, read from the default branch via `gh api`)
#   output: store-screenshots/<slug>/icons/appstore-1024.png  1024x1024, sRGB,
#                                     no alpha (flattened onto the corner colour,
#                                     white when the corner is transparent)
#           store-screenshots/<slug>/icons/play-512.png       512x512, 32-bit PNG
#           apps/<slug>/icon.png (512x512) only with UPDATE_SITE_ICON=1 and a
#                                     source of at least 512 px
#
# store-screenshots/ is git-ignored and never published; CI does not run this.
# A source smaller than 1024 px is still exported, upscaled, with a WARN line.
#
# Usage: scripts/store-icons.sh [slug...]      (default: every app)
# Requires: gh (authenticated), ImageMagick.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/lib.sh"

ROOT="$OLN_ROOT"
APPS="$ROOT/apps"
OUT="$ROOT/store-screenshots"
UPDATE_SITE_ICON="${UPDATE_SITE_ICON:-0}"

MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found" >&2; exit 1; }
command -v gh >/dev/null 2>&1 || { echo "error: gh not found" >&2; exit 1; }
# `magick identify` on IM7, plain `identify` on IM6
identify_() { if [ "$(basename "$MAGICK")" = magick ]; then "$MAGICK" identify "$@"; else identify "$@"; fi; }

TMP="$(mktemp -d "${TMPDIR:-/tmp}/oln-icons.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

ok=0; warn=0; fail=0
export_app() {
  meta="$1"
  slug="$(fm_get "$meta" slug)"
  repo="$(fm_get "$meta" repo)"
  src="$(fm_get "$meta" icon_src)"
  if [ -z "$repo" ] || [ -z "$src" ]; then
    echo "  - $slug: no repo/icon_src, skipping"; return 0
  fi

  ext="$(printf '%s' "${src##*.}" | tr 'A-Z' 'a-z')"
  raw="$TMP/$slug.$ext"
  # spaces are the only thing the icon paths need escaped in the URL
  if ! gh api -H "Accept: application/vnd.github.raw" \
       "repos/$repo/contents/$(printf '%s' "$src" | sed 's/ /%20/g')" > "$raw" 2>/dev/null \
     || [ ! -s "$raw" ]; then
    echo "  ! $slug: cannot fetch $repo:$src" >&2; fail=$((fail + 1)); return 0
  fi

  # vector sources are rasterised big enough for the largest export
  in="$raw"
  if [ "$ext" = svg ]; then
    in="$TMP/$slug.svg.png"
    "$MAGICK" -background none -density 1200 "$raw" -resize 1024x1024 "$in"
  fi
  if ! dims="$(identify_ -format '%w %h\n' "$in" 2>/dev/null | head -1)" || [ -z "$dims" ]; then
    echo "  ! $slug: $src is not an image ImageMagick can read" >&2; fail=$((fail + 1)); return 0
  fi
  w="${dims% *}"; h="${dims#* }"
  min="$w"; [ "$h" -lt "$min" ] && min="$h"
  [ "$w" = "$h" ] || { echo "  WARN $slug: source is ${w}x${h}, not square - padded to a square" >&2; warn=$((warn + 1)); }
  [ "$min" -ge 1024 ] || { echo "  WARN $slug: source is ${w}x${h}, smaller than 1024 - appstore-1024 is upscaled" >&2; warn=$((warn + 1)); }

  # App Store rejects an icon with an alpha channel: flatten onto the colour of
  # the top-left pixel, or white when that corner is (partly) transparent
  bg="$("$MAGICK" "$in" -alpha set -format '%[fx:p{0,0}.a<1 ? 1 : 0] %[hex:p{0,0}]' info: 2>/dev/null || echo "1 FFFFFF")"
  case "$bg" in 0\ *) bg="#$(printf '%s' "${bg#0 }" | cut -c1-6)" ;; *) bg="#FFFFFF" ;; esac

  dir="$OUT/$slug/icons"; mkdir -p "$dir"
  "$MAGICK" "$in" -filter Lanczos -resize 1024x1024 -background none -gravity center -extent 1024x1024 \
    -colorspace sRGB -background "$bg" -alpha remove -alpha off -strip "PNG24:$dir/appstore-1024.png"
  "$MAGICK" "$in" -filter Lanczos -resize 512x512 -background none -gravity center -extent 512x512 \
    -colorspace sRGB -strip "PNG32:$dir/play-512.png"
  echo "  ✓ $slug: ${w}x${h} -> icons/appstore-1024.png (bg $bg), icons/play-512.png"

  if [ "$UPDATE_SITE_ICON" = 1 ]; then
    if [ "$min" -ge 512 ]; then
      "$MAGICK" "$in" -filter Lanczos -resize 512x512 -background none -gravity center -extent 512x512 \
        -colorspace sRGB -strip "PNG32:$(dirname "$meta")/icon.png"
      echo "    updated apps/$slug/icon.png"
    else
      echo "  WARN $slug: source under 512 px, apps/$slug/icon.png left alone" >&2; warn=$((warn + 1))
    fi
  fi
  ok=$((ok + 1))
}

echo "Exporting store icons -> store-screenshots/<slug>/icons/"
if [ $# -gt 0 ]; then
  for s in "$@"; do
    [ -f "$APPS/$s/meta.md" ] || { echo "  ! no app $s" >&2; fail=$((fail + 1)); continue; }
    export_app "$APPS/$s/meta.md"
  done
else
  for m in "$APPS"/*/meta.md; do [ -e "$m" ] && export_app "$m"; done
fi
echo "Done. $ok exported, $warn warning(s), $fail failed."
[ "$fail" = 0 ]
