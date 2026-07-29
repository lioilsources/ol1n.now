#!/usr/bin/env bash
# Generate the static store site from apps/*/meta.md into dist/.
# Pure bash (3.2-compatible) + sed/awk. No external generators.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=lib.sh
. "$HERE/lib.sh"

ROOT="$OLN_ROOT"
DIST="$ROOT/dist"
APPS="$ROOT/apps"
TPL="$ROOT/templates"
TAB="$(printf '\t')"

# short content hash of a file (portable: macOS `md5`, Linux `md5sum`) for cache-busting
hashf() { if command -v md5 >/dev/null 2>&1; then md5 -q "$1"; else md5sum "$1" | cut -d' ' -f1; fi | cut -c1-8; }
CSSVER="$(hashf "$ROOT/assets/css/store.css")"
JSVER="$(hashf "$ROOT/assets/js/store.js")"

emit_head() { _t="$(printf '%s' "$1" | sed 's/[&|]/\\&/g')"; sed -e "s|__TITLE__|$_t|g" -e "s|__CSSVER__|$CSSVER|g" -e "s|__BASE__||g" "$TPL/head.html"; }
emit_foot() { sed -e "s|__JSVER__|$JSVER|g" -e "s|__BASE__||g" "$TPL/foot.html"; }

# fixed brand logo backdrop + scroll spacer (parallax via store.css/.js); used on every page
emit_brand() {
  cat <<'BRAND'
<div class="brand-backdrop" aria-hidden="true">
  <img class="brand-logo" src="assets/img/ananas-bananas-logo.png" alt="">
</div>
<div class="brand-spacer"></div>
BRAND
}

# inner HTML for an .icon box: <img> if an icon exists, else first letter
icon_html() {
  _slug="$1"; _name="$2"
  if [ -f "$DIST/icons/$_slug.png" ]; then
    printf '<img src="icons/%s.png" alt="%s">' "$_slug" "$_name"
  else
    printf '%s' "$(printf '%s' "$_name" | cut -c1)"
  fi
}

# platform badges from desktop/mobile front-matter fields
badges_html() {
  _meta="$1"; _featured="$2"; _out=""
  [ "$_featured" = "true" ] && _out="$_out<span class=\"badge featured\">★ Doporučeno</span>"
  _d="$(fm_get "$_meta" desktop)"
  if [ -n "$_d" ]; then
    OLDIFS="$IFS"; IFS=','
    for p in $_d; do
      case "$p" in macos) l="macOS";; windows) l="Windows";; linux) l="Linux";; *) l="$p";; esac
      _out="$_out<span class=\"badge\">$l</span>"
    done
    IFS="$OLDIFS"
  fi
  _m="$(fm_get "$_meta" mobile)"
  [ -n "$_m" ] && _out="$_out<span class=\"badge\">Mobil</span>"
  printf '%s' "$_out"
  return 0
}

# download buttons from the manifest dist/downloads/<slug>.tsv
# (links point directly at GitHub Release assets; nothing is re-hosted)
downloads_html() {
  _slug="$1"; _manifest="$DIST/downloads/$_slug.tsv"; _any=0
  if [ -f "$_manifest" ]; then
    # `_`-prefixed loop vars: this runs in the caller's shell, and the final
    # read at EOF blanks every variable it names (`name` used to belong to the
    # per-app loop).
    while IFS="$TAB" read -r _plat _dlname _url _mb _tag; do
      [ -n "${_plat:-}" ] || continue
      case "$_plat" in
        macos) l="macOS";; windows) l="Windows";; linux) l="Linux";;
        android) l="Android (APK)";; *) l="$_plat";;
      esac
      printf '<a class="dl-btn" href="%s" download>⬇ %s <span class="dl-meta">%s · %s MB</span></a>\n' \
        "$_url" "$l" "$_tag" "$_mb"
      _any=1
    done < "$_manifest"
  fi
  [ "$_any" = 0 ] && printf '<p class="dl-empty">Buildy brzy k dispozici.</p>\n'
  return 0
}

