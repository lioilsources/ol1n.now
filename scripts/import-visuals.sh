#!/usr/bin/env bash
# import-visuals.sh — build a web-ready "visuals" gallery for an app.
#
# Sibling of import-skins.sh, and deliberately simpler. Kirian's skins are a
# product feature with their own audio, bosses and CRT settings, so that
# script models a skin as an entity. An app's visuals are just categorised
# artwork: airframes, liveries, arenas. One flat manifest covers it.
#
# Reads a local checkout of the app's repo, writes:
#   apps/<slug>/visuals/cats.tsv     id title note grid
#   apps/<slug>/visuals/assets.tsv   cat ord file label w h
#   apps/<slug>/visuals/<cat>/<name>.webp
#
# Authoring-time only, never run on CI - the output is committed, exactly as
# with skins, so a build needs no source repo and no ImageMagick.
#
# Requires: ImageMagick `magick` with a WebP delegate.
#
#   scripts/import-visuals.sh <slug> [path-to-that-app's-checkout]
#
# Each app is one function at the bottom: where its artwork lives, how it is
# bucketed, and what the categories are called. `grid` in cats.tsv is how the
# page lays a category out (see visuals_page_html in build-site.sh):
#   pixel     hard-edged sprites, small tiles, never smoothed
#   small     smooth artwork at the pixel grid's tile size, for long catalogues
#   art       illustrations and cut-out stickers, larger tiles
#   portrait  tall character portraits, cropped to the tile
#   hero      painted scenes, cropped to the tile
#   wide      one full-width strip per row
#   sheet     one full-width specimen sheet per row, on white
set -euo pipefail

SLUG="${1:-doodlebugs}"
HERE="$(cd "$(dirname "$0")/.." && pwd)"
DEV="$(cd "$HERE/.." && pwd)"
OUT="$HERE/apps/$SLUG/visuals"

# default checkout per app; the folder names are the local ones, which is why
# three of them do not match the GitHub repo
case "$SLUG" in
  doodlebugs)          SRC="${2:-${DOODLEBUGS_SRC:-/Volumes/Unity_Storage/Code/doodlebugs-revival-6}}"; PROBE="Assets/Doodlebugs" ;;
  kittens)             SRC="${2:-${KITTENS_SRC:-$DEV/KittenCards}}";         PROBE="app/assets/art/cards" ;;
  mutants)             SRC="${2:-${MUTANTS_SRC:-$DEV/MutantCards}}";         PROBE="app/assets/art/parts" ;;
  memeshorts)          SRC="${2:-${MEMESHORTS_SRC:-$DEV/MemeShorts}}";       PROBE="drafts/library/selection.yaml" ;;
  immunorun)           SRC="${2:-${IMMUNORUN_SRC:-$DEV/BioDefenseRogue}}";   PROBE="art/drafts/g0/post" ;;
  swypekids)           SRC="${2:-${SWYPEKIDS_SRC:-$DEV/SwypeKids}}";         PROBE="assets/characters/panda" ;;
  handwrittenstickers) SRC="${2:-${HWS_SRC:-$DEV/HandWritenStickers}}";      PROBE="docs/glyph_sheets_handwriting.png" ;;
  *) echo "error: no visuals described for '$SLUG'" >&2; exit 1 ;;
esac
[ -e "$SRC/$PROBE" ] || { echo "error: no $SLUG checkout at $SRC (missing $PROBE)" >&2; exit 1; }

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

# emit_cat <id> <title> <note> <grid>
emit_cat() { printf '%s%s%s%s%s%s%s\n' "$1" "$TAB" "$2" "$TAB" "$3" "$TAB" "$4" >> "$OUT/cats.tsv"; }

