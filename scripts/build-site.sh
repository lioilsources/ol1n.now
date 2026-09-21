#!/usr/bin/env bash
# Generate the static store site from apps/*/meta.md into dist/.
# Pure bash (3.2-compatible) + sed/awk. No external generators.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=lib.sh
. "$HERE/lib.sh"
# shellcheck source=i18n.sh
. "$HERE/i18n.sh"

ROOT="$OLN_ROOT"
DIST="$ROOT/dist"
APPS="$ROOT/apps"
TPL="$ROOT/templates"
TAB="$(printf '\t')"

# short content hash of a file (portable: macOS `md5`, Linux `md5sum`) for cache-busting
hashf() { if command -v md5 >/dev/null 2>&1; then md5 -q "$1"; else md5sum "$1" | cut -d' ' -f1; fi | cut -c1-8; }
CSSVER="$(hashf "$ROOT/assets/css/store.css")"
JSVER="$(hashf "$ROOT/assets/js/store.js")"

# emit_head <title> [<link rel="alternate"> lines]
# awk and not sed: a title like "Ananas&Bananas" is data, and every regex-based
# substitution in this file would have to escape it. The __ALTS__ line is
# dropped whole when the page has no translations.
emit_head() {
  # ENVIRON and not -v: awk runs backslash escapes over a -v value, and the
  # alternates arrive as several lines
  HEAD_TITLE="$1" HEAD_ALTS="${2:-}" HEAD_CSSVER="$CSSVER" HEAD_LANG="$I18N_LANG" \
  awk '
    function repl(str, from, to,   out, i) {
      while ((i = index(str, from)) > 0) { out = out substr(str, 1, i - 1) to; str = substr(str, i + length(from)) }
      return out str
    }
    /__ALTS__/ { if (ENVIRON["HEAD_ALTS"] != "") print ENVIRON["HEAD_ALTS"]; next }
    {
      $0 = repl($0, "__TITLE__", ENVIRON["HEAD_TITLE"])
      $0 = repl($0, "__CSSVER__", ENVIRON["HEAD_CSSVER"])
      $0 = repl($0, "__LANG__", ENVIRON["HEAD_LANG"])
      print repl($0, "__BASE__", "")
    }
  ' "$TPL/head.html"
}
emit_foot() { sed -e "s|__JSVER__|$JSVER|g" -e "s|__BASE__||g" "$TPL/foot.html"; }

# ---- languages ----
# An app declares the languages it ships in its front-matter (`langs: cs,ja`)
# and keeps the translations in its own apps/<slug>/i18n/. An app that declares
# nothing is built in the base language only, which is why adding Japanese to
# one app leaves every other app's output byte-identical.
app_langs() {
  _l="$(fm_get "$1" langs)"
  [ -n "$_l" ] || _l="$I18N_BASE"
  printf '%s' "$_l" | tr ',' ' ' | tr -s ' '
}

# suffix on the gallery manifests of the language being built (see i18n_gallery)
GSFX=""

# page_name <slug> [subpage] [lang] -> kirian.html / kirian-skins.html / kirian-skins.ja.html
# The base language keeps the bare URL, so every link that has ever been
# shared still lands where it did.
page_name() {
  _pn="$1"; [ -z "${2:-}" ] || _pn="$_pn-$2"
  _pl="${3:-$I18N_LANG}"
  if [ "$_pl" = "$I18N_BASE" ]; then printf '%s.html' "$_pn"; else printf '%s.%s.html' "$_pn" "$_pl"; fi
}

# lang_switch_html <slug> <subpage> <lang>... -> the flag row, or nothing at
# all for a single-language app
lang_switch_html() {
  _slug="$1"; _sub="$2"; shift 2
  [ $# -gt 1 ] || return 0
  printf '<nav class="lang-switch" aria-label="%s">' "$(esc "$(t nav.lang)")"
  for _l in "$@"; do
    printf '<a href="%s" hreflang="%s" lang="%s"' "$(page_name "$_slug" "$_sub" "$_l")" "$_l" "$_l"
    [ "$_l" = "$I18N_LANG" ] && printf ' aria-current="true"'
    printf '><img src="assets/img/flag-%s.svg" alt="" width="18" height="12">%s</a>' \
      "$_l" "$(esc "$(lang_name "$_l")")"
  done
  printf '</nav>'
  return 0
}

# alts_html <slug> <subpage> <lang>... -> <link rel="alternate"> block for the head
alts_html() {
  _slug="$1"; _sub="$2"; shift 2
  [ $# -gt 1 ] || return 0
  for _l in "$@"; do
    printf '  <link rel="alternate" hreflang="%s" href="%s">\n' "$_l" "$(page_name "$_slug" "$_sub" "$_l")"
  done
  printf '  <link rel="alternate" hreflang="x-default" href="%s">' "$(page_name "$_slug" "$_sub" "$I18N_BASE")"
  return 0
}

# page_top_html <back href> <back label> <lang switch html>
page_top_html() {
  printf '<div class="page-top"><a class="back-link" href="%s">%s</a>%s</div>\n' "$1" "$(esc "$2")" "$3"
}

# tr_meta <meta> <lang> -> the translated meta.md if the app wrote one, else the original
tr_meta() {
  _tm="$(dirname "$1")/i18n/$2.md"
  if [ "$2" != "$I18N_BASE" ] && [ -f "$_tm" ]; then printf '%s' "$_tm"; else printf '%s' "$1"; fi
}

# fm_get_l <translated meta> <base meta> <key> -> translated value, else the base one.
# A translation file only has to carry the fields it actually changes.
fm_get_l() {
  _v="$(fm_get "$1" "$3")"
  [ -n "$_v" ] || _v="$(fm_get "$2" "$3")"
  printf '%s' "$_v"
}

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
  [ "$_featured" = "true" ] && _out="$_out<span class=\"badge featured\">$(esc "$(t badge.featured)")</span>"
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
  [ -n "$_m" ] && _out="$_out<span class=\"badge\">$(esc "$(t badge.mobile)")</span>"
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
    while IFS="$TAB" read -r _plat _dlname _url _size _tag; do
      [ -n "${_plat:-}" ] || continue
      case "$_plat" in
        macos|windows|linux|android|mod) l="$(t "dl.$_plat")";; *) l="$_plat";;
      esac
      printf '<a class="dl-btn" href="%s" download>⬇ %s <span class="dl-meta">%s · %s</span></a>\n' \
        "$_url" "$l" "$_tag" "$_size"
      _any=1
    done < "$_manifest"
  fi
  [ "$_any" = 0 ] && printf '<p class="dl-empty">%s</p>\n' "$(esc "$(t dl.empty)")"
  return 0
}

