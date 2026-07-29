#!/usr/bin/env bash
# Import Kiran's skin assets into web-ready form for the store site.
#
# Authoring tool — run locally against a Kiran checkout, commit the result.
# CI never runs this; `make build` only copies the committed output.
#
#   input : $KIRAN_SRC/tyrian_mobile/assets/skins/<id>/{sprites,ui,backgrounds,sfx,music}
#           $KIRAN_SRC/docs/gallery/<id>_enemies.png       (pre-composed enemy roster)
#           $KIRAN_SRC/SKINS.md                            (theme / shader table)
#           $KIRAN_SRC/tyrian_mobile/lib/services/skin_registry.dart  (ids, names, pixelArt)
#   output: apps/kirian/skins/skins.tsv                    (one row per skin)
#           apps/kirian/skins/assets.tsv                   (one row per asset)
#           apps/kirian/skins/<id>/<category>/<name>.{webp,m4a}
#
# Categories are baked into the output tree here, so build-site.sh stays dumb
# and only filters manifest rows (same split as resize-screenshots.sh's
# desktop/mobile).
#
# Requires: ImageMagick `magick` with a WebP delegate; ffmpeg (audio only —
# without it SFX/music are skipped and those sections simply don't render).
set -eu
export LC_ALL=C          # deterministic glob ordering → deterministic `ord`

HERE="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=lib.sh
. "$HERE/lib.sh"

ROOT="$OLN_ROOT"
SRC="${KIRAN_SRC:-$ROOT/../Kiran}"
OUT="${OUT:-$ROOT/apps/kirian/skins}"
TAB="$(printf '\t')"

while [ $# -gt 0 ]; do
  case "$1" in
    --src) SRC="$2"; shift 2 ;;
    --out) OUT="$2"; shift 2 ;;
    -h|--help) sed -n '2,20p' "$0"; exit 0 ;;
    *) echo "error: unknown argument $1" >&2; exit 1 ;;
  esac
done

# ---- tunables (the knobs worth turning) ----
SPRITE_MAX="256x256"     # 2x the ~112px grid tile → crisp on retina
PREVIEW_MAX="384x384"
UI_MAX="256x256"
BG_MAX="320x640"         # parallax layers are 512x1024
ROSTER_MAX="1200x1200"
Q_SPRITE=82; Q_UI=82; Q_BG=78; Q_PREVIEW=85; Q_ROSTER=85
MUSIC_BR="96k"; SFX_BR="80k"
MUSIC_TRACKS="intro theme_1 theme_2 theme_3 theme_4 theme_5"
AUDIO_EXT="m4a"          # .ogg is not playable in Safari/iOS — transcode is mandatory

# ---- tooling ----
MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found (brew install imagemagick)" >&2; exit 1; }
"$MAGICK" -list format 2>/dev/null | grep -q ' WEBP' || {
  echo "error: ImageMagick has no WebP delegate (brew install webp && brew reinstall imagemagick)" >&2; exit 1; }
# ffmpeg is optional — missing it drops audio, never fails the import
FFMPEG="$(command -v ffmpeg || true)"
FFPROBE="$(command -v ffprobe || true)"
[ -n "$FFMPEG" ] && [ -n "$FFPROBE" ] || {
  FFMPEG=""; echo "  ! ffmpeg/ffprobe not found — skipping SFX + music (brew install ffmpeg)"; }

SKINS_SRC="$SRC/tyrian_mobile/assets/skins"
REGISTRY="$SRC/tyrian_mobile/lib/services/skin_registry.dart"
[ -d "$SKINS_SRC" ] || { echo "error: no skins at $SKINS_SRC (set KIRAN_SRC=/path/to/Kiran)" >&2; exit 1; }
[ -f "$REGISTRY" ] || { echo "error: skin registry not found at $REGISTRY" >&2; exit 1; }

# ---- encoders ----
# img <in> <out.webp> <geometry> <quality>   downscale only, preserve aspect
img() { "$MAGICK" "$1" -filter Lanczos -resize "$3>" -strip -define webp:method=6 -quality "$4" "$2"; }
# aud <in> <out.m4a> <bitrate> <channels>
aud() { "$FFMPEG" -y -nostdin -loglevel error -i "$1" -vn -c:a aac \
        -b:a "$3" -ar 44100 -ac "$4" -movflags +faststart "$2"; }