# external store links (App Store / Google Play / TestFlight)
store_links_html() {
  _meta="$1"
  for kv in "appstore:App Store" "playstore:Google Play" "testflight:TestFlight"; do
    key="${kv%%:*}"; label="${kv#*:}"
    url="$(fm_get "$_meta" "$key")"
    [ -n "$url" ] && printf '<a class="dl-btn secondary" href="%s">%s</a>\n' "$url" "$label"
  done
  return 0
}

# screenshot gallery for a kind (desktop|mobile) from dist/screenshots/<slug>/<kind>/
shots_html() {
  _slug="$1"; _kind="$2"; _dir="$DIST/screenshots/$_slug/$_kind"; _any=0
  if [ -d "$_dir" ]; then
    printf '<div class="shots %s">' "$_kind"
    for f in "$_dir"/*; do
      [ -f "$f" ] || continue
      b="$(basename "$f")"
      case "$b" in
        *.poster.jpg) continue ;;   # emitted as its video's poster, not a standalone tile
        *.mp4)
          _stem="${b%.mp4}"
          printf '<video class="shot-video" src="screenshots/%s/%s/%s" poster="screenshots/%s/%s/%s.poster.jpg" loop playsinline controls preload="metadata"></video>' \
            "$_slug" "$_kind" "$b" "$_slug" "$_kind" "$_stem" ;;
        *)
          printf '<img src="screenshots/%s/%s/%s" alt="" loading="lazy">' "$_slug" "$_kind" "$b" ;;
      esac
      _any=1
    done
    printf '</div>\n'
  fi
  [ "$_any" = 0 ] && printf '<p class="shots-empty">Zatím bez screenshotů (%s).</p>\n' "$_kind"
  return 0
}

# ---- skins gallery (dist/skins/<slug>/, produced by scripts/import-skins.sh) ----
# The whole feature is gated on this manifest existing, so apps without skins
# render byte-identically to before.
skins_have() { [ -f "$DIST/skins/$1/skins.tsv" ]; }

# `read -r a b c` with IFS=TAB silently collapses runs of tabs (tab is IFS
# whitespace), so an empty column shifts every later field. Manifest rows do
# have empty columns (a skin with no wiki link), so they are re-delimited with
# a non-whitespace byte, which read treats as one delimiter per occurrence.
# 0x1f (US) and not 0x01: bash uses 0x01 internally (CTLESC) and read
# silently refuses to split on it.
SEP="$(printf '\037')"
tsv_rows() { tr "$TAB" "$SEP" < "$1"; }

esc() { printf '%s' "$1" | html_escape; }

# "Galaga (1981)" -> "Galaga"  (the year is shown in its own element)
short_name() { printf '%s' "${1%% (*}"; }

# mmss <seconds> -> "1:07"
mmss() { printf '%d:%02d' "$(( $1 / 60 ))" "$(( $1 % 60 ))"; }

# one preview card; used by both the teaser (<a>) and the subpage picker (<button>)
skin_card_inner() {
  printf '<img src="skins/%s/%s/preview/preview.webp" alt="" width="384" height="384" loading="lazy" decoding="async"><span class="n">%s</span><span class="y">%s</span>' \
    "$1" "$2" "$(esc "$(short_name "$3")")" "$(esc "$4")"
}

# teaser section on the app detail page: preview cards linking into the subpage
skins_teaser_html() {
  _slug="$1"; _tsv="$DIST/skins/$_slug/skins.tsv"
  _n="$(wc -l < "$_tsv" | tr -d ' ')"
  printf '<section class="section"><h2>Skiny</h2>\n'
  printf '<p class="skins-intro">%s vizuálních témat — každé s vlastními sprity, parallax pozadím, zvuky a hudbou.</p>\n' "$_n"
  printf '<div class="skin-picker">'
  while IFS="$SEP" read -r s_id s_name s_year s_theme s_vessels s_bloom s_crt s_tint s_notes s_wiki s_px; do
    [ -n "${s_id:-}" ] || continue
    printf '<a class="skin-chip" href="%s-skins.html#%s">' "$_slug" "$s_id"
    skin_card_inner "$_slug" "$s_id" "$s_name" "$s_year"
    printf '</a>'
  done <<EOF
$(tsv_rows "$_tsv")
EOF
  printf '</div>\n'
  printf '<p class="skins-more"><a href="%s-skins.html">Prozkoumat všechny skiny →</a></p>\n' "$_slug"
  printf '</section>\n'
  return 0
}

# one category grid; emits nothing at all when the category has no rows
# (that is what makes the `default` skin's missing backgrounds/ a non-event)
skin_assets_html() {
  _slug="$1"; _sk="$2"; _cat="$3"; _h="$4"; _g="${5:-}"
  _rows="$(awk -F"$TAB" -v s="$_sk" -v c="$_cat" -v OFS="$SEP" '$1 == s && $3 == c { $1 = $1; print }' "$DIST/skins/$_slug/assets.tsv")"
  [ -n "$_rows" ] || return 0
  printf '<div class="skin-cat"><h3>%s</h3><div class="sprite-grid %s">' "$_h" "$_g"
  printf '%s\n' "$_rows" | while IFS="$SEP" read -r sk ord cat file label w h; do
    _cls=""
    case "$file" in */roster.webp) _cls=" wide" ;; esac
    printf '<figure class="sprite%s"><img src="skins/%s/%s/%s" alt="%s" width="%s" height="%s" loading="lazy" decoding="async"><figcaption>%s</figcaption></figure>' \
      "$_cls" "$_slug" "$sk" "$file" "$(esc "$label")" "$w" "$h" "$(esc "$label")"
  done
  printf '</div></div>\n'
  return 0
}

