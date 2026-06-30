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
    while IFS="$TAB" read -r plat name url mb tag; do
      [ -n "${plat:-}" ] || continue
      case "$plat" in
        macos) l="macOS";; windows) l="Windows";; linux) l="Linux";;
        android) l="Android (APK)";; *) l="$plat";;
      esac
      printf '<a class="dl-btn" href="%s" download>⬇ %s <span class="dl-meta">%s · %s MB</span></a>\n' \
        "$url" "$l" "$tag" "$mb"
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
      [ -e "$f" ] || continue
      b="$(basename "$f")"
      printf '<img src="screenshots/%s/%s/%s" alt="" loading="lazy">' "$_slug" "$_kind" "$b"
      _any=1
    done
    printf '</div>\n'
  fi
  [ "$_any" = 0 ] && printf '<p class="shots-empty">Zatím bez screenshotů (%s).</p>\n' "$_kind"
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

# copy per-app icons if provided
for m in "$APPS"/*/meta.md; do
  [ -e "$m" ] || continue
  d="$(dirname "$m")"; slug="$(fm_get "$m" slug)"
  [ -f "$d/icon.png" ] && cp "$d/icon.png" "$DIST/icons/$slug.png"
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
