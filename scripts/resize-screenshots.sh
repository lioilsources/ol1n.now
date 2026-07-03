#!/usr/bin/env bash
# Resize raw screenshots into (1) web-gallery copies shown on the store site and
# (2) exact store-upload dimensions for Google Play / Apple App Store.
#
#   input : apps/<slug>/screenshots/raw/<kind>/<platform>/*.{png,jpg,jpeg,mp4,mov,webm,m4v}
#           kind = desktop|mobile ; platform = macos|windows|linux|android|ios|ipad
#   output: dist/screenshots/<slug>/<kind>/<name>              (gallery, downscaled)
#           dist/screenshots/<slug>/store/<target>/<name>      (exact store size, images only)
#           dist/screenshots/<slug>/<kind>/<stem>.mp4          (web H.264, videos)
#           dist/screenshots/<slug>/<kind>/<stem>.poster.jpg   (video poster/thumbnail)
#
# Requires: ImageMagick `magick`; ffmpeg (only if raw/ contains videos).
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
# ffmpeg is optional — only needed when raw/ contains videos (mp4/mov/webm/m4v)
FFMPEG="$(command -v ffmpeg || true)"

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
# vid <in> <out.mp4>     web H.264 + AAC (<=1280px wide, <=15s, faststart)
vid() { "$FFMPEG" -y -loglevel error -i "$1" -t 15 \
  -vf "scale='min(1280,iw)':-2" -c:v libx264 -profile:v high -pix_fmt yuv420p \
  -crf 28 -preset veryfast -c:a aac -b:a 128k -movflags +faststart "$2"; }
# poster <in> <out.jpg>  first frame, used as the <video> poster / thumbnail
poster() { "$FFMPEG" -y -loglevel error -i "$1" -frames:v 1 -vf "scale='min(1280,iw)':-2" "$2"; }

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
    ext="$(printf '%s' "${name##*.}" | tr 'A-Z' 'a-z')"
    mkdir -p "$outroot/$kind"

    # videos: transcode to web mp4 + poster; no store-exact variants
    case "$ext" in
      mp4|mov|webm|m4v)
        if [ -z "$FFMPEG" ]; then
          echo "  ! $slug/$rel: ffmpeg not found, skipping video (brew install ffmpeg)"
          continue
        fi
        vid    "$img" "$outroot/$kind/$stem.mp4"
        poster "$img" "$outroot/$kind/$stem.poster.jpg"
        count=$((count+1)); echo "  ✓ $slug/$rel (video)"
        continue
        ;;
    esac

    # (1) gallery copy
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
$(find "$rawroot" -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.mp4' -o -iname '*.mov' -o -iname '*.webm' -o -iname '*.m4v' \) 2>/dev/null | sort)
EOF

  [ "$found" = 1 ] || echo "  - $slug: no raw screenshots"
}

echo "Resizing screenshots -> $DIST/screenshots/"
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  process_app "$(fm_get "$m" slug)"
done
echo "Done. $count image(s) processed."