# SFX trigger buttons / music playlist. The <a href> is both the no-JS fallback
# and the JS track source, so the list exists exactly once.
skin_audio_html() {
  _slug="$1"; _sk="$2"; _cat="$3"; _h="$4"
  _rows="$(awk -F"$TAB" -v s="$_sk" -v c="$_cat" -v OFS="$SEP" '$1 == s && $3 == c { $1 = $1; print }' "$DIST/skins/$_slug/assets.tsv")"
  [ -n "$_rows" ] || return 0
  printf '<div class="skin-cat"><h3>%s</h3>' "$_h"
  if [ "$_cat" = sfx ]; then
    printf '<div class="sfx-grid" data-audio="sfx">'
    printf '%s\n' "$_rows" | while IFS="$SEP" read -r sk ord cat file label secs rest; do
      printf '<a class="sfx-btn" href="skins/%s/%s/%s" data-src="skins/%s/%s/%s"><span class="i">▶</span>%s</a>' \
        "$_slug" "$sk" "$file" "$_slug" "$sk" "$file" "$(esc "$label")"
    done
    printf '</div>'
  else
    printf '<div class="audio" data-audio="music">'
    printf '<div class="player" hidden><button type="button" class="p-prev" aria-label="Předchozí">⏮</button>'
    printf '<button type="button" class="p-play" aria-label="Přehrát">▶</button>'
    printf '<button type="button" class="p-next" aria-label="Další">⏭</button>'
    printf '<span class="p-title"></span><progress class="p-bar" max="100" value="0"></progress></div>'
    printf '<ol class="tracklist">'
    printf '%s\n' "$_rows" | while IFS="$SEP" read -r sk ord cat file label secs rest; do
      printf '<li><a href="skins/%s/%s/%s" data-src="skins/%s/%s/%s">%s <span class="d">%s</span></a></li>' \
        "$_slug" "$sk" "$file" "$_slug" "$sk" "$file" "$(esc "$label")" "$(mmss "$secs")"
    done
    printf '</ol></div>'
  fi
  printf '</div>\n'
  return 0
}