# external store links (App Store / Google Play / TestFlight)
store_links_html() {
  _meta="$1"
  for kv in "appstore:App Store" "playstore:Google Play" "testflight:TestFlight" "contentdb:ContentDB"; do
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
  [ "$_any" = 0 ] && printf '<p class="shots-empty">%s</p>\n' "$(esc "$(t "shots.empty.$_kind")")"
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
  _slug="$1"; _tsv="$DIST/skins/$_slug/skins$GSFX.tsv"
  _n="$(wc -l < "$_tsv" | tr -d ' ')"
  printf '<section class="section"><h2>%s</h2>\n' "$(esc "$(t skins.title)")"
  printf '<p class="skins-intro">%s</p>\n' "$(esc "$(tf skins.teaser_intro "$_n")")"
  printf '<div class="skin-picker">'
  while IFS="$SEP" read -r s_id s_name s_year s_theme s_vessels s_bloom s_crt s_tint s_notes s_wiki s_px; do
    [ -n "${s_id:-}" ] || continue
    printf '<a class="skin-chip" href="%s#%s">' "$(page_name "$_slug" skins)" "$s_id"
    skin_card_inner "$_slug" "$s_id" "$s_name" "$s_year"
    printf '</a>'
  done <<EOF
$(tsv_rows "$_tsv")
EOF
  printf '</div>\n'
  printf '<p class="skins-more"><a href="%s">%s</a></p>\n' "$(page_name "$_slug" skins)" "$(esc "$(t skins.more)")"
  printf '</section>\n'
  return 0
}

# one category grid; emits nothing at all when the category has no rows
# (that is what makes the `default` skin's missing backgrounds/ a non-event)
skin_assets_html() {
  _slug="$1"; _sk="$2"; _cat="$3"; _h="$4"; _g="${5:-}"
  _rows="$(awk -F"$TAB" -v s="$_sk" -v c="$_cat" -v OFS="$SEP" '$1 == s && $3 == c { $1 = $1; print }' "$DIST/skins/$_slug/assets$GSFX.tsv")"
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
  _rows="$(awk -F"$TAB" -v s="$_sk" -v c="$_cat" -v OFS="$SEP" '$1 == s && $3 == c { $1 = $1; print }' "$DIST/skins/$_slug/assets$GSFX.tsv")"
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
    # the play button flips to "pause" in store.js, so its two labels ride
    # along on the element instead of being hard-coded in the script
    printf '<div class="player" hidden data-play="%s" data-pause="%s">' \
      "$(esc "$(t player.play)")" "$(esc "$(t player.pause)")"
    printf '<button type="button" class="p-prev" aria-label="%s">⏮</button>' "$(esc "$(t player.prev)")"
    printf '<button type="button" class="p-play" aria-label="%s">▶</button>' "$(esc "$(t player.play)")"
    printf '<button type="button" class="p-next" aria-label="%s">⏭</button>' "$(esc "$(t player.next)")"
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
  _slug="$1"; _appname="$2"; _tsv="$DIST/skins/$_slug/skins$GSFX.tsv"
  _n="$(wc -l < "$_tsv" | tr -d ' ')"
  printf '<section class="skins" id="skins">\n'
  printf '<h1>%s</h1>\n' "$(esc "$(t skins.title)")"
  printf '<p class="skins-intro">%s</p>\n' "$(esc "$(tf skins.page_intro "$_n" "$_appname")")"

  printf '<div class="skin-picker" role="tablist" aria-label="%s">' "$(esc "$(t skins.title)")"
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
    [ -n "$s_vessels" ] && [ "$s_vessels" != 0 ] && printf ' · %s' "$(esc "$(vessels_label "$s_vessels")")"
    printf '</p><div class="badges">'
    [ -n "$s_bloom" ] && [ "$s_bloom" != "—" ] && printf '<span class="badge">%s</span>' "$(esc "$(tf skins.bloom "$s_bloom")")"
    [ -n "$s_crt" ]   && [ "$s_crt"   != "—" ] && printf '<span class="badge">%s</span>' "$(esc "$(tf skins.crt "$s_crt")")"
    [ -n "$s_tint" ]  && [ "$s_tint"  != "—" ] && printf '<span class="badge">%s</span>' "$(esc "$(tf skins.tint "$s_tint")")"
    [ "$s_px" = 1 ] && printf '<span class="badge">%s</span>' "$(esc "$(t skins.pixelart)")"
    printf '</div>'
    if [ -n "$s_notes" ] || [ -n "$s_wiki" ]; then
      printf '<p class="skin-notes">%s' "$(esc "$s_notes")"
      [ -n "$s_notes" ] && [ -n "$s_wiki" ] && printf ' · '
      [ -n "$s_wiki" ] && printf '<a href="%s" rel="noopener">%s</a>' "$(esc "$s_wiki")" "$(esc "$(t skins.wiki)")"
      printf '</p>'
    fi
    printf '</header>\n'

    skin_assets_html "$_slug" "$s_id" preview     "$(t cat.preview)"     hero
    skin_assets_html "$_slug" "$s_id" vessels     "$(t cat.vessels)"
    skin_assets_html "$_slug" "$s_id" enemies     "$(t cat.enemies)"
    skin_assets_html "$_slug" "$s_id" boss        "$(t cat.boss)"
    skin_assets_html "$_slug" "$s_id" asteroids   "$(t cat.asteroids)"
    skin_assets_html "$_slug" "$s_id" fx          "$(t cat.fx)"
    skin_assets_html "$_slug" "$s_id" ui          "$(t cat.ui)"           ui
    skin_assets_html "$_slug" "$s_id" backgrounds "$(t cat.backgrounds)"  bg
    skin_audio_html  "$_slug" "$s_id" sfx         "$(t cat.sfx)"
    skin_audio_html  "$_slug" "$s_id" music       "$(t cat.music)"
    printf '</div>\n'
  done <<EOF
$(tsv_rows "$_tsv")
EOF

  printf '<p class="skins-disclaimer">%s</p>\n' "$(esc "$(tf skins.disclaimer "$_appname")")"
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

# "6 lodí" is Czech grammar, not a format string — the count picks the case.
# Languages that do not inflect just take a format out of the catalog.
vessels_label() {
  case "$I18N_LANG" in
    cs) printf '%s %s' "$1" "$(plural_ship "$1")" ;;
    *)  tf skins.vessels "$1" ;;
  esac
}