# add <cat> <ord> <src> <label> <mode>
#   mode=pixel  hard-edged sprite: point-scaled to 4x, lossless (lossy WebP
#               turns pixel art into mush at these sizes)
#   mode=photo  painted artwork: Lanczos downscale, lossy
#   mode=copy   already a web-ready WebP in the source repo: taken as is
#   mode=lossless  flat black-on-white specimen sheets, where lossy rings
#   mode=cutout same downscale, but keeps the alpha edge clean: lossy colour
#               with lossless alpha, or a sticker's white outline grows a halo
#   AS=<stem>   optional destination stem, consumed and cleared by add.
#               Projectiles live at <element>/<form>.png, so six files are
#               called rocket.png and basename alone would overwrite five.
add() {
  _cat="$1"; _ord="$2"; _src="$3"; _label="$4"; _mode="$5"
  mkdir -p "$OUT/$_cat"
  if [ -n "${AS:-}" ]; then _stem="$AS"; AS=""
  else _stem="$(basename "$_src")"; _stem="${_stem%.*}"; fi
  _dst="$OUT/$_cat/$_stem.webp"
  case "$_mode" in
    pixel) "$MAGICK" "$_src" -filter point -resize 400% -strip \
             -define webp:lossless=true "$_dst" ;;
    photo) "$MAGICK" "$_src" -filter Lanczos -resize "${6}>" -strip \
             -define webp:method=6 -quality 82 "$_dst" ;;
    copy)  cp "$_src" "$_dst" ;;
    lossless) "$MAGICK" "$_src" -strip -define webp:lossless=true "$_dst" ;;
    cutout) "$MAGICK" "$_src" -filter Lanczos -resize "${6}>" -strip \
             -define webp:method=6 -define webp:alpha-quality=100 -quality 86 "$_dst" ;;
  esac
  _wh="$("$MAGICK" identify -format '%w %h' "$_dst")"
  printf '%s%s%s%s%s%s%s%s%s%s%s\n' \
    "$_cat" "$TAB" "$_ord" "$TAB" "$_stem.webp" "$TAB" "$_label" "$TAB" \
    "${_wh%% *}" "$TAB" "${_wh##* }" >> "$OUT/assets.tsv"
}

# add_strip <cat> <ord> <stem> <label> <frame>...
#   Lays an animation's frames out left to right as one image. 84 separate
#   frames would drown the gallery and say nothing; a strip shows the arc,
#   which is the whole point of a flipbook. 2x rather than the 4x `add` uses
#   on single sprites - an 8-frame 96 px strip is already 768 px wide.
add_strip() {
  _cat="$1"; _ord="$2"; _stem="$3"; _label="$4"; shift 4
  mkdir -p "$OUT/$_cat"
  _dst="$OUT/$_cat/$_stem.webp"
  "$MAGICK" "$@" -background none +append -filter point -resize 200% -strip \
    -define webp:lossless=true "$_dst"
  _wh="$("$MAGICK" identify -format '%w %h' "$_dst")"
  printf '%s%s%s%s%s%s%s%s%s%s%s\n' \
    "$_cat" "$TAB" "$_ord" "$TAB" "$_stem.webp" "$TAB" "$_label" "$TAB" \
    "${_wh%% *}" "$TAB" "${_wh##* }" >> "$OUT/assets.tsv"
}

import_doodlebugs() {
# ---- airframes -------------------------------------------------------------
emit_cat planes "Trupy" "Každý tvar prošel stejnou obálkou, takže má i stejný zásahový box — liší se jen silueta." pixel
n=0
add planes 0 "$SRC/Assets/Doodlebugs/Sprites/BiPlane/BiPlane1.png" "Doodlebug" pixel
for f in "$SRC"/Assets/Doodlebugs/Resources/Sprites/PlaneModels/model_*.png; do
  case "$f" in *_mask.png) continue ;; esac
  [ -e "$f" ] || continue
  n=$((n + 1))
  add planes "$n" "$f" "$(pretty "$(basename "${f%.png}")")" pixel
done

# ---- liveries --------------------------------------------------------------
emit_cat skins "Kamufláže" "Kamufláž je čistě textura na sdílené siluetě — ocasní ploška zůstává červená a hra ji přebarvuje podle hráče." pixel
n=0
for f in "$SRC"/Assets/Doodlebugs/Resources/Sprites/PlaneSkins/skin_*.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add skins "$n" "$f" "$(pretty "$(basename "${f%.png}")")" pixel
done