# dur <file> -> whole seconds
dur() { "$FFPROBE" -v error -show_entries format=duration -of csv=p=0 "$1" | awk '{printf "%d", ($1 < 1 ? 1 : $1)}'; }
# dims <image> -> "W H"
dims() { "$MAGICK" identify -format '%w %h' "$1" 2>/dev/null; }

# sprite_cat <filename> -> category
sprite_cat() {
  case "$1" in
    vessel.png|vessel_[0-9].png)                          echo vessels ;;
    bouncer.png)                                          echo boss ;;
    falcon.png|falcon[0-9].png|falconx*.png)              echo enemies ;;
    asteroid.png|asteroid[0-9].png)                       echo asteroids ;;
    *)                                                    echo fx ;;
  esac
}

# label_for <category> <stem> -> Czech display label
label_for() {
  _c="$1"; _s="$2"
  case "$_c" in
    preview) echo "Náhled" ;;
    boss)    echo "Bouncer" ;;
    vessels)
      case "$_s" in
        vessel)   echo "Loď" ;;
        vessel_*) echo "Loď $(( ${_s#vessel_} + 1 ))" ;;
        *)        echo "$_s" ;;
      esac ;;
    enemies)
      case "$_s" in
        roster)   echo "Přehled nepřátel" ;;
        falcon)   echo "Falcon" ;;
        falconx)  echo "Falcon X" ;;
        falconx2) echo "Falcon X-II" ;;
        falconx3) echo "Falcon X-III" ;;
        falconxb) echo "Falcon XB" ;;
        falconxt) echo "Falcon XT" ;;
        falcon*)  echo "Falcon ${_s#falcon}" ;;
        *)        echo "$_s" ;;
      esac ;;
    asteroids)
      case "$_s" in
        asteroid)  echo "Asteroid 1" ;;
        asteroid*) echo "Asteroid $(( ${_s#asteroid} + 1 ))" ;;
        *)         echo "$_s" ;;
      esac ;;
    fx)
      case "$_s" in
        explosion*)  echo "Exploze ${_s#explosion}" ;;
        laser)       echo "Laser" ;;
        blaster)     echo "Blaster" ;;
        vulcan)      echo "Vulcan" ;;
        bubble)      echo "Bublina" ;;
        star)        echo "Hvězda" ;;
        starg)       echo "Hvězda (zelená)" ;;
        rododendron) echo "Rododendron" ;;
        *)           echo "$_s" ;;
      esac ;;
    ui)
      case "$_s" in
        comcenter_bg)  echo "Com Center" ;;
        ui_button)     echo "Tlačítko" ;;
        ui_card_bg)    echo "Karta" ;;
        ui_tab_active) echo "Aktivní záložka" ;;
        icon_bomb)     echo "Bomba" ;;
        icon_credit)   echo "Kredity" ;;
        icon_gen)      echo "Generátor" ;;
        icon_life)     echo "Život" ;;
        icon_shield)   echo "Štít" ;;
        *)             echo "$_s" ;;
      esac ;;
    backgrounds) echo "Vrstva ${_s#layer_}" ;;
    sfx)
      case "$_s" in
        explosion_large) echo "Velká exploze" ;;
        explosion_small) echo "Malá exploze" ;;
        fire_beam)       echo "Paprsek" ;;
        fire_bullet)     echo "Výstřel" ;;
        game_over)       echo "Konec hry" ;;
        hit_hull)        echo "Zásah trupu" ;;
        hit_shield)      echo "Zásah štítu" ;;
        pickup)          echo "Bonus" ;;
        sector_complete) echo "Sektor dokončen" ;;
        weapon_unlock)   echo "Nová zbraň" ;;
        *)               echo "$_s" ;;
      esac ;;
    music)
      case "$_s" in
        intro)   echo "Intro" ;;
        theme_5) echo "Téma 5 (boss)" ;;
        theme_*) echo "Téma ${_s#theme_}" ;;
        *)       echo "$_s" ;;
      esac ;;
    *) echo "$_s" ;;
  esac
}