# i18n_gallery <slug> <lang> <catalog.tsv>
# Writes dist/skins/<slug>/{skins,assets}.<lang>.tsv, the manifests the page
# functions read for that language. Rows are keyed on the source string
# (`label.<text>`), which is what lets `make import-skins` regenerate the
# gallery from the game repo without invalidating the translation; a cell with
# no row passes through, which is what we want for ship and enemy names.
i18n_gallery() {
  _gslug="$1"; _glang="$2"; _gcat="$3"; _gdir="$DIST/skins/$_gslug"
  for _gf in skins assets; do
    [ -f "$_gdir/$_gf.tsv" ] || continue
    if [ -f "$_gcat" ]; then
      awk -F"$TAB" -v OFS="$TAB" -v cat="$_gcat" -v which="$_gf" '
        function tr(v) { return (v in m) ? m[v] : v }
        FILENAME == cat {
          if (NF >= 2 && substr($1, 1, 6) == "label.") m[substr($1, 7)] = $2
          next
        }
        which == "skins"  { $4 = tr($4); $6 = tr($6); $7 = tr($7); $8 = tr($8); $9 = tr($9) }
        which == "assets" { $5 = tr($5) }
        { print }
      ' "$_gcat" "$_gdir/$_gf.tsv" > "$_gdir/$_gf.$_glang.tsv"
    else
      cp "$_gdir/$_gf.tsv" "$_gdir/$_gf.$_glang.tsv"
    fi
  done
  return 0
}