# full subpage body: picker + one panel per skin
skins_page_html() {
  _slug="$1"; _appname="$2"; _tsv="$DIST/skins/$_slug/skins.tsv"
  _n="$(wc -l < "$_tsv" | tr -d ' ')"
  printf '<section class="skins" id="skins">\n'
  printf '<h1>Skiny</h1>\n'
  printf '<p class="skins-intro">%s vizuálních témat pro %s. Každý skin má vlastní lodě, nepřátele, bosse, pozadí, zvuky i adaptivní hudbu.</p>\n' \
    "$_n" "$(esc "$_appname")"

  printf '<div class="skin-picker" role="tablist" aria-label="Skiny">'
  while IFS="$SEP" read -r s_id s_name s_year s_theme s_vessels s_bloom s_crt s_tint s_notes s_wiki s_px; do
    [ -n "${s_id:-}" ] || continue
    printf '<button type="button" class="skin-chip" role="tab" data-skin="%s" id="tab-%s" aria-selected="false" aria-controls="panel-%s">' \
      "$s_id" "$s_id" "$s_id"
    skin_card_inner "$_slug" "$s_id" "$s_name" "$s_year"
    printf '</button>'
  done <<EOF
$(tsv_rows "$_tsv")
EOF
  printf '</div>\n'

  while IFS="$SEP" read -r s_id s_name s_year s_theme s_vessels s_bloom s_crt s_tint s_notes s_wiki s_px; do
    [ -n "${s_id:-}" ] || continue
    printf '<div class="skin-panel" id="panel-%s" role="tabpanel" aria-labelledby="tab-%s" data-skin="%s" data-pixelart="%s">\n' \
      "$s_id" "$s_id" "$s_id" "$s_px"
    printf '<header class="skin-head"><h2>%s</h2>' "$(esc "$s_name")"
    printf '<p class="skin-theme">%s' "$(esc "$s_theme")"
    [ -n "$s_vessels" ] && [ "$s_vessels" != 0 ] && printf ' · %s %s' "$s_vessels" "$(plural_ship "$s_vessels")"
    printf '</p><div class="badges">'
    [ -n "$s_bloom" ] && [ "$s_bloom" != "—" ] && printf '<span class="badge">bloom %s</span>' "$(esc "$s_bloom")"
    [ -n "$s_crt" ]   && [ "$s_crt"   != "—" ] && printf '<span class="badge">CRT %s</span>' "$(esc "$s_crt")"
    [ -n "$s_tint" ]  && [ "$s_tint"  != "—" ] && printf '<span class="badge">tint %s</span>' "$(esc "$s_tint")"
    [ "$s_px" = 1 ] && printf '<span class="badge">pixel art</span>'
    printf '</div>'
    if [ -n "$s_notes" ] || [ -n "$s_wiki" ]; then
      printf '<p class="skin-notes">%s' "$(esc "$s_notes")"
      [ -n "$s_notes" ] && [ -n "$s_wiki" ] && printf ' · '
      [ -n "$s_wiki" ] && printf '<a href="%s" rel="noopener">Wikipedie</a>' "$(esc "$s_wiki")"
      printf '</p>'
    fi
    printf '</header>\n'

    skin_assets_html "$_slug" "$s_id" preview     "Náhled"                hero
    skin_assets_html "$_slug" "$s_id" vessels     "Lodě"
    skin_assets_html "$_slug" "$s_id" enemies     "Nepřátelé"
    skin_assets_html "$_slug" "$s_id" boss        "Boss"
    skin_assets_html "$_slug" "$s_id" asteroids   "Asteroidy"
    skin_assets_html "$_slug" "$s_id" fx          "Efekty a projektily"
    skin_assets_html "$_slug" "$s_id" ui          "Game center"           ui
    skin_assets_html "$_slug" "$s_id" backgrounds "Pozadí"                bg
    skin_audio_html  "$_slug" "$s_id" sfx         "Zvuky (SFX)"
    skin_audio_html  "$_slug" "$s_id" music       "Hudba"
    printf '</div>\n'
  done <<EOF
$(tsv_rows "$_tsv")
EOF

  printf '<p class="skins-disclaimer">Skiny jsou volnou poctou klasickým střílečkám. %s není nijak spojen s jejich autory ani vydavateli a nepoužívá jejich původní grafiku ani zvuky.</p>\n' \
    "$(esc "$_appname")"
  printf '</section>\n'
  return 0
}

# plural_ship <n> -> loď / lodě / lodí
plural_ship() {
  case "$1" in
    1) echo "loď" ;;
    2|3|4) echo "lodě" ;;
    *) echo "lodí" ;;
  esac
}

