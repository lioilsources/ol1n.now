#!/usr/bin/env bash
# import-visuals.sh — build a web-ready "visuals" gallery for an app.
#
# Sibling of import-skins.sh, and deliberately simpler. Kirian's skins are a
# product feature with their own audio, bosses and CRT settings, so that
# script models a skin as an entity. An app's visuals are just categorised
# artwork: airframes, liveries, arenas. One flat manifest covers it.
#
# Reads a local checkout of the app's repo, writes:
#   apps/<slug>/visuals/cats.tsv     id title note
#   apps/<slug>/visuals/assets.tsv   cat ord file label w h
#   apps/<slug>/visuals/<cat>/<name>.webp
#
# Authoring-time only, never run on CI - the output is committed, exactly as
# with skins, so a build needs no source repo and no ImageMagick.
#
# Requires: ImageMagick `magick` with a WebP delegate.
#
#   scripts/import-visuals.sh doodlebugs [path-to-doodlebugs-checkout]
set -euo pipefail

SLUG="${1:-doodlebugs}"
SRC="${2:-${DOODLEBUGS_SRC:-/Volumes/Unity_Storage/Code/doodlebugs-revival-6}}"

HERE="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$HERE/apps/$SLUG/visuals"

[ "$SLUG" = doodlebugs ] || { echo "error: only doodlebugs is described here so far" >&2; exit 1; }
[ -d "$SRC/Assets/Doodlebugs" ] || { echo "error: no Doodlebugs checkout at $SRC" >&2; exit 1; }

MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found (brew install imagemagick)" >&2; exit 1; }
"$MAGICK" -list format 2>/dev/null | grep -qiE '^ *WEBP' || {
  echo "error: ImageMagick has no WebP delegate (brew install webp && brew reinstall imagemagick)" >&2; exit 1; }

TAB="$(printf '\t')"
rm -rf "$OUT"
mkdir -p "$OUT"
: > "$OUT/cats.tsv"
: > "$OUT/assets.tsv"

# model_flying_car -> "Flying Car";  DuneSea -> "Dune Sea";  skin_raf_khaki -> "RAF Khaki"
#
# Sprites are snake_case and arenas are CamelCase, so both have to split; and
# only all-lowercase words get title-cased, otherwise "DuneSea" would come out
# as "Dunesea".
pretty() {
  printf '%s' "$1" \
    | sed -E 's/^(model|skin)_//; s/_fg$//; s/_/ /g; s/([a-z0-9])([A-Z])/\1 \2/g' \
    | awk '{ for (i = 1; i <= NF; i++) if ($i ~ /^[a-z0-9]+$/) $i = toupper(substr($i, 1, 1)) substr($i, 2);
             # per-word acronym fixes; BSD sed has no \b, so match whole fields
             for (i = 1; i <= NF; i++) if ($i == "Raf") $i = "RAF"
             print }'
}

emit_cat() { printf '%s%s%s%s%s\n' "$1" "$TAB" "$2" "$TAB" "$3" >> "$OUT/cats.tsv"; }

# add <cat> <ord> <src> <label> <mode>
#   mode=pixel  hard-edged sprite: point-scaled to 4x, lossless (lossy WebP
#               turns pixel art into mush at these sizes)
#   mode=photo  painted artwork: Lanczos downscale, lossy
add() {
  _cat="$1"; _ord="$2"; _src="$3"; _label="$4"; _mode="$5"
  mkdir -p "$OUT/$_cat"
  _stem="$(basename "$_src")"; _stem="${_stem%.png}"
  _dst="$OUT/$_cat/$_stem.webp"
  case "$_mode" in
    pixel) "$MAGICK" "$_src" -filter point -resize 400% -strip \
             -define webp:lossless=true "$_dst" ;;
    photo) "$MAGICK" "$_src" -filter Lanczos -resize "${6}>" -strip \
             -define webp:method=6 -quality 82 "$_dst" ;;
  esac
  _wh="$("$MAGICK" identify -format '%w %h' "$_dst")"
  printf '%s%s%s%s%s%s%s%s%s%s%s\n' \
    "$_cat" "$TAB" "$_ord" "$TAB" "$_stem.webp" "$TAB" "$_label" "$TAB" \
    "${_wh%% *}" "$TAB" "${_wh##* }" >> "$OUT/assets.tsv"
}

# ---- airframes -------------------------------------------------------------
emit_cat planes "Trupy" "Každý tvar prošel stejnou obálkou, takže má i stejný zásahový box — liší se jen silueta."
n=0
add planes 0 "$SRC/Assets/Doodlebugs/Sprites/BiPlane/BiPlane1.png" "Doodlebug" pixel
for f in "$SRC"/Assets/Doodlebugs/Resources/Sprites/PlaneModels/model_*.png; do
  case "$f" in *_mask.png) continue ;; esac
  [ -e "$f" ] || continue
  n=$((n + 1))
  add planes "$n" "$f" "$(pretty "$(basename "${f%.png}")")" pixel
done

# ---- liveries --------------------------------------------------------------
emit_cat skins "Kamufláže" "Kamufláž je čistě textura na sdílené siluetě — ocasní ploška zůstává červená a hra ji přebarvuje podle hráče."
n=0
for f in "$SRC"/Assets/Doodlebugs/Resources/Sprites/PlaneSkins/skin_*.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add skins "$n" "$f" "$(pretty "$(basename "${f%.png}")")" pixel
done

# ---- arenas ----------------------------------------------------------------
emit_cat backgrounds "Arény" "Pozadí se roztáhne přes celou kameru; horní dvě třetiny zůstávají klidné, protože se v nich létá."
n=0
for f in "$SRC"/Assets/Doodlebugs/Sprites/Background/*.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add backgrounds "$n" "$f" "$(pretty "$(basename "${f%.png}")")" photo 960x
done

emit_cat foregrounds "Terén" "Parallax pás v popředí. Letadla létají za ním, střely ho prostřelují a kusy z něj ubývají."
n=0
for f in "$SRC"/Assets/Doodlebugs/Sprites/Foreground/*_fg.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add foregrounds "$n" "$f" "$(pretty "$(basename "${f%.png}")")" photo 1280x
done

echo "visuals -> $OUT"
awk -F"$TAB" '{ c[$1]++ } END { for (k in c) printf "  %-12s %d\n", k, c[k] }' "$OUT/assets.tsv"
du -sh "$OUT" | sed 's/^/  /'