# ---- prepare dist ----
mkdir -p "$DIST" "$DIST/icons"
rm -f "$DIST"/*.html
rm -rf "$DIST/assets"
cp -R "$ROOT/assets" "$DIST/assets"
touch "$DIST/.nojekyll"
# GitHub Pages custom domain (served at root). Edit repo-root CNAME to change it.
[ -f "$ROOT/CNAME" ] && cp "$ROOT/CNAME" "$DIST/CNAME"

# copy per-app icons. A missing icon is not fatal - icon_html falls back to the
# app's first letter - but that fallback is silent and has shipped to the live
# store more than once, so say it out loud.
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  d="$(dirname "$m")"; slug="$(fm_get "$m" slug)"
  if [ -f "$d/icon.png" ]; then
    cp "$d/icon.png" "$DIST/icons/$slug.png"
  else
    echo "  warning: $slug has no icon.png - store will show a letter tile" >&2
  fi
done

# ---- visuals gallery (dist/visuals/<slug>/, produced by import-visuals.sh) ----
# Same gating idea as skins, but a much flatter model: skins are a product
# feature with audio and per-skin settings, visuals are just categorised
# artwork, so two manifests and no per-item entity.
visuals_have() { [ -f "$DIST/visuals/$1/cats.tsv" ]; }

# rows of one category, as SEP-delimited lines
visuals_rows() {
  awk -F"$TAB" -v c="$2" -v OFS="$SEP" '$1 == c { $1 = $1; print }' "$DIST/visuals/$1/assets.tsv" \
    | sort -t"$SEP" -k2,2n
}

visuals_grid_html() {
  _slug="$1"; _cat="$2"; _grid="${3:-}"
  printf '<div class="sprite-grid %s">' "$_grid"
  while IFS="$SEP" read -r v_cat v_ord v_file v_label v_w v_h; do
    [ -n "${v_file:-}" ] || continue
    printf '<figure class="sprite%s"><img src="visuals/%s/%s/%s" alt="%s" width="%s" height="%s" loading="lazy" decoding="async"><figcaption>%s</figcaption></figure>' \
      "$([ "$_grid" = wide ] && printf ' wide')" "$_slug" "$_cat" "$v_file" \
      "$(esc "$v_label")" "$v_w" "$v_h" "$(esc "$v_label")"
  done <<EOF
$(visuals_rows "$_slug" "$_cat")
EOF
  printf '</div>'
  return 0
}

# teaser on the app page: a handful of airframes, then a link to the subpage
visuals_teaser_html() {
  _slug="$1"
  _total="$(grep -c . "$DIST/visuals/$_slug/assets.tsv" || true)"
  printf '<section class="section"><h2>Vizuály</h2>\n'
  printf '<p class="skins-intro">%s kusů artworku — trupy, kamufláže, arény a parallax terén.</p>\n' "$_total"
  printf '<div class="visuals-cat" data-pixelart="1"><div class="sprite-grid">'
  _n=0
  while IFS="$SEP" read -r v_cat v_ord v_file v_label v_w v_h; do
    [ -n "${v_file:-}" ] || continue
    _n=$((_n + 1)); [ "$_n" -le 8 ] || continue
    printf '<figure class="sprite"><img src="visuals/%s/planes/%s" alt="%s" width="%s" height="%s" loading="lazy" decoding="async"><figcaption>%s</figcaption></figure>' \
      "$_slug" "$v_file" "$(esc "$v_label")" "$v_w" "$v_h" "$(esc "$v_label")"
  done <<EOF
$(visuals_rows "$_slug" planes)
EOF
  printf '</div></div>\n'
  printf '<p class="skins-more"><a href="%s-visuals.html">Prozkoumat všechny vizuály →</a></p>\n' "$_slug"
  printf '</section>\n'
  return 0
}

visuals_page_html() {
  _slug="$1"; _appname="$2"
  printf '<section class="skins" id="visuals">\n'
  printf '<h1 class="skin-head">%s — vizuály</h1>\n' "$(esc "$_appname")"
  while IFS="$SEP" read -r c_id c_title c_note; do
    [ -n "${c_id:-}" ] || continue
    # Sprites are hard-edged pixel art and must not be smoothed; the painted
    # arenas must not be pixelated.
    case "$c_id" in
      planes|skins) _px=1; _grid="" ;;
      backgrounds)  _px=0; _grid="hero" ;;
      *)            _px=0; _grid="wide" ;;
    esac
    printf '<div class="skin-cat visuals-cat" data-pixelart="%s" id="%s">' "$_px" "$c_id"
    printf '<h3>%s</h3>' "$(esc "$c_title")"
    [ -n "${c_note:-}" ] && printf '<p class="skin-notes">%s</p>' "$(esc "$c_note")"
    visuals_grid_html "$_slug" "$c_id" "$_grid"
    printf '</div>\n'
  done <<EOF
$(tsv_rows "$DIST/visuals/$_slug/cats.tsv")
EOF
  printf '</section>\n'
  return 0
}

# ---- fleets gallery (dist/fleets/<slug>/, produced by scripts/import-fleets.sh) ----
# Third gallery shape. Skins are whole themes and visuals are flat artwork;
# fleets are ten interchangeable sprite sets over one shared game — so the
# per-fleet panels are joined by a shared section (maneuvers, sounds, music)
# that does not belong to any one fleet.
fleets_have() { [ -f "$DIST/fleets/$1/fleets.tsv" ]; }

fl_rows()     { tsv_rows "$DIST/fleets/$1/fleets.tsv"; }
fl_assets()   { awk -F"$TAB" -v f="$2" -v c="$3" -v OFS="$SEP" '$1 == f && $3 == c { $1 = $1; print }' "$DIST/fleets/$1/assets.tsv"; }
fl_common()   { awk -F"$TAB" -v c="$2" -v OFS="$SEP" '$1 == c { $1 = $1; print }' "$DIST/fleets/$1/common.tsv"; }
fl_mans()     { awk -F"$TAB" -v u="$2" -v OFS="$SEP" '$2 == u { $1 = $1; print }' "$DIST/fleets/$1/maneuvers.tsv"; }

UNIT_IDS="pawn knight bishop rook queen king"

unit_label() {
  case "$1" in
    pawn) echo "Pěšec" ;; knight) echo "Jezdec" ;; bishop) echo "Střelec" ;;
    rook) echo "Věž" ;;   queen)  echo "Dáma" ;;  king)   echo "Král" ;;
    *)    echo "$1" ;;
  esac
}
# the battle element each unit shoots with (BattleElement in the game)
unit_element() {
  case "$1" in
    pawn) echo "kinetický" ;; knight) echo "vodní" ;; bishop) echo "ohnivý" ;;
    rook) echo "ledový" ;;    queen|king) echo "elektrický" ;;
    *)    echo "" ;;
  esac
}

# 400 -> "0,40 s"  (Czech decimal comma)
secs() { awk -v ms="$1" 'BEGIN { printf "%.2f", ms / 1000 }' | tr . ,; }

# plural_win <n> -> výhra / výhry / výher
plural_win() { case "$1" in 1) echo "výhra" ;; 2|3|4) echo "výhry" ;; *) echo "výher" ;; esac; }

# unlock_label <starter|wins:N|pack:ID>
unlock_label() {
  case "$1" in
    starter) echo "od začátku" ;;
    wins:*)  _w="${1#wins:}"; echo "$_w $(plural_win "$_w")" ;;
    pack:*)  echo "balíček $(printf '%s' "${1#pack:}" | tr '[:lower:]' '[:upper:]')" ;;
    *)       echo "$1" ;;
  esac
}

# gesture_svg <dash-joined dots> — the 3x3 lock-screen pattern that starts the
# maneuver, drawn with the same 0.2/0.3 dot layout as the game's PatternGlyph.
gesture_svg() {
  awk -v dots="$1" 'BEGIN {
    n = split(dots, d, "-")
    printf "<svg class=\"gesture\" viewBox=\"0 0 1 1\" aria-hidden=\"true\">"
    for (i = 0; i < 9; i++)
      printf "<circle class=\"d\" cx=\"%.2f\" cy=\"%.2f\" r=\"0.035\"/>", \
             0.2 + 0.3 * (i % 3), 0.2 + 0.3 * int(i / 3)
    printf "<polyline class=\"g\" points=\""
    for (i = 1; i <= n; i++)
      printf "%s%.2f,%.2f", (i > 1 ? " " : ""), 0.2 + 0.3 * (d[i] % 3), 0.2 + 0.3 * int(d[i] / 3)
    printf "\"/>"
    for (i = 1; i <= n; i++)
      printf "<circle class=\"%s\" cx=\"%.2f\" cy=\"%.2f\" r=\"%s\"/>", (i == n ? "h" : "v"), \
             0.2 + 0.3 * (d[i] % 3), 0.2 + 0.3 * int(d[i] / 3), (i == n ? "0.075" : "0.055")
    printf "</svg>"
  }'
}

# one sprite grid for a fleet's white or black ships
fleet_ships_html() {
  _slug="$1"; _fl="$2"; _cat="$3"; _h="$4"
  _rows="$(fl_assets "$_slug" "$_fl" "$_cat")"
  [ -n "$_rows" ] || return 0
  printf '<div class="skin-cat"><h3>%s</h3><div class="sprite-grid">' "$_h"
  printf '%s\n' "$_rows" | while IFS="$SEP" read -r a_fl a_ord a_cat a_file a_label a_w a_h; do
    printf '<figure class="sprite"><img src="fleets/%s/%s/%s" alt="%s" width="%s" height="%s" loading="lazy" decoding="async"><figcaption>%s</figcaption></figure>' \
      "$_slug" "$a_fl" "$a_file" "$(esc "$a_label")" "$a_w" "$a_h" "$(esc "$a_label")"
  done
  printf '</div></div>\n'
  return 0
}

# shared SFX buttons / music playlist — same markup (and the same single audio
# channel in store.js) as the skins gallery
fleet_audio_html() {
  _slug="$1"; _cat="$2"; _h="$3"; _note="$4"
  _rows="$(fl_common "$_slug" "$_cat")"
  [ -n "$_rows" ] || return 0
  printf '<div class="skin-cat"><h3>%s</h3>' "$_h"
  [ -n "$_note" ] && printf '<p class="skin-notes">%s</p>' "$(esc "$_note")"
  if [ "$_cat" = sfx ]; then
    printf '<div class="sfx-grid" data-audio="sfx">'
    printf '%s\n' "$_rows" | while IFS="$SEP" read -r c_cat c_ord c_file c_label c_secs c_rest; do
      printf '<a class="sfx-btn" href="fleets/%s/common/%s" data-src="fleets/%s/common/%s"><span class="i">▶</span>%s</a>' \
        "$_slug" "$c_file" "$_slug" "$c_file" "$(esc "$c_label")"
    done
    printf '</div>'
  else
    printf '<div class="audio" data-audio="music">'
    # the play button flips to "pause" in store.js, so its two labels ride
    # along on the element instead of being hard-coded in the script
    printf '<div class="player" hidden data-play="%s" data-pause="%s">' \
      "$(esc "$(t player.play)")" "$(esc "$(t player.pause)")"
    printf '<button type="button" class="p-prev" aria-label="%s">⏮</button>' "$(esc "$(t player.prev)")"
    printf '<button type="button" class="p-play" aria-label="%s">▶</button>' "$(esc "$(t player.play)")"
    printf '<button type="button" class="p-next" aria-label="%s">⏭</button>' "$(esc "$(t player.next)")"
    printf '<span class="p-title"></span><progress class="p-bar" max="100" value="0"></progress></div>'
    printf '<ol class="tracklist">'
    printf '%s\n' "$_rows" | while IFS="$SEP" read -r c_cat c_ord c_file c_label c_secs c_rest; do
      printf '<li><a href="fleets/%s/common/%s" data-src="fleets/%s/common/%s">%s <span class="d">%s</span></a></li>' \
        "$_slug" "$c_file" "$_slug" "$c_file" "$(esc "$c_label")" "$(mmss "$c_secs")"
    done
    printf '</ol></div>'
  fi
  printf '</div>\n'
  return 0
}

# the maneuvers of one unit: a card per maneuver, gesture drawn server-side,
# flight path animated by store.js from fleets/<slug>/maneuvers.json
fleet_maneuvers_html() {
  _slug="$1"; _u="$2"
  _rows="$(fl_mans "$_slug" "$_u")"
  [ -n "$_rows" ] || return 0
  printf '<div class="man-grid">'
  printf '%s\n' "$_rows" | while IFS="$SEP" read -r m_id m_ship m_fam m_tier m_name m_desc m_energy m_dur m_pat m_unlock m_price m_unt m_tags m_shots; do
    printf '<article class="man-card" data-man="%s" data-unit="%s">' "$(esc "$m_id")" "$m_ship"
    printf '<div class="man-anim"><canvas class="man-canvas" width="340" height="340" role="img" aria-label="Dráha manévru %s"></canvas></div>' \
      "$(esc "$m_name")"
    printf '<div class="man-body"><div class="man-head">'
    gesture_svg "$m_pat"
    printf '<div><h4>%s</h4><p class="man-unlock">%s</p></div></div>' \
      "$(esc "$m_name")" "$(unlock_label "$m_unlock")"
    printf '<p class="man-desc">%s</p>' "$(esc "$m_desc")"
    printf '<ul class="man-stats">'
    printf '<li title="Energie">⚡ %s</li>' "$m_energy"
    printf '<li title="Trvání">%s s</li>' "$(secs "$m_dur")"
    [ "$m_shots" != 0 ] && printf '<li title="Výstřely">%s ×</li>' "$m_shots"
    [ -n "$m_unt" ] && printf '<li class="hl" title="Střely procházejí skrz">nezasažitelný</li>'
    case "$m_tags" in *shield*)  printf '<li class="hl" title="Zvedá štít">štít</li>' ;; esac
    case "$m_tags" in *control*) printf '<li title="Řízení zůstává na pilotovi">volné řízení</li>' ;; esac
    case "$m_tags" in *mirror*)  printf '<li title="Zrcadlené gesto letí zrcadlený manévr">zrcadlitelný</li>' ;; esac
    [ -n "$m_price" ] && printf '<li title="Cena v kreditech">%s kr.</li>' "$m_price"
    printf '</ul></div></article>'
  done
  printf '</div>\n'
  return 0
}

# teaser section on the app detail page
fleets_teaser_html() {
  _slug="$1"; _n="$(grep -c . "$DIST/fleets/$_slug/fleets.tsv")"
  _m="$(if [ -f "$DIST/fleets/$_slug/maneuvers.tsv" ]; then grep -c . "$DIST/fleets/$_slug/maneuvers.tsv"; else echo 0; fi)"
  printf '<section class="section"><h2>Flotily</h2>\n'
  printf '<p class="skins-intro">%s flotil po šesti typech lodí' "$_n"
  [ "$_m" != 0 ] && printf ' a %s manévrů, které se kreslí prstem' "$_m"
  printf '.</p>\n'
  printf '<div class="skin-picker">'
  while IFS="$SEP" read -r f_id f_name f_theme f_note f_def; do
    [ -n "${f_id:-}" ] || continue
    printf '<a class="skin-chip" href="%s-fleets.html#%s"><img src="fleets/%s/%s/preview/preview.webp" alt="" width="384" height="384" loading="lazy" decoding="async"><span class="n">%s</span></a>' \
      "$_slug" "$f_id" "$_slug" "$f_id" "$(esc "$f_name")"
  done <<EOF
$(fl_rows "$_slug")
EOF
  printf '</div>\n'
  printf '<p class="skins-more"><a href="%s-fleets.html">Prozkoumat flotily a manévry →</a></p>\n' "$_slug"
  printf '</section>\n'
  return 0
}

fleets_page_html() {
  _slug="$1"; _appname="$2"
  _n="$(grep -c . "$DIST/fleets/$_slug/fleets.tsv")"
  printf '<section class="skins fleets" id="fleets" data-slug="%s">\n' "$_slug"
  printf '<h1>Flotily</h1>\n'
  printf '<p class="skins-intro">%s flotil pro %s. Každá překresluje všech šest typů lodí v bílé i černé variantě — flotila je čistě vizuální, pohyb figur ani souboj se s ní nemění.</p>\n' \
    "$_n" "$(esc "$_appname")"

  printf '<div class="skin-picker" role="tablist" aria-label="Flotily">'
  while IFS="$SEP" read -r f_id f_name f_theme f_note f_def; do
    [ -n "${f_id:-}" ] || continue
    printf '<button type="button" class="skin-chip" role="tab" data-skin="%s" id="tab-%s" aria-selected="false" aria-controls="panel-%s">' \
      "$f_id" "$f_id" "$f_id"
    printf '<img src="fleets/%s/%s/preview/preview.webp" alt="" width="384" height="384" loading="lazy" decoding="async"><span class="n">%s</span>' \
      "$_slug" "$f_id" "$(esc "$f_name")"
    [ "$f_def" = 1 ] && printf '<span class="y">výchozí</span>'
    printf '</button>'
  done <<EOF
$(fl_rows "$_slug")
EOF
  printf '</div>\n'

  while IFS="$SEP" read -r f_id f_name f_theme f_note f_def; do
    [ -n "${f_id:-}" ] || continue
    printf '<div class="skin-panel" id="panel-%s" role="tabpanel" aria-labelledby="tab-%s" data-skin="%s">\n' \
      "$f_id" "$f_id" "$f_id"
    printf '<header class="skin-head"><h2>%s</h2><p class="skin-theme">%s</p>' \
      "$(esc "$f_name")" "$(esc "$f_theme")"
    [ -n "$f_note" ] && printf '<p class="skin-notes">%s</p>' "$(esc "$f_note")"
    printf '</header>\n'
    fleet_ships_html "$_slug" "$f_id" white "Bílá flotila"
    fleet_ships_html "$_slug" "$f_id" black "Černá flotila"
    printf '</div>\n'
  done <<EOF
$(fl_rows "$_slug")
EOF

  # ---- shared across fleets ----
  if [ -f "$DIST/fleets/$_slug/maneuvers.tsv" ]; then
    _mn="$(grep -c . "$DIST/fleets/$_slug/maneuvers.tsv")"
    printf '<section class="maneuvers" id="manevry">\n'
    printf '<h2>Manévry</h2>\n'
    printf '<p class="skins-intro">%s manévrů: dvanáct rodin, které umí každá loď po svém, plus jeden vlastní. Spouští se gestem nakresleným do mřížky 3×3 — jako odemykání Androidu — a stojí energii, která se sama dobíjí. Dráhy níž jsou vzorkované přímo z herního katalogu, takže loď na plátně letí to, co letí v souboji.</p>\n' "$_mn"
    printf '<div class="unit-picker" role="tablist" aria-label="Typy lodí">'
    for u in $UNIT_IDS; do
      printf '<button type="button" class="unit-chip" role="tab" data-unit="%s" aria-selected="false">' "$u"
      printf '<img data-unit-img="%s" src="fleets/%s/vanguard/white/%s.webp" alt="" width="256" height="256" loading="lazy" decoding="async">' \
        "$u" "$_slug" "$u"
      printf '<span class="n">%s</span><span class="y">%s</span></button>' \
        "$(unit_label "$u")" "$(unit_element "$u")"
    done
    printf '</div>\n'
    for u in $UNIT_IDS; do
      printf '<div class="unit-panel" data-unit="%s">' "$u"
      fleet_maneuvers_html "$_slug" "$u"
      printf '</div>\n'
    done
    printf '</section>\n'
  fi

  printf '<section class="fleet-audio">\n<h2>Zvuk souboje</h2>\n'
  fleet_audio_html "$_slug" sfx "Zvuky (SFX)" \
    "Zvuk výstřelu i exploze určuje element lodi, ne flotila: pěšec střílí kineticky, jezdec vodou, střelec ohněm, věž ledem, dáma a král elektřinou."
  fleet_audio_html "$_slug" music "Hudba" \
    "Souboji hraje téma útočící lodi."
  printf '</section>\n'
  printf '</section>\n'
  return 0
}

# copy per-app skin galleries if provided (already web-ready; see scripts/import-skins.sh)
for d in "$APPS"/*/skins; do
  [ -d "$d" ] || continue
  slug="$(basename "$(dirname "$d")")"
  mkdir -p "$DIST/skins"
  rm -rf "$DIST/skins/$slug"
  cp -R "$d" "$DIST/skins/$slug"