# ---- prepare dist ----
mkdir -p "$DIST" "$DIST/icons"
rm -f "$DIST"/*.html
rm -rf "$DIST/assets"
cp -R "$ROOT/assets" "$DIST/assets"
touch "$DIST/.nojekyll"
# GitHub Pages custom domain (served at root). Edit repo-root CNAME to change it.
[ -f "$ROOT/CNAME" ] && cp "$ROOT/CNAME" "$DIST/CNAME"

# copy per-app icons if provided
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  d="$(dirname "$m")"; slug="$(fm_get "$m" slug)"
  [ -f "$d/icon.png" ] && cp "$d/icon.png" "$DIST/icons/$slug.png"
done

# copy per-app skin galleries if provided (already web-ready; see scripts/import-skins.sh)
for d in "$APPS"/*/skins; do
  [ -d "$d" ] || continue
  slug="$(basename "$(dirname "$d")")"
  mkdir -p "$DIST/skins"
  rm -rf "$DIST/skins/$slug"
  cp -R "$d" "$DIST/skins/$slug"
done

# ordered list of meta files
ORDER_LIST="$(for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  ord="$(fm_get "$m" order)"; [ -n "$ord" ] || ord=99
  printf '%s\t%s\n' "$ord" "$m"
done | sort -n -k1,1)"

# ---- build per-app pages + accumulate index cards ----
CARDS=""
while IFS="$TAB" read -r ord meta; do
  [ -n "${meta:-}" ] || continue
  slug="$(fm_get "$meta" slug)"
  name="$(fm_get "$meta" name)"
  tagline="$(fm_get "$meta" tagline)"
  featured="$(fm_get "$meta" featured)"
  icon="$(icon_html "$slug" "$name")"
  badges="$(badges_html "$meta" "$featured")"

  # index card
  CARDS="$CARDS<a class=\"app-card\" href=\"$slug.html\">
  <div class=\"icon\">$icon</div>
  <h3 class=\"name\">$name</h3>
  <p class=\"tagline\">$tagline</p>
  <div class=\"badges\">$badges</div>
</a>
"

  # detail page
  {
    emit_head "$name — olin.now"
    cat <<HERO
<a class="back-link" href="index.html">← Všechny aplikace</a>
<section class="app-hero">
  <div class="icon">$icon</div>
  <div>
    <h1>$name</h1>
    <p class="tagline">$tagline</p>
    <div class="badges">$badges</div>
  </div>
</section>
HERO
    echo '<section class="section"><h2>Ke stažení</h2><div class="downloads">'
    downloads_html "$slug"
    store_links_html "$meta"
    echo '</div></section>'
    # explicit `if` (not `&&`): under `set -e` a failing guard as the last
    # command of this group would truncate the page
    if skins_have "$slug"; then skins_teaser_html "$slug"; fi
    echo '<section class="section"><h2>Screenshoty — desktop</h2>'
    shots_html "$slug" desktop
    echo '</section>'
    echo '<section class="section"><h2>Screenshoty — mobil</h2>'
    shots_html "$slug" mobile
    echo '</section>'
    echo '<section class="section"><h2>Popis</h2><div class="app-desc">'
    fm_body "$meta" | md_to_html
    echo '</div></section>'
    emit_brand
    emit_foot
  } > "$DIST/$slug.html"
  echo "  built $slug.html"

  # skins subpage — flat URL at dist/ root, so __BASE__ stays empty and
  # `rm -f dist/*.html` already cleans it
  if skins_have "$slug"; then
    {
      emit_head "$name — skiny — olin.now"
      printf '<a class="back-link" href="%s.html">← Zpět na %s</a>\n' "$slug" "$name"
      skins_page_html "$slug" "$name"
      emit_brand
      emit_foot
    } > "$DIST/$slug-skins.html"
    echo "  built $slug-skins.html"
  fi
done <<EOF
$ORDER_LIST
EOF

# ---- build index ----
{
  emit_head "Ananas&Bananas — olin.now"
  echo '<section class="app-grid">'
  printf '%s' "$CARDS"
  echo '</section>'
  emit_brand
  emit_foot
} > "$DIST/index.html"

echo "  built index.html"
echo "Done -> $DIST"
