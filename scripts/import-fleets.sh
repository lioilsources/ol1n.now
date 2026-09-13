#!/usr/bin/env bash
# import-fleets.sh — build a web-ready "fleets" gallery for OrbitronTactics.
#
# Third sibling of import-skins.sh / import-visuals.sh. Kirian's skins are whole
# visual themes and Doodlebugs' visuals are flat artwork; OrbitronTactics sits in
# between: ten interchangeable fleets that each redraw the same six unit types,
# plus one shared layer (battle sounds, unit themes, and the maneuver catalog)
# that belongs to the game rather than to any fleet. Hence two manifests for the
# fleets and a third for the shared part.
#
# Reads a local checkout of the game, writes:
#   apps/<slug>/fleets/fleets.tsv    id name theme notes default
#   apps/<slug>/fleets/assets.tsv    fleet ord category file label w h
#   apps/<slug>/fleets/common.tsv    category ord file label meta1 meta2
#   apps/<slug>/fleets/<fleet>/{preview,white,black}/*.webp
#   apps/<slug>/fleets/common/{sfx,music}/*.m4a
#   apps/<slug>/fleets/maneuvers.json
#
# Authoring-time only, never run on CI — the output is committed, so a build
# needs no game checkout, no ImageMagick and no Dart.
#
# Requires: ImageMagick `magick` with a WebP delegate; ffmpeg (audio only);
# the Dart SDK (maneuver catalog only). Each of the last two degrades to a
# warning rather than failing the import.
#
#   scripts/import-fleets.sh [slug] [path-to-OrbitronTactics-checkout]
set -euo pipefail

SLUG="${1:-orbitrontactics}"
HERE="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${2:-${ORBITRON_SRC:-$HERE/../OrbitronTactics}}"
OUT="$HERE/apps/$SLUG/fleets"

[ -d "$SRC/assets/fleets" ] || {
  echo "error: no OrbitronTactics checkout at $SRC (set ORBITRON_SRC=/path/to/OrbitronTactics)" >&2; exit 1; }

# ---- tunables ----
SPRITE_MAX="256x256"     # native size of the source PNGs; 2x the grid tile
PREVIEW_TILE="128x192"   # 3x2 of these = a 384x384 square chip image
Q_SPRITE=86; Q_PREVIEW=86
MUSIC_BR="96k"; SFX_BR="80k"

UNITS="pawn knight bishop rook queen king"

# ---- tooling ----
MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found (brew install imagemagick)" >&2; exit 1; }
"$MAGICK" -list format 2>/dev/null | grep -q ' WEBP' || {
  echo "error: ImageMagick has no WebP delegate (brew install webp && brew reinstall imagemagick)" >&2; exit 1; }
FFMPEG="$(command -v ffmpeg || true)"
FFPROBE="$(command -v ffprobe || true)"
[ -n "$FFMPEG" ] && [ -n "$FFPROBE" ] || {
  FFMPEG=""; echo "  ! ffmpeg/ffprobe not found — skipping sounds + music (brew install ffmpeg)"; }
DART="$(command -v dart || true)"
[ -n "$DART" ] || echo "  ! dart not found — keeping any existing maneuvers.json"

TAB="$(printf '\t')"

# ---- encoders ----
img() { "$MAGICK" "$1" -filter Lanczos -resize "$3>" -strip -define webp:method=6 -quality "$4" "$2"; }
aud() { "$FFMPEG" -y -nostdin -loglevel error -i "$1" -vn -c:a aac \
        -b:a "$3" -ar 44100 -ac "$4" -movflags +faststart "$2"; }
dur() { "$FFPROBE" -v error -show_entries format=duration -of csv=p=0 "$1" | awk '{printf "%d", ($1 < 1 ? 1 : $1)}'; }
dims() { "$MAGICK" identify -format '%w %h' "$1" 2>/dev/null; }

row()  { _o=""; for _f in "$@"; do _o="$_o${_o:+$TAB}$_f"; done; printf '%s\n' "$_o"; }
asset() { row "$@" >> "$OUT/assets.tsv"; }
common_row() { row "$@" >> "$OUT/common.tsv"; }