done

# same, for visuals galleries (scripts/import-visuals.sh)
for d in "$APPS"/*/visuals; do
  [ -d "$d" ] || continue
  slug="$(basename "$(dirname "$d")")"
  mkdir -p "$DIST/visuals"
  rm -rf "$DIST/visuals/$slug"
  cp -R "$d" "$DIST/visuals/$slug"
done

# and fleet galleries (scripts/import-fleets.sh)
for d in "$APPS"/*/fleets; do
  [ -d "$d" ] || continue
  slug="$(basename "$(dirname "$d")")"
  mkdir -p "$DIST/fleets"
  rm -rf "$DIST/fleets/$slug"
  cp -R "$d" "$DIST/fleets/$slug"
done

# ordered list of meta files
ORDER_LIST="$(for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  ord="$(fm_get "$m" order)"; [ -n "$ord" ] || ord=99
  printf '%s\t%s\n' "$ord" "$m"
done | sort -n -k1,1)"

# ---- build per-app pages + accumulate index cards ----
# The inner loop is the app's language list: every page an app has is built
# once per language it declares, and the index (one shared page) is built from
# the base language only.
CARDS=""
while IFS="$TAB" read -r ord meta; do
  [ -n "${meta:-}" ] || continue
  appdir="$(dirname "$meta")"
  slug="$(fm_get "$meta" slug)"
  name="$(fm_get "$meta" name)"
  featured="$(fm_get "$meta" featured)"
  icon="$(icon_html "$slug" "$name")"
  langs="$(app_langs "$meta")"

  for lang in $langs; do
    # base catalog first, then the language, then whatever this app overrides:
    # an app can reword the chrome for itself without touching any other app
    i18n_load "$lang" "$TPL/i18n/$I18N_BASE.tsv" "$TPL/i18n/$lang.tsv" "$appdir/i18n/$lang.tsv"
    lmeta="$(tr_meta "$meta" "$lang")"
    lname="$(fm_get_l "$lmeta" "$meta" name)"
    tagline="$(fm_get_l "$lmeta" "$meta" tagline)"
    badges="$(badges_html "$meta" "$featured")"

    GSFX=""
    if [ "$lang" != "$I18N_BASE" ]; then
      GSFX=".$lang"
      if skins_have "$slug"; then i18n_gallery "$slug" "$lang" "$appdir/i18n/$lang.tsv"; fi
    fi

    lsw_app="$(lang_switch_html "$slug" "" $langs)"
    alt_app="$(alts_html "$slug" "" $langs)"

    # index card — one per app, in the base language
    if [ "$lang" = "$I18N_BASE" ]; then
      CARDS="$CARDS<a class=\"app-card\" href=\"$(page_name "$slug")\">
  <div class=\"icon\">$icon</div>
  <h3 class=\"name\">$lname</h3>
  <p class=\"tagline\">$tagline</p>
  <div class=\"badges\">$badges</div>
