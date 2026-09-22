#!/usr/bin/env bash
# Render Open Graph images (1200x630) for the standalone pages from the built
# site: the top of each language version, so a shared link previews the real
# headline in the reader's language. Authoring step, run locally after
# `make build`; the PNGs are committed to assets/img/og/ like other assets.
#
#   make og
#
# Needs Node >= 22 and Chrome (CHROME=/path/to/chrome to override).
set -eu
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
DIST="$ROOT/dist"
OUT="$ROOT/assets/img/og"
PORT="${OG_PORT:-8117}"
mkdir -p "$OUT"
[ -f "$DIST/business.html" ] || { echo "run make build first" >&2; exit 1; }

(cd "$DIST" && exec python3 -m http.server "$PORT" >/dev/null 2>&1) &
SERVER=$!
trap 'kill $SERVER 2>/dev/null' EXIT
sleep 1

for f in "$ROOT"/pages/*.html; do
  b="$(basename "$f" .html)"                 # business or business.en
  name="${b%%.*}"; lang="${b#*.}"; [ "$lang" = "$b" ] && lang=cs
  plan="$(mktemp)"
  cat > "$plan" <<JSON
{"device":{"width":1200,"height":630,"scale":1,"mobile":false},"steps":[
 {"goto":"http://localhost:$PORT/$b.html","settle":1500},
 {"eval":"document.querySelectorAll('.brand-backdrop,.brand-spacer').forEach(e=>e.remove()),1"},
 {"shot":"$OUT/$name.$lang.png"}
]}
JSON
  node "$HERE/shoot.mjs" "$plan" >/dev/null
  rm -f "$plan"
  echo "  og $name.$lang.png"
done