# unit_label <unit> -> Czech chess name
unit_label() {
  case "$1" in
    pawn)   echo "Pěšec" ;;  knight) echo "Jezdec" ;;  bishop) echo "Střelec" ;;
    rook)   echo "Věž" ;;    queen)  echo "Dáma" ;;    king)   echo "Král" ;;
    *)      echo "$1" ;;
  esac
}

# element_label <element> -> Czech name of the battle element
element_label() {
  case "$1" in
    kinetic)  echo "Kinetický" ;;  water) echo "Vodní" ;;  fire) echo "Ohnivý" ;;
    ice)      echo "Ledový" ;;     electric) echo "Elektrický" ;;
    *)        echo "$1" ;;
  esac
}

# ---- fleets ----------------------------------------------------------------
# id | display name | theme (what the art actually looks like) | note | default
#
# The names and slugs are `FleetSkin` in lib/features/battle/data/fleet_skin.dart;
# the themes are written from the art, since the enum carries no description.
FLEETS="$(cat <<'ROWS'
vanguard|Orbitron Vanguard|Šedobílé trupy akademie, tyrkysový tah|Výchozí flotila — s ní se začíná a proti ní se létá ve všech režimech kromě jednoho hráče.|1
solar_crusade|Solar Crusade|Zlatý a mosazný pancíř, oranžový žár|Křižácké trupy s ostrým kýlem a rozžhavenými tryskami.|0
void_hive|Void Hive|Chitinový úl, jedovatě zelená luminiscence|Organické trupy bez jediné rovné hrany — roj, ne loďstvo.|0
neon_runners|Neon Runners|Purpurová a azurová neonová grafika|Lehké závodní kluzáky; nejméně pancíře a nejvíc světla na palubě.|0
iron_armada|Iron Armada|Průmyslová ocel s oranžovým značením|Těžké nýtované trupy, které vypadají, že je někdo svařil v doku.|0
crystal_choir|Crystal Choir|Bílý porcelán a fialové krystaly|Křehce vypadající katedrální lodě s krystalickými nástavbami.|0
ronin_blades|Ronin Blades|Bílá, lakovaná červeň a čepele|Samurajská estetika — každý trup je v podstatě tasený meč.|0
atomic_age|Atomic Age|Retro rakety padesátých let, ploutve a červené špičky|Pocta obálkám starých sci-fi časopisů. Nýty, ploutve, žádná aerodynamika.|0
abyssal_tide|Abyssal Tide|Hlubinné siluety, tyrkysová bioluminiscence|Manty a rejnoci — nejširší rozpětí křídel ze všech flotil.|0
star_nomads|Star Nomads|Oranžové karavany a nákladní moduly|Poslepované trupy s připoutaným nákladem; nomádi, ne armáda.|0
ROWS
)"

# ---- prepare ---------------------------------------------------------------
# Without Dart the committed maneuver dump is kept rather than dropped — an
# import run for new artwork must not silently strip the maneuvers section.
KEEP=""
if [ -z "$DART" ] && [ -f "$OUT/maneuvers.json" ]; then
  KEEP="$(mktemp -d)"; cp "$OUT"/maneuvers.* "$KEEP/"
fi
rm -rf "$OUT"
mkdir -p "$OUT"
: > "$OUT/fleets.tsv"
: > "$OUT/assets.tsv"
: > "$OUT/common.tsv"
[ -n "$KEEP" ] && { mv "$KEEP"/maneuvers.* "$OUT/"; rmdir "$KEEP"; }