# ---- arenas ----------------------------------------------------------------
emit_cat backgrounds "Arény" "Pozadí se roztáhne přes celou kameru; horní dvě třetiny zůstávají klidné, protože se v nich létá." hero
n=0
for f in "$SRC"/Assets/Doodlebugs/Sprites/Background/*.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add backgrounds "$n" "$f" "$(pretty "$(basename "${f%.png}")")" photo 960x
done

emit_cat foregrounds "Terén" "Parallax pás v popředí. Letadla létají za ním, střely ho prostřelují a kusy z něj ubývají." wide
n=0
for f in "$SRC"/Assets/Doodlebugs/Sprites/Foreground/*_fg.png; do
  [ -e "$f" ] || continue
  n=$((n + 1))
  add foregrounds "$n" "$f" "$(pretty "$(basename "${f%.png}")")" photo 1280x
done

# ---- projectiles -----------------------------------------------------------
emit_cat projectiles "Střely" "Čím letadlo střílí, určuje jeho tvar, ne zbraň. Drak dýchá oheň, jednorožec hází blesky, dvouplošník pálí mosaz — zbraň dál rozhoduje o čísle, element o vzhledu." wide
n=0
for e in metal fire lightning venom plasma air; do
  for f in tracer pellet bomb bolt rocket mine; do
    _src="$SRC/Assets/Doodlebugs/Resources/Sprites/Projectiles/$e/$f.png"
    [ -e "$_src" ] || continue
    n=$((n + 1))
    AS="${e}_${f}" add projectiles "$n" "$_src" "$(pretty "${e}_${f}")" pixel
  done
done

# ---- explosions ------------------------------------------------------------
emit_cat effects "Zásahy a výbuchy" "Každý element má vlastní dopad a explozi. Snímky jsou tu vedle sebe zleva doprava tak, jak je hra přehraje." wide
n=0
for e in metal fire lightning venom plasma air; do
  for k in impact explosion; do
    set -- "$SRC"/Assets/Doodlebugs/Resources/Sprites/Effects/"$e"/"$k"_*.png
    [ -e "$1" ] || continue
    n=$((n + 1))
    add_strip effects "$n" "${e}_${k}" "$(pretty "${e}_${k}")" "$@"
  done
done
}

# ---- Kittens ---------------------------------------------------------------
# The app's own shipped art (app/assets/art), already 512 px WebP - copied, not
# re-encoded. Names are CardKind.nameCs from fuse_core; the files are keyed by
# the card code, so the order here is the order the rules introduce them in.
import_kittens() {
  _a="$SRC/app/assets/art"
  emit_cat cards "Akční karty" "Osm karet, které mění pravidla tahu. Styl je dřevořez z krabičky zápalek z padesátých let: tlusté obrysy, hořčicová, cihlová a krémový papír." art
  n=0
  for kv in "BOMB:Bomba" "DEFUSE:Zneškodni" "DETONATE:Odpal" "NOPE:Ne!" "SHIELD:Štít" "STEAL:Kradež" "TWIST:Otoč" "BLIND:Slepá"; do
    n=$((n + 1)); add cards "$n" "$_a/cards/${kv%%:*}.webp" "${kv#*:}" copy
  done
  emit_cat suits "Barvy" "Základní karty jsou barva × číslo. Každá barva má vlastní kotě, takže se dá číst i bez rozlišování barev." art
  n=0
  for kv in "R:Červená" "Y:Žlutá" "G:Zelená" "B:Modrá"; do
    n=$((n + 1)); add suits "$n" "$_a/suits/${kv%%:*}.webp" "${kv#*:}" copy
  done
  emit_cat back "Rub" "Zrcadlený nahoře a dole, aby karta v ruce nikdy nebyla vzhůru nohama." art
  add back 1 "$_a/back.webp" "Rub karty" copy
}

# ---- Mutants ---------------------------------------------------------------
# Paper-doll parts, one sticker per card, bucketed by the slot the id starts
# with. Czech names come from the card catalog, so a renamed card renames its
# tile here on the next import.
import_mutants() {
  _a="$SRC/app/assets/art/parts"
  _cards="$SRC/mutant_core/assets/cards.json"
  command -v jq >/dev/null 2>&1 || { echo "error: jq not found" >&2; exit 1; }
  mutants_cat() {   # <prefix> <title> <note>
    emit_cat "$1" "$2" "$3" art
    n=0
    for f in "$_a/$1"_*.webp; do
      [ -e "$f" ] || continue
      _id="$(basename "${f%.webp}")"
      _name="$(jq -r --arg id "$_id" '.cards[] | select(.id == $id) | .name' "$_cards")"
      [ -n "$_name" ] || _name="$(pretty "${_id#*_}")"
      n=$((n + 1)); add "$1" "$n" "$f" "$_name" copy
    done
  }
  mutants_cat head  "Hlavy" "Každý mutant se skládá ze šesti slotů. Hlava se kreslí z profilu a kouká doleva, aby na trup sedla vždycky stejně."
  mutants_cat torso "Trupy" "Trup je celé zvíře z boku vyříznuté elipsou — na něj se věší všechno ostatní."
  mutants_cat front "Přední končetiny" "Nohy, klepeta i vrták. Pár je vždycky jeden obrázek."
  mutants_cat back  "Zadní končetiny" "Od brontosauřích sloupů po tankové pásy."
  mutants_cat tail  "Ocasy" "Ocas vyčnívá doprava a určuje, jak dlouhý tvor nakonec je."
  mutants_cat extra "Něco navíc" "Šestý slot: křídla, rohy, ploutev, anténa."
  mutants_cat mut   "Mutace" "Mutace přepíše slot, který už je obsazený — a z obyčejného tvora je rázem vzácný."
}

# ---- MemeShorts ------------------------------------------------------------
# The approved picks of the character library (drafts/library/selection.yaml),
# flux-schnell line only: that one is Apache-2.0, the anime line is Animagine
# and its licence is still unverified in 01-GRAPHICS_PLAN.md - so it does not go
# on a public page. data/originals (the meme templates themselves) never does.
import_memeshorts() {
  _lib="$SRC/drafts/library"
  meme_label() {
    case "$1" in
      master) echo "Předloha" ;;      neutral) echo "Klid" ;;         smug) echo "Samolibost" ;;
      proud) echo "Hrdost" ;;         pleased) echo "Spokojenost" ;;  scheming) echo "Pikle" ;;
      angry) echo "Vztek" ;;          shocked) echo "Šok" ;;          confused) echo "Zmatek" ;;
      nervous) echo "Nervozita" ;;    disgusted) echo "Znechucení" ;; exhausted) echo "Vyčerpání" ;;
      deadpan) echo "Kamenná tvář" ;; *) pretty "$1" ;;
    esac
  }
  meme_cat() {   # <character> <title> <note>
    emit_cat "$1" "$2" "$3" portrait
    n=0
    for e in master neutral smug proud pleased scheming angry shocked confused nervous disgusted exhausted deadpan; do
      # two of Taro's picks came out with a sportswear wordmark on the jacket
      case "$1:$e" in taro:proud|taro:angry) continue ;; esac
      _f="$(awk -v c="$1:" -v e="$e:" '
        /^[a-z]/ { inc = ($1 == c); line = "" }
        inc && /^    [a-z]/ { line = $1 }
        inc && line == "pixar:" && $1 == e { print $2; exit }' "$_lib/selection.yaml")"
      [ -n "$_f" ] && [ -e "$_lib/$_f" ] || continue
      n=$((n + 1)); AS="$e" add "$1" "$n" "$_lib/$_f" "$(meme_label "$e")" photo 416x
    done
  }
  meme_cat kiro "Kiro" "Samolibý. Rozcuchané černé vlasy, jizva v obočí, červená mikina — ten, kdo má v memu navrch."
  meme_cat mei  "Mei"  "Zmatená. Tyrkysové mikádo, kulaté brýle a svetr o dvě čísla větší."
  meme_cat taro "Taro" "Nadšený. Oranžový ježek, čelenka a zelená tepláková bunda."
  meme_cat yuki "Yuki" "Kamenná tvář. Dlouhé bílé vlasy, fialový kardigan a věčně přivřené oči."
}

# ---- ImmunoRun -------------------------------------------------------------
# G0 is a style test, not production art - the page says so. The two sprites the
# game actually ships come last.
import_immunorun() {
  _p="$SRC/art/drafts/g0/post"
  emit_cat cards "Karty upgradů" "Zkouška stylu G0: karta Opsonizace jako snímek z rastrovacího elektronového mikroskopu. Nahoře barva přímo z modelu, pod ní šedý SEM obarvený gradientovou mapou." hero
  n=0
  for v in color gray; do
    for f in "$_p"/card_opsonin_"$v"_*.png; do
      [ -e "$f" ] || continue
      n=$((n + 1))
      add cards "$n" "$f" "Opsonizace · $([ "$v" = color ] && echo barva || echo SEM) $(( (n - 1) % 4 + 1 ))" photo 640x
    done
  done
  emit_cat sprites "Buňky" "Makrofág ze stejné zkoušky, už vyříznutý z pozadí. U spritů vyhrála šedá SEM s gradientem — paleta pak drží napříč celou hrou." art
  n=0
  for v in gray color; do
    for f in "$_p"/sprite_macrophage_"$v"_*.png; do
      [ -e "$f" ] || continue
      n=$((n + 1))
      add sprites "$n" "$f" "Makrofág · $([ "$v" = color ] && echo barva || echo SEM) $(( (n - 1) % 4 + 1 ))" cutout 512x
    done
  done
  emit_cat ingame "Ve hře" "Dva sprity, které už ve hře jsou: hráčův makrofág a koky, první patogen." art
  add ingame 1 "$SRC/immunorun/assets/images/cells/macrophage.png" "Makrofág" cutout 512x
  add ingame 2 "$SRC/immunorun/assets/images/pathogens/cocci.png" "Koky" cutout 512x
}

# ---- SwypeKids -------------------------------------------------------------
# Shipped art first (the guide's ten poses, the stickers that replaced emoji),
# then the two review rounds that led there. A sticker's caption is the emoji it
# replaced - the file name is its code point, so nothing needs translating and
# the page shows the before next to the after.
import_swypekids() {
  _d="$SRC/drafts/stickers"
  pose_cs() {
    case "$1" in
      wave) echo "mává" ;;        idle) echo "stojí" ;;       read) echo "čte" ;;
      sleep) echo "spí" ;;        oops) echo "jejda" ;;       cheer-clap) echo "tleská" ;;
      cheer-dance) echo "tančí" ;; cheer-hug) echo "objímá" ;; cheer-jump) echo "skáče" ;;
      cheer-star) echo "hvězda" ;; *) pretty "$1" ;;
    esac
  }
  POSES="wave idle cheer-jump cheer-dance cheer-clap cheer-hug cheer-star read oops sleep"
  emit_cat panda "Pandička" "Průvodkyně hrou v deseti pózách: pět různých jásotů, jejda, čte, spí. Stojí přímo na ploše, dá se prstem odsunout a na ťuknutí zamává." art
  n=0
  for p in $POSES; do
    [ -e "$SRC/assets/characters/panda/$p.png" ] || continue
    n=$((n + 1)); add panda "$n" "$SRC/assets/characters/panda/$p.png" "$(pose_cs "$p" | perl -CSD -pe '$_ = ucfirst')" cutout 384x
  done
  emit_cat stickers "Nálepky místo emoji" "Od verze 2.9 hra nepoužívá systémové emoji. Každé nahradil obrázek ve stylu Pandičky — na kartě, na klávesách, ve Zvěřinci i na mapě. Pod nálepkou je emoji, které vystřídala." small
  n=0
  for f in "$SRC"/assets/emoji/*.webp; do
    [ -e "$f" ] || continue
    _cp="$(basename "${f%.webp}")"
    n=$((n + 1)); add stickers "$n" "$f" "$(perl -CO -e 'print map { chr hex } split /-/, shift' "$_cp")" cutout 224x
  done
  emit_cat mascots "Kdo bude průvodcem" "Druhé kolo revize: čtyři zvířata, každé ve stejných deseti pózách, aby se dala porovnat pózu proti póze. Vyhrála panda." art
  n=0
  for kv in "panda:Panda" "capybara:Kapybara" "giraffe:Žirafa" "cheetah:Gepardice"; do
    for p in $POSES; do
      f="$_d/round2/out/mascot2-${kv%%:*}-$p.png"
      [ -e "$f" ] || continue
      n=$((n + 1)); AS="${kv%%:*}-$p" add mascots "$n" "$f" "${kv#*:} · $(pose_cs "$p")" photo 256x
    done
  done
  emit_cat firstround "První návrhy" "První kolo: jak má nálepka vůbec vypadat. Zvířata, rodina, věci a první pokusy o maskota — z nich vzešel styl i užší výběr." small
  n=0
  for kv in "mascot:Maskot" "animal:Zvíře" "family:Rodina" "object:Věc"; do
    for f in "$_d"/out/"${kv%%:*}"-*.png; do
      [ -e "$f" ] || continue
      n=$((n + 1)); add firstround "$n" "$f" "${kv#*:}" photo 224x
    done
  done
}

# ---- HandWrittenStickers ---------------------------------------------------
# 127 glyph sheets are 160 PNGs each, so nothing is copied one to one. The
# stickers are composed here the way the app composes them - one PNG per
# character, looked up in the sheet's glyphs.json - only without its baseline
# metrics, which is why every word is in capitals: they share a baseline, so
# bottom-aligning them is enough. The black-ink sheets are left to the
# specimen sheets below; on the gallery's dark tile they would not show.
import_handwrittenstickers() {
  _g="$SRC/handwritten_stickers/assets/glyphs"
  command -v jq >/dev/null 2>&1 || { echo "error: jq not found" >&2; exit 1; }
  _tmp="$(mktemp -d)"
  emit_cat stickers "Nálepky" "Co z aplikace vypadne: text složený znak po znaku z vybrané sady a uložený jako průhledné PNG. Tohle jsou dětské a materiálové sady — bublina, plastelína, perník, neon." art
  n=0
  for kv in "kid_bubble_peach:AHOJ!" "kid_bubble_mint:ŽIRAFA" "mat_plasticine:MÁMA" "mat_gingerbread:DÍKY" \
            "mat_neon:ČAU" "kid_bubble_sky:JUPÍ" "kid_bubble_lemon:BANÁN" "kid_bubble_lavender:FIALKA"; do
    _sheet="${kv%%:*}"; _text="${kv#*:}"
    set --
    for ch in $(printf '%s' "$_text" | sed 's/./& /g'); do
      _f="$(jq -r --arg c "$ch" '.glyphs[$c] // empty' "$_g/$_sheet/glyphs.json")"
      [ -n "$_f" ] && set -- "$@" "$_g/$_sheet/$_f"
    done
    "$MAGICK" "$@" -background none -gravity south +append "$_tmp/$_sheet.png"
    n=$((n + 1))
    add stickers "$n" "$_tmp/$_sheet.png" "$(jq -r '.name' "$_g/$_sheet/glyphs.json")" cutout 640x
  done
  rm -rf "$_tmp"
  emit_cat sheets "Sady písma" "Každý řádek je jedna sada 160 znaků s plnou českou diakritikou. Vedle Laurinčina naskenovaného rukopisu jsou vykreslené z písem s licencí OFL." sheet
  add sheets 1 "$SRC/docs/glyph_sheets_handwriting.png" "Rukopis" lossless
  add sheets 2 "$SRC/docs/glyph_sheets_typography.png" "Typografie" lossless
  add sheets 3 "$SRC/docs/glyph_sheets_calligraphy.png" "Kaligrafie" lossless
}

"import_$SLUG"
echo "visuals -> $OUT"
awk -F"$TAB" '{ c[$1]++ } END { for (k in c) printf "  %-12s %d\n", k, c[k] }' "$OUT/assets.tsv"
du -sh "$OUT" | sed 's/^/  /'
