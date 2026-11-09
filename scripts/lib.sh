# Shared helpers for ol1n.now build scripts. POSIX/bash-3.2 compatible.
# Source this; do not execute.

# Repo root (dir containing this scripts/ folder)
OLN_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")/.." && pwd)"

# fm_get <metafile> <key>  -> prints the front-matter value (trimmed) or empty
fm_get() {
  awk -v want="$2" '
    /^---[ \t]*$/ { n++; next }
    n==1 {
      i = index($0, ":")
      if (i > 0) {
        key = substr($0, 1, i-1)
        val = substr($0, i+1)
        gsub(/^[ \t]+|[ \t]+$/, "", key)
        gsub(/^[ \t]+|[ \t]+$/, "", val)
        if (key == want) { print val; exit }
      }
    }
  ' "$1"
}

# fm_body <metafile>  -> prints markdown body after the second --- delimiter
fm_body() {
  awk '/^---[ \t]*$/ { n++; next } n>=2 { print }' "$1"
}

# html_escape  (stdin -> stdout)
html_escape() {
  sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g'
}

# md_to_html  (stdin markdown -> stdout HTML): minimal converter.
# Supports: paragraphs (blank-line separated), `### podnadpis` (-> <h3>),
# `1.` / `-` seznamy (-> <ol>/<ul>), **bold**, `code`, [text](url).
#
# A soft line break inside a paragraph or list item becomes a space, except
# between two Chinese/Japanese or Thai characters: those scripts put no spaces
# between words, so a translator's line wrap must not show up as a gap. The
# test is on UTF-8 bytes (LC_ALL=C, awk is not UTF-8 aware everywhere):
# lead byte E3-E9 = U+3000-U+9FFF (CJK punctuation, kana, ideographs),
# EF BC/BD = fullwidth forms, E0 B8/B9 = Thai. Hangul (EA-ED) is left out on
# purpose: Korean separates words with spaces.
md_to_html() {
  LC_ALL=C awk '
    # Inline spans run on the whole joined paragraph, not per line — otherwise
    # a **bold** or `code` span that wraps across a line break never pairs up
    # and renders with its literal markers.
    function inline(s,   t, m, p, txt, url) {
      # links first: their text may itself contain **bold** or `code`, which
      # the loops below then pick up inside the emitted <a>
      while (match(s, /\[[^]]+\]\([^)]+\)/)) {
        m = substr(s, RSTART, RLENGTH)
        p = index(m, "](")
        txt = substr(m, 2, p-2)
        url = substr(m, p+2, length(m)-p-2)
        s = substr(s, 1, RSTART-1) "<a href=\"" url "\">" txt "</a>" substr(s, RSTART+RLENGTH)
      }
      while (match(s, /\*\*[^*]+\*\*/)) {
        t = substr(s, RSTART+2, RLENGTH-4)
        s = substr(s, 1, RSTART-1) "<strong>" t "</strong>" substr(s, RSTART+RLENGTH)
      }
      while (match(s, /`[^`]+`/)) {
        t = substr(s, RSTART+1, RLENGTH-2)
        s = substr(s, 1, RSTART-1) "<code>" t "</code>" substr(s, RSTART+RLENGTH)
      }
      return s
    }
    function nospace(c,   b1, b2) {
      b1 = substr(c, 1, 1); b2 = substr(c, 2, 1)
      return (b1 >= "\343" && b1 <= "\351") || (b1 == "\357" && (b2 == "\274" || b2 == "\275")) ||
             (b1 == "\340" && (b2 == "\270" || b2 == "\271"))
    }
    # join <text so far> <next line>: a space, or none between two CJK/Thai characters
    function join(a, b,   t, u) {
      if (a == "") return b
      t = a; sub(/[ \t]+$/, "", t); u = b; sub(/^[ \t]+/, "", u)
      if (length(t) >= 3 && nospace(substr(t, length(t) - 2, 3)) && nospace(substr(u, 1, 3))) return t u
      return a " " b
    }
    function flush() {
      if (buf != "") { print "<p>" inline(buf) "</p>"; buf = "" }
    }
    # a list item, like a paragraph, is only emitted once the next item, a
    # blank line or EOF proves it has no more continuation lines
    function flushitem() {
      if (item != "") { print "<li>" inline(item) "</li>"; item = "" }
    }
    function endlist() {
      flushitem()
      if (listtag != "") { print "</" listtag ">"; listtag = "" }
    }
    { line = $0 }
    /^[ \t]*$/ { flush(); endlist(); next }
    {
      gsub(/&/, "\\&amp;", line); gsub(/</, "\\&lt;", line); gsub(/>/, "\\&gt;", line)
    }
    # `### Nadpis` on its own line closes the running paragraph and emits an
    # <h3>; everything else keeps flowing into one
    /^[ \t]*###[ \t]+/ {
      flush(); endlist()
      sub(/^[ \t]*###[ \t]+/, "", line)
      sub(/[ \t]+$/, "", line)
      print "<h3>" inline(line) "</h3>"
      next
    }
    /^[ \t]*([0-9]+\.|[-*])[ \t]+/ {
      flush()
      want = ($0 ~ /^[ \t]*[0-9]+\./) ? "ol" : "ul"
      flushitem()
      if (listtag != want) { endlist(); print "<" want ">"; listtag = want }
      sub(/^[ \t]*([0-9]+\.|[-*])[ \t]+/, "", line)
      item = line
      next
    }
    # inside a list a plain line continues the current item, not a new paragraph
    listtag != "" {
      sub(/^[ \t]+/, "", line)
      item = join(item, line)
      next
    }
    {
      buf = join(buf, line)
    }
    END { flush(); endlist() }
  '
}

# platform_label <ext>  -> human label for a download artifact extension
platform_label() {
  case "$1" in
    *macOS*|*macos*|*.dmg) echo "macOS" ;;
    *Windows*|*windows*|*.exe|*.msi) echo "Windows" ;;
    *Linux*|*linux*|*.AppImage|*.tar.gz) echo "Linux" ;;
    *.apk) echo "Android (APK)" ;;
    *.aab) echo "Android (AAB)" ;;
    *.ipa) echo "iOS (IPA)" ;;
    *) echo "Download" ;;
  esac
}