# ---- ship sprites ----------------------------------------------------------
printf '%s\n' "$FLEETS" | while IFS='|' read -r f_id f_name f_theme f_note f_def; do
  [ -n "${f_id:-}" ] || continue
  _src="$SRC/assets/fleets/$f_id"
  [ -d "$_src" ] || { echo "  ! no sprites for $f_id — skipped" >&2; continue; }
  row "$f_id" "$f_name" "$f_theme" "$f_note" "$f_def" >> "$OUT/fleets.tsv"

  mkdir -p "$OUT/$f_id/preview" "$OUT/$f_id/white" "$OUT/$f_id/black"

  # Picker tile: the six white hulls as one 3x2 grid. A single ship says nothing
  # about a fleet; the roster is the thing being chosen. Built with append rather
  # than `montage`, which insists on loading a label font even with no labels.
  "$MAGICK" \
    \( "$_src/pawn_white.png" "$_src/knight_white.png" "$_src/bishop_white.png" \
       -background none -resize "$PREVIEW_TILE" -gravity center -extent "$PREVIEW_TILE" +append \) \
    \( "$_src/rook_white.png" "$_src/queen_white.png" "$_src/king_white.png" \
       -background none -resize "$PREVIEW_TILE" -gravity center -extent "$PREVIEW_TILE" +append \) \
    -background none -append \
    -strip -define webp:method=6 -quality "$Q_PREVIEW" "$OUT/$f_id/preview/preview.webp"
  _wh="$(dims "$OUT/$f_id/preview/preview.webp")"
  asset "$f_id" 10 preview "preview/preview.webp" "Náhled" "${_wh%% *}" "${_wh##* }"

  _ord=100
  for c in white black; do
    for u in $UNITS; do
      _in="$_src/${u}_${c}.png"
      [ -f "$_in" ] || { echo "  ! missing $f_id/${u}_${c}.png" >&2; continue; }
      img "$_in" "$OUT/$f_id/$c/$u.webp" "$SPRITE_MAX" "$Q_SPRITE"
      _wh="$(dims "$OUT/$f_id/$c/$u.webp")"
      asset "$f_id" "$_ord" "$c" "$c/$u.webp" "$(unit_label "$u")" "${_wh%% *}" "${_wh##* }"
      _ord=$((_ord + 1))
    done
    _ord=200
  done
done

# ---- shared sounds and music ----------------------------------------------
# Both belong to the game, not to a fleet: the battle theme follows the
# attacking unit and the shot/explosion follows its element, whichever ships
# are flying.
if [ -n "$FFMPEG" ]; then
  mkdir -p "$OUT/common/sfx" "$OUT/common/music"
  _ord=0
  for e in kinetic water fire ice electric; do
    for k in shot explosion; do
      _in="$SRC/assets/audio/sfx/${e}_${k}.ogg"
      [ -f "$_in" ] || continue
      aud "$_in" "$OUT/common/sfx/${e}_${k}.m4a" "$SFX_BR" 1
      case "$k" in shot) _kl="výstřel" ;; *) _kl="exploze" ;; esac
      _ord=$((_ord + 1))
      common_row sfx "$_ord" "sfx/${e}_${k}.m4a" "$(element_label "$e") $_kl" \
        "$(dur "$OUT/common/sfx/${e}_${k}.m4a")" ""
    done
  done
  _ord=0
  for u in $UNITS; do
    _in="$SRC/assets/audio/music/${u}.ogg"
    [ -f "$_in" ] || continue
    aud "$_in" "$OUT/common/music/${u}.m4a" "$MUSIC_BR" 2
    _ord=$((_ord + 1))
    common_row music "$_ord" "music/${u}.m4a" "Téma — $(unit_label "$u")" \
      "$(dur "$OUT/common/music/${u}.m4a")" ""
  done
fi

# ---- maneuver catalog ------------------------------------------------------
# Dumped straight out of the game's pure-Dart catalog, so the flight paths the
# gallery animates are the ones the engine flies. See tools/dump_maneuvers.dart
# in the game repo.
if [ -n "$DART" ] && [ -f "$SRC/tools/dump_maneuvers.dart" ]; then
  ( cd "$SRC" && "$DART" run tools/dump_maneuvers.dart "$OUT" ) \
    || echo "  ! maneuver dump failed — gallery will have no maneuvers" >&2
fi

echo "fleets -> $OUT"
awk -F"$TAB" '{ c[$3]++ } END { for (k in c) printf "  %-10s %d\n", k, c[k] }' "$OUT/assets.tsv"
awk -F"$TAB" '{ c[$1]++ } END { for (k in c) printf "  %-10s %d\n", k, c[k] }' "$OUT/common.tsv"
[ -f "$OUT/maneuvers.tsv" ] && printf '  %-10s %s\n' maneuvers \
  "$(grep -c . "$OUT/maneuvers.tsv" | tr -d ' ')"
du -sh "$OUT" | sed 's/^/  /'
