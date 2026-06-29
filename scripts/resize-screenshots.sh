#!/usr/bin/env bash
# Resize raw screenshots into (1) web-gallery copies shown on the store site and
# (2) exact store-upload dimensions for Google Play / Apple App Store.
#
#   input : apps/<slug>/screenshots/raw/<kind>/<platform>/*.{png,jpg,jpeg}
#           kind = desktop|mobile ; platform = macos|windows|linux|android|ios|ipad
#   output: dist/screenshots/<slug>/<kind>/<name>              (gallery, downscaled)
#           dist/screenshots/<slug>/store/<target>/<name>      (exact store size)
#
# Requires: ImageMagick `magick`.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/lib.sh"

ROOT="$OLN_ROOT"
DIST="$ROOT/dist"
APPS="$ROOT/apps"

# ImageMagick 7 = `magick`; IM6 (e.g. Ubuntu apt) = `convert`. Both take the
# same -resize/-extent syntax used below.
MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found (brew install imagemagick / apt install imagemagick)" >&2; exit 1; }

# ---- target dimensions (edit here when store specs change) ----
# gallery (downscale only, preserve aspect)
GALLERY_DESKTOP="1920x1080"      # cap; landscape
GALLERY_MOBILE="800x1500"        # cap; portrait
# store-exact (fill + center-crop to exact px)
PLAY_PHONE="1080x1920"           # Google Play phone
APPSTORE_IPHONE_69="1320x2868"   # Apple iPhone 6.9"
APPSTORE_IPHONE_67="1290x2796"   # Apple iPhone 6.7"
APPSTORE_IPAD_13="2064x2752"     # Apple iPad 13"
MAC_APPSTORE="2880x1800"         # Mac App Store

# fit <in> <out> <WxH>   downscale only, preserve aspect (no upscale, no crop)
fit() { "$MAGICK" "$1" -resize "${3}>" "$2"; }
# fill <in> <out> <WxH>  cover + center-crop to exact pixels
fill() { "$MAGICK" "$1" -resize "${3}^" -gravity center -extent "$3" "$2"; }

count=0
process_app() {
  slug="$1"
  rawroot="$APPS/$slug/screenshots/raw"
  [ -d "$rawroot" ] || return 0
  outroot="$DIST/screenshots/$slug"
  # clean previous output for this app
  rm -rf "$outroot"

  found=0
  while IFS= read -r img; do
    [ -n "$img" ] || continue
    found=1
    rel="${img#"$rawroot"/}"                 # kind/platform/name
    kind="$(printf '%s' "$rel" | cut -d/ -f1)"
    platform="$(printf '%s' "$rel" | cut -d/ -f2)"
    name="$(basename "$img")"
    stem="${name%.*}"

    # (1) gallery copy
    mkdir -p "$outroot/$kind"
    case "$kind" in
      desktop) fit "$img" "$outroot/$kind/$name" "$GALLERY_DESKTOP" ;;
      mobile)  fit "$img" "$outroot/$kind/$name" "$GALLERY_MOBILE" ;;
      *)       fit "$img" "$outroot/$kind/$name" "$GALLERY_DESKTOP" ;;
    esac

    # (2) store-exact copies by platform
    case "$platform" in
      android)
        mkdir -p "$outroot/store/play-phone"
        fill "$img" "$outroot/store/play-phone/$stem.png" "$PLAY_PHONE" ;;
      ios)
        mkdir -p "$outroot/store/appstore-iphone-6.9" "$outroot/store/appstore-iphone-6.7"
        fill "$img" "$outroot/store/appstore-iphone-6.9/$stem.png" "$APPSTORE_IPHONE_69"
        fill "$img" "$outroot/store/appstore-iphone-6.7/$stem.png" "$APPSTORE_IPHONE_67" ;;
      ipad)
        mkdir -p "$outroot/store/appstore-ipad-13"
        fill "$img" "$outroot/store/appstore-ipad-13/$stem.png" "$APPSTORE_IPAD_13" ;;
      macos)
        mkdir -p "$outroot/store/mac-appstore"
        fill "$img" "$outroot/store/mac-appstore/$stem.png" "$MAC_APPSTORE" ;;
    esac

    count=$((count+1))
    echo "  ✓ $slug/$rel"
  done <<EOF
$(find "$rawroot" -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) 2>/dev/null | sort)
EOF

  [ "$found" = 1 ] || echo "  - $slug: no raw screenshots"
}

echo "Resizing screenshots -> $DIST/screenshots/"
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  process_app "$(fm_get "$m" slug)"
done
echo "Done. $count image(s) processed."
