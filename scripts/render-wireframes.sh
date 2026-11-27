#!/usr/bin/env bash
# render-wireframes.sh — render an app's hand-written HTML wireframes into its
# visuals gallery.
#
# Reads apps/<slug>/wireframes/:
#   wireframes.tsv          id  kind(screen|board)  cat  ord  label
#   screens/<id>.html       390x880 (844 screen + 36 px DRAFT stamp), scale 2
#   boards/<id>.html        1600x1000 (stamp included), scale 1.5
# Writes:
#   apps/<slug>/visuals/<cat>/<id>.webp
#   apps/<slug>/visuals/assets.tsv   cat ord file label w h
# cats.tsv is hand-written and left alone.
#
# Authoring-time only, never run on CI: the output is committed, as with
# import-visuals.sh. Requires node >= 22, Chrome (see shoot.mjs), python3 and
# ImageMagick `magick` with a WebP delegate.
#
#   scripts/render-wireframes.sh <slug> [id ...]   # ids: render only these
set -euo pipefail

SLUG="${1:?usage: render-wireframes.sh <slug> [id ...]}"; shift
ONLY=" $* "
HERE="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$HERE/apps/$SLUG/wireframes"
OUT="$HERE/apps/$SLUG/visuals"
TSV="$SRC/wireframes.tsv"
[ -f "$TSV" ] || { echo "missing $TSV" >&2; exit 1; }

TMP="$(mktemp -d)"
PORT=$((8600 + RANDOM % 300))
python3 -m http.server "$PORT" --bind 127.0.0.1 --directory "$SRC" >/dev/null 2>&1 &
SRV=$!
trap 'kill $SRV 2>/dev/null; wait $SRV 2>/dev/null; rm -rf "$TMP"' EXIT
for _ in $(seq 50); do curl -sf "http://127.0.0.1:$PORT/wf.css" >/dev/null && break; sleep 0.1; done

json() { python3 -c 'import json,sys; print(json.dumps(sys.argv[1]))' "$1"; }

while IFS=$'\t' read -r id kind cat ord label; do
  case "$id" in ''|\#*) continue ;; esac
  [ "$ONLY" = "  " ] || [[ "$ONLY" == *" $id "* ]] || continue
  case "$kind" in
    screen) dev='{"width":390,"height":880,"scale":2,"mobile":true}'; q=82 ;;
    board)  dev='{"width":1600,"height":1000,"scale":1.5,"mobile":false}'; q=82 ;;
    *) echo "unknown kind '$kind' for $id" >&2; exit 1 ;;
  esac
  cat > "$TMP/$id.json" <<EOF
{"device":$dev,"steps":[
  {"goto":$(json "http://127.0.0.1:$PORT/${kind}s/$id.html")},
  {"wait":300},
  {"shot":$(json "$TMP/$id.png")}
]}
EOF
  node "$HERE/scripts/shoot.mjs" "$TMP/$id.json" >/dev/null
  mkdir -p "$OUT/$cat"
  magick "$TMP/$id.png" -strip -quality "$q" "$OUT/$cat/$id.webp"
  printf '%-14s %s  %s\n' "$id" "$(magick identify -format '%wx%h' "$OUT/$cat/$id.webp")" \
    "$(du -k "$OUT/$cat/$id.webp" | cut -f1) kB"
done < "$TSV"

# manifest from every row whose file exists, in wireframes.tsv order
{
  while IFS=$'\t' read -r id kind cat ord label; do
    case "$id" in ''|\#*) continue ;; esac
    f="$OUT/$cat/$id.webp"
    [ -f "$f" ] || continue
    wh="$(magick identify -format '%w\t%h' "$f")"
    printf '%s\t%s\t%s\t%s\t%s\n' "$cat" "$ord" "$id.webp" "$label" "$wh"
  done < "$TSV"
} > "$OUT/assets.tsv"
echo "wrote $OUT/assets.tsv ($(wc -l < "$OUT/assets.tsv" | tr -d ' ') rows)"
