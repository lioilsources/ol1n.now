# Shared i18n helpers for ol1n.now build scripts. bash 3.2-compatible.
# Source this; do not execute.
#
# Model: the site chrome ships a catalog per language in templates/i18n/, and
# every app owns its own translations in apps/<slug>/i18n/ — both the text it
# writes itself (tagline, description) and any chrome wording it wants to say
# differently. An app that declares no `langs:` in its front-matter is built in
# the base language only, so adding a language to one app never touches another.

# The base language: the site's own, and the one whose pages keep the bare
# `<slug>.html` URLs. Every other language falls back to it string by string.
I18N_BASE=cs
I18N_LANG="$I18N_BASE"
I18N_GEN=0
I18N_TAB="$(printf '\t')"

# lang_name <code> -> the language's own name for itself. A Japanese reader
# scanning the switcher looks for 日本語, never for "japonština".
lang_name() {
  case "$1" in
    cs) echo "Čeština" ;;
    ja) echo "日本語" ;;
    en) echo "English" ;;
    de) echo "Deutsch" ;;
    fr) echo "Français" ;;
    es) echo "Español" ;;
    it) echo "Italiano" ;;
    pl) echo "Polski" ;;
    pt-BR) echo "Português (Brasil)" ;;
    nl) echo "Nederlands" ;;
    hu) echo "Magyar" ;;
    uk) echo "Українська" ;;
    vi) echo "Tiếng Việt" ;;
    ko) echo "한국어" ;;
    *)  echo "$1" ;;
  esac
}

# i18n_key <key> -> sets _i18n_key to the shell variable name for that key.
#
# Byte-wise on purpose. In a UTF-8 locale the range A-z collates accented
# letters *inside* it, so `[!A-Za-z0-9_]` leaves the á in `label.Náhled` alone
# and the eval below dies with `T6_label_Náhled=...: command not found`. Under
# LC_ALL=C every byte outside ASCII is replaced, which is all a variable name
# can hold anyway. The scope ends with the function, so nothing else in the
# build gets C collation (sorting of Czech names stays put).
i18n_key() {
  local LC_ALL=C
  _i18n_key="${1//[!A-Za-z0-9_]/_}"
}

# i18n_load <lang> <catalog.tsv>...
# Catalogs are applied in order and later ones win, so call sites pass
# base language → target language → app override.
#
# bash 3.2 has no associative arrays, so keys become plain shell variables.
# They carry a generation prefix that bumps on every load: that is what makes
# the next app's catalog start clean instead of inheriting the previous app's
# overrides (unsetting them one by one would need the key list we just lost).
i18n_load() {
  I18N_LANG="$1"; shift
  I18N_GEN=$((I18N_GEN + 1))
  for _i18n_cat in "$@"; do
    [ -f "$_i18n_cat" ] || continue
    while IFS="$I18N_TAB" read -r _i18n_k _i18n_v; do
      case "$_i18n_k" in ''|'#'*) continue ;; esac
      [ -n "${_i18n_v:-}" ] || continue
      # assignment from an expansion, not from re-parsed text: a value with
      # quotes, $ or backticks in it is data, never shell
      i18n_key "$_i18n_k"
      eval "T${I18N_GEN}_${_i18n_key}=\$_i18n_v"
    done < "$_i18n_cat"
  done
  return 0
}

# t <key> -> the translated string, or the key itself when nothing defines it
# (a visibly wrong string beats a silently empty element)
t() {
  i18n_key "$1"
  eval "_i18n_t=\${T${I18N_GEN}_${_i18n_key}:-}"
  printf '%s' "${_i18n_t:-$1}"
}

# tf <key> <printf args...> -> t <key> used as a printf format.
# The format is ours, from the catalogs; the arguments are what varies.
tf() {
  _i18n_f="$(t "$1")"; shift
  # shellcheck disable=SC2059
  printf "$_i18n_f" "$@"
}
