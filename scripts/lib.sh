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
# Supports: paragraphs (blank-line separated), **bold**, `code`.
md_to_html() {
  awk '
    function flush() {
      if (buf != "") { print "<p>" buf "</p>"; buf = "" }
    }
    { line = $0 }
    /^[ \t]*$/ { flush(); next }
    {
      gsub(/&/, "\\&amp;", line); gsub(/</, "\\&lt;", line); gsub(/>/, "\\&gt;", line)
      while (match(line, /\*\*[^*]+\*\*/)) {
        s = substr(line, RSTART+2, RLENGTH-4)
        line = substr(line, 1, RSTART-1) "<strong>" s "</strong>" substr(line, RSTART+RLENGTH)
      }
      while (match(line, /`[^`]+`/)) {
        s = substr(line, RSTART+1, RLENGTH-2)
        line = substr(line, 1, RSTART-1) "<code>" s "</code>" substr(line, RSTART+RLENGTH)
      }
      buf = (buf == "" ? line : buf " " line)
    }
    END { flush() }
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