</a>
"
    fi

    # detail page
    {
      emit_head "$(tf title.app "$lname")" "$alt_app"
      page_top_html "index.html" "$(t nav.all_apps)" "$lsw_app"
      cat <<HERO
<section class="app-hero">
  <div class="icon">$icon</div>
  <div>
    <h1>$lname</h1>
    <p class="tagline">$tagline</p>
    <div class="badges">$badges</div>
  </div>
</section>
HERO
      printf '<section class="section"><h2>%s</h2><div class="downloads">\n' "$(esc "$(t sec.downloads)")"
      downloads_html "$slug"
      store_links_html "$meta"
      echo '</div></section>'
      # explicit `if` (not `&&`): under `set -e` a failing guard as the last
      # command of this group would truncate the page
      if skins_have "$slug"; then skins_teaser_html "$slug"; fi
      if visuals_have "$slug"; then visuals_teaser_html "$slug"; fi
      if fleets_have "$slug"; then fleets_teaser_html "$slug"; fi
      printf '<section class="section"><h2>%s</h2>\n' "$(esc "$(t sec.shots_desktop)")"
      shots_html "$slug" desktop
      echo '</section>'
      printf '<section class="section"><h2>%s</h2>\n' "$(esc "$(t sec.shots_mobile)")"
      shots_html "$slug" mobile
      echo '</section>'
      printf '<section class="section"><h2>%s</h2><div class="app-desc">\n' "$(esc "$(t sec.description)")"
      fm_body "$lmeta" | md_to_html
      echo '</div></section>'
      emit_brand
      emit_foot
    } > "$DIST/$(page_name "$slug")"
    echo "  built $(page_name "$slug")"

    back_href="$(page_name "$slug")"
    back_label="$(tf nav.back_to "$lname")"

    # skins subpage — flat URL at dist/ root, so __BASE__ stays empty and
    # `rm -f dist/*.html` already cleans it
    if skins_have "$slug"; then
      {
        emit_head "$(tf title.skins "$lname")" "$(alts_html "$slug" skins $langs)"
        page_top_html "$back_href" "$back_label" "$(lang_switch_html "$slug" skins $langs)"
        skins_page_html "$slug" "$lname"
        emit_brand
        emit_foot
      } > "$DIST/$(page_name "$slug" skins)"
      echo "  built $(page_name "$slug" skins)"
    fi

    # visuals and fleets are single-language today: their chrome still lives in
    # the scripts, so they are built for the base language only
    if [ "$lang" = "$I18N_BASE" ] && visuals_have "$slug"; then
      {
        emit_head "$lname — vizuály — olin.now"
        page_top_html "$back_href" "$back_label" ""
        visuals_page_html "$slug" "$lname"
        emit_brand
        emit_foot
      } > "$DIST/$slug-visuals.html"
      echo "  built $slug-visuals.html"
    fi

    if [ "$lang" = "$I18N_BASE" ] && fleets_have "$slug"; then
      {
        emit_head "$lname — flotily a manévry — olin.now"
        page_top_html "$back_href" "$back_label" ""
        fleets_page_html "$slug" "$lname"
        emit_brand
        emit_foot
      } > "$DIST/$slug-fleets.html"
      echo "  built $slug-fleets.html"
    fi
  done
