#!/usr/bin/env bash
# import-decks.sh — build Lexify's web-ready deck gallery.
#
# Fourth gallery shape, after skins, visuals and fleets: a catalog of card
# decks, each rendered in two art styles. The page shows a sample per deck —
# the first five cards in the deck's first style, the next five in its second —
# so a visitor sees ten different words and both looks.
#
# Reads a local checkout of lioilsources/DuolingoCards, whose published deck
# packs are the source of truth:
#   docs/decks/<slug>/deck.json            titles, styles, cards (label x langs)
#   docs/decks/<slug>/images/<style>/*.webp  1024 px card art
#   assets/catalog.json                    which decks are free
#   lib/l10n/app_cs.arb                    user-facing style names
# and writes:
#   apps/lexify/decks/decks.tsv    id title count free cover
#   apps/lexify/decks/styles.tsv   deck ord style label desc
#   apps/lexify/decks/cards.tsv    deck style ord file label en
#   apps/lexify/decks/<deck>/<style>/<key>.webp
#
# Authoring-time only, never run on CI - the output is committed, exactly as
# with skins, so a build needs no source repo and no ImageMagick.
#
# Requires: ImageMagick with a WebP delegate, jq.
#
#   scripts/import-decks.sh [path-to-DuolingoCards-checkout]
set -euo pipefail

SRC="${1:-${LEXIFY_SRC:-../DuolingoCards}}"
PER_STYLE="${PER_STYLE:-5}"
SIZE="${SIZE:-384}"

HERE="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$HERE/apps/lexify/decks"

[ -d "$SRC/docs/decks" ] || { echo "error: no DuolingoCards checkout at $SRC (set LEXIFY_SRC)" >&2; exit 1; }
command -v jq >/dev/null || { echo "error: jq not found" >&2; exit 1; }

MAGICK="$(command -v magick || command -v convert || true)"
[ -n "$MAGICK" ] || { echo "error: ImageMagick not found (brew install imagemagick)" >&2; exit 1; }
"$MAGICK" -list format 2>/dev/null | grep -qiE '^ *WEBP' || {
  echo "error: ImageMagick has no WebP delegate (brew install webp && brew reinstall imagemagick)" >&2; exit 1; }

TAB="$(printf '\t')"
ARB="$SRC/lib/l10n/app_cs.arb"
CATALOG="$SRC/assets/catalog.json"

rm -rf "$OUT"
mkdir -p "$OUT"
: > "$OUT/decks.tsv"
: > "$OUT/styles.tsv"
: > "$OUT/cards.tsv"

# style id -> the ARB key the app uses for its name (lib/models/card_style.dart)
arb_key() {
  case "$1" in
    photo) echo stylePhoto ;;          ink) echo styleInk ;;
    pastel) echo stylePastel ;;        watercolor) echo styleWatercolor ;;
    pony-cartoon) echo stylePonyCartoon ;;
    illustrious-storybook) echo styleStorybook ;;
    pony-watercolor) echo stylePonyWatercolor ;;
    pony-oil) echo stylePonyOil ;;     illustrious-oil) echo styleIllustriousOil ;;
    illustrious-anime) echo styleAnime ;;
    illustrious-flat) echo styleFlat ;;
    illustrious-ukiyoe) echo styleUkiyoe ;;
    illustrious-mucha) echo styleMucha ;;
    illustrious-vangogh) echo styleVanGogh ;;
    *) echo "" ;;
  esac
}
arb() { [ -n "$1" ] && jq -r --arg k "$1" '.[$k] // empty' "$ARB" 2>/dev/null || true; }

# Free decks lead, in the catalog's own order; the paid ones follow by slug.
FREE="$(jq -r '.free[]' "$CATALOG")"
ORDER="$(
  printf '%s\n' "$FREE"
  for d in "$SRC"/docs/decks/*/deck.json; do basename "$(dirname "$d")"; done | sort \
    | grep -vxF -f <(printf '%s\n' "$FREE")
)"

for deck in $ORDER; do
  json="$SRC/docs/decks/$deck/deck.json"
  [ -f "$json" ] || continue
  title="$(jq -r '.titles.cs // .deck' "$json")"
  count="$(jq '.cards | length' "$json")"
  free=0; printf '%s\n' "$FREE" | grep -qxF "$deck" && free=1

  # Default style first; deck.json only lists styles whose images are all on disk.
  styles="$(jq -r '[.defaultStyle] + .styles | map(select(. != null))
                   | reduce .[] as $s ([]; if index([$s]) then . else . + [$s] end) | .[]' "$json")"

  # Ten distinct cards, deduplicated on their Czech label: two keys can share a
  # word (weather has two kinds of "bouřka"), and a sample showing it twice
  # looks like a bug.
  keys="$(jq -r '
      reduce .cards[] as $c ({seen: {}, out: []};
        ($c.label.cs // $c.key) as $l
        | if .seen[$l] then . else .seen[$l] = true | .out += [$c] end)
      | .out[] | [.key, .image, (.label.cs // .key), (.label.en // "")] | @tsv' "$json")"

  si=0; cover=""
  for style in $styles; do
    [ -d "$SRC/docs/decks/$deck/images/$style" ] || continue
    k="$(arb_key "$style")"
    label="$(arb "$k")"; [ -n "$label" ] || label="$style"
    desc="$(arb "${k}Desc")"
    printf '%s\t%s\t%s\t%s\t%s\n' "$deck" "$si" "$style" "$label" "$desc" >> "$OUT/styles.tsv"
    mkdir -p "$OUT/$deck/$style"

    ord=0
    while IFS="$TAB" read -r key image cs en; do
      [ -n "${key:-}" ] || continue
      src="$SRC/docs/decks/$deck/images/$style/$image"
      [ -f "$src" ] || continue
      file="$key.webp"
      "$MAGICK" "$src" -filter Lanczos -resize "${SIZE}x${SIZE}>" -strip \
        -define webp:method=6 -quality 80 "$OUT/$deck/$style/$file"
      printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$deck" "$style" "$ord" "$file" "$cs" "$en" >> "$OUT/cards.tsv"
      [ -n "$cover" ] || cover="$style/$file"
      ord=$((ord + 1))
      [ "$ord" -lt "$PER_STYLE" ] || break
    done <<EOF
$(printf '%s\n' "$keys" | tail -n +$((si * PER_STYLE + 1)))
EOF
    si=$((si + 1))
    [ "$si" -lt 2 ] || break
  done

  printf '%s\t%s\t%s\t%s\t%s\n' "$deck" "$title" "$count" "$free" "$cover" >> "$OUT/decks.tsv"
done

echo "decks -> $OUT"
awk -F"$TAB" '{ c[$1]++ } END { for (k in c) printf "  %-18s %d\n", k, c[k] }' "$OUT/cards.tsv" | sort
du -sh "$OUT" | sed 's/^/  /'