# row <skin> <ord> <category> <file> <label> <meta1> <meta2>
row() { printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$1" "$2" "$3" "$4" "$5" "$6" "$7" >> "$ASSETS"; }

# emit_images <skin> <srcdir> <category> <ordbase> <geometry> <quality> <filter-fn>
# <filter-fn> is called with the basename; non-zero exit skips the file.
emit_images() {
  _id="$1"; _dir="$2"; _cat="$3"; _base="$4"; _geom="$5"; _q="$6"; _fn="$7"; _n=0
  [ -d "$_dir" ] || return 0
  for f in "$_dir"/*.png; do
    [ -f "$f" ] || continue
    b="$(basename "$f")"
    "$_fn" "$b" || continue
    stem="${b%.png}"
    mkdir -p "$OUT/$_id/$_cat"
    img "$f" "$OUT/$_id/$_cat/$stem.webp" "$_geom" "$_q"
    wh="$(dims "$OUT/$_id/$_cat/$stem.webp")"
    row "$_id" "$((_base + _n))" "$_cat" "$_cat/$stem.webp" \
        "$(label_for "$_cat" "$stem")" "${wh%% *}" "${wh##* }"
    _n=$((_n+1))
  done
  return 0
}

# emit_audio <skin> <srcdir> <category> <ordbase> <bitrate> <channels> <stems|"">
# With <stems> the given track order wins; empty means "every .ogg, sorted".
emit_audio() {
  _id="$1"; _dir="$2"; _cat="$3"; _base="$4"; _br="$5"; _ch="$6"; _only="$7"; _n=0
  [ -n "$FFMPEG" ] || return 0
  [ -d "$_dir" ] || return 0
  if [ -z "$_only" ]; then
    _only=""
    for f in "$_dir"/*.ogg; do
      [ -f "$f" ] || continue
      b="$(basename "$f")"; _only="$_only ${b%.ogg}"
    done
  fi
  for stem in $_only; do
    [ -f "$_dir/$stem.ogg" ] || continue
    mkdir -p "$OUT/$_id/$_cat"
    aud "$_dir/$stem.ogg" "$OUT/$_id/$_cat/$stem.$AUDIO_EXT" "$_br" "$_ch"
    row "$_id" "$((_base + _n))" "$_cat" "$_cat/$stem.$AUDIO_EXT" \
        "$(label_for "$_cat" "$stem")" "$(dur "$_dir/$stem.ogg")" ""
    _n=$((_n+1))
  done
  return 0
}

# filters used by emit_images
is_preview()     { [ "$1" = "preview.png" ]; }
is_not_preview() { [ "$1" != "preview.png" ]; }
is_any()         { [ -n "$1" ]; }
is_vessels()   { [ "$(sprite_cat "$1")" = vessels ]; }
is_enemies()   { [ "$(sprite_cat "$1")" = enemies ]; }
is_boss()      { [ "$(sprite_cat "$1")" = boss ]; }
is_asteroids() { [ "$(sprite_cat "$1")" = asteroids ]; }
is_fx()        { [ "$(sprite_cat "$1")" = fx ]; }

# ---- metadata: registry (id, name, pixelArt) ----
# The `const SkinInfo(this.id, this.name, …)` constructor line can't match:
# it has no quote after the paren.
reg_rows() {
  sed -n "s/.*SkinInfo('\([^']*\)', *'\([^']*\)'\(.*\)\$/\1${TAB}\2${TAB}\3/p" "$REGISTRY"
}

# ---- metadata: the SKINS.md table, keyed by display name ----
# | Skin | Theme | Vessels | Bloom | CRT | Tint | Notes | Reference |
md_rows() {
  [ -f "$SRC/SKINS.md" ] || return 0
  awk -F'|' -v OFS="$TAB" '
    /^\|/ && $2 !~ /^ *Skin *$/ && $2 !~ /^ *-+ *$/ && NF >= 9 {
      for (i = 2; i <= NF; i++) gsub(/^[ \t]+|[ \t]+$/, "", $i)
      ref = $9
      sub(/^[^(]*\(/, "", ref)     # drop "[Wikipedia](" — first paren
      sub(/\)[^)]*$/, "", ref)     # drop the matching ")" — last paren
      if (ref !~ /^http/) ref = ""
      print $2, $3, $5, $6, $7, $8, ref
    }' "$SRC/SKINS.md"
}

# ---- run ----
echo "Importing skins from $SRC"
rm -rf "$OUT"; mkdir -p "$OUT"
SKINS="$OUT/skins.tsv"; ASSETS="$OUT/assets.tsv"
: > "$SKINS"; : > "$ASSETS"

MD="$(md_rows)"
count=0

while IFS="$TAB" read -r id name flags; do
  [ -n "${id:-}" ] || continue
  src="$SKINS_SRC/$id"
  if [ ! -d "$src" ]; then
    echo "  ! $id: not present in $SKINS_SRC, skipping"
    continue
  fi

  case "${flags:-}" in *"pixelArt: true"*) pixelart=1 ;; *) pixelart=0 ;; esac
  year="$(printf '%s' "$name" | sed -n 's/.*(\([0-9]\{4\}\)).*/\1/p')"

  # theme / bloom / crt / tint / notes / wiki from SKINS.md, joined on display name
  meta="$(printf '%s\n' "$MD" | awk -F"$TAB" -v n="$name" '$1 == n { print; exit }')"
  theme="$(printf '%s' "$meta" | cut -f2)"
  bloom="$(printf '%s' "$meta" | cut -f3)"
  crt="$(printf '%s'   "$meta" | cut -f4)"
  tint="$(printf '%s'  "$meta" | cut -f5)"
  notes="$(printf '%s' "$meta" | cut -f6)"
  wiki="$(printf '%s'  "$meta" | cut -f7)"

  # SKINS.md claims 4 vessels for every skin; the filesystem says otherwise.
  vessels="$(ls "$src"/sprites/vessel*.png 2>/dev/null | wc -l | tr -d ' ')"

  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
    "$id" "$name" "$year" "$theme" "$vessels" "$bloom" "$crt" "$tint" "$notes" "$wiki" "$pixelart" \
    >> "$SKINS"

  # preview (hero art, also the picker card)
  emit_images "$id" "$src/ui" preview 10 "$PREVIEW_MAX" "$Q_PREVIEW" is_preview

  emit_images "$id" "$src/sprites" vessels 100 "$SPRITE_MAX" "$Q_SPRITE" is_vessels

  # pre-composed enemy roster strip goes first in the enemies group
  roster="$SRC/docs/gallery/${id}_enemies.png"
  if [ -f "$roster" ]; then
    mkdir -p "$OUT/$id/enemies"
    img "$roster" "$OUT/$id/enemies/roster.webp" "$ROSTER_MAX" "$Q_ROSTER"
    wh="$(dims "$OUT/$id/enemies/roster.webp")"
    row "$id" 200 enemies "enemies/roster.webp" "$(label_for enemies roster)" "${wh%% *}" "${wh##* }"
  fi
  emit_images "$id" "$src/sprites" enemies 201 "$SPRITE_MAX" "$Q_SPRITE" is_enemies

  emit_images "$id" "$src/sprites"     boss        300 "$SPRITE_MAX"  "$Q_SPRITE"  is_boss
  emit_images "$id" "$src/sprites"     asteroids   400 "$SPRITE_MAX"  "$Q_SPRITE"  is_asteroids
  emit_images "$id" "$src/sprites"     fx          500 "$SPRITE_MAX"  "$Q_SPRITE"  is_fx
  emit_images "$id" "$src/ui"          ui          600 "$UI_MAX"      "$Q_UI"      is_not_preview
  emit_images "$id" "$src/backgrounds" backgrounds 700 "$BG_MAX"      "$Q_BG"      is_any

  emit_audio "$id" "$src/sfx"   sfx   800 "$SFX_BR"   1 ""
  emit_audio "$id" "$src/music" music 900 "$MUSIC_BR" 2 "$MUSIC_TRACKS"

  n="$(awk -F"$TAB" -v s="$id" '$1 == s' "$ASSETS" | wc -l | tr -d ' ')"
  echo "  ✓ $id — $n assets"
  count=$((count+1))
done <<EOF
$(reg_rows)
EOF

echo "Done. $count skin(s) -> $OUT ($(du -sh "$OUT" | cut -f1))"