done <<EOF
$ORDER_LIST
EOF

# ---- standalone pages (pages/<name>.html -> dist/<name>.html) ----
# Hand-written body fragments wrapped in the store's head/foot. A sibling
# assets/css/<name>.css, when present, is linked after store.css: the store's
# layout is all CSS variables, so a page re-skins itself by redefining them
# (business.html is the store in black and gold). Leading `<!-- key: value -->`
# lines carry the title, the meta description and the contact address.
page_meta() { sed -n "s/^<!-- $2: \(.*\) -->\$/\1/p" "$1" | head -1; }
sed_safe() { printf '%s' "$1" | sed 's/[&|]/\\&/g'; }
for page in "$ROOT"/pages/*.html; do
  [ -e "$page" ] || continue
  pname="$(basename "$page" .html)"
  ptitle="$(page_meta "$page" title)"
  pdesc="$(page_meta "$page" description)"
  pmail="$(page_meta "$page" email)"
  extra=""
  if [ -n "$pdesc" ]; then
    extra="$extra<meta name=\"description\" content=\"$pdesc\"><meta property=\"og:title\" content=\"$ptitle\"><meta property=\"og:description\" content=\"$pdesc\"><meta property=\"og:type\" content=\"website\">"
  fi
  if [ -f "$ROOT/assets/css/$pname.css" ]; then
    extra="$extra<link rel=\"stylesheet\" href=\"assets/css/$pname.css?v=$(hashf "$ROOT/assets/css/$pname.css")\">"
  fi
  {
    emit_head "$ptitle" | sed "s|</head>|$(sed_safe "$extra")</head>|"
    # Czech typography: a one-letter preposition or conjunction never ends a
    # line. Applied twice because matches cannot overlap ("a v lese").
    grep -v -e '^<!-- title: ' -e '^<!-- description: ' -e '^<!-- email: ' "$page" \
      | sed -e "s|__EMAIL__|$(sed_safe "$pmail")|g" \
            -e 's/ \([ksvzouaiKSVZOUAI]\) / \1\&nbsp;/g' \
            -e 's/\&nbsp;\([ksvzouaiKSVZOUAI]\) /\&nbsp;\1\&nbsp;/g'
    emit_foot
  } > "$DIST/$pname.html"
  echo "  built $pname.html"
done

# ---- build index ----
i18n_load "$I18N_BASE" "$TPL/i18n/$I18N_BASE.tsv"
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
