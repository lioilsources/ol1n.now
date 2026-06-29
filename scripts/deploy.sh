#!/usr/bin/env bash
# Publish dist/ to the gh-pages branch of the repo's origin remote.
# Uses an ephemeral git repo inside dist/ and a force-push (gh-pages is a
# generated branch — its history is disposable).
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/lib.sh"
ROOT="$OLN_ROOT"
DIST="$ROOT/dist"

[ -d "$DIST" ] || { echo "error: $DIST missing — run 'make build' first" >&2; exit 1; }

# Resolve the push target from the main repo's origin remote.
REMOTE="$(git -C "$ROOT" remote get-url origin 2>/dev/null || true)"
if [ -z "$REMOTE" ]; then
  cat >&2 <<'MSG'
error: no git 'origin' remote found for this repo.
Initialize and connect it first, e.g.:
  git init && git add -A && git commit -m "init"
  gh repo create lioilsources/ol1n.now --source=. --private --push
Then re-run: make deploy
MSG
  exit 1
fi

MSG="deploy $(git -C "$ROOT" rev-parse --short HEAD 2>/dev/null || echo manual)"
echo "Publishing $DIST -> gh-pages on $REMOTE"

tmp_git="$DIST/.git"
rm -rf "$tmp_git"
git -C "$DIST" init -q
git -C "$DIST" checkout -q -b gh-pages
git -C "$DIST" add -A
git -C "$DIST" -c user.email=deploy@ol1n.now -c user.name=ol1n-deploy commit -qm "$MSG"
git -C "$DIST" push -q -f "$REMOTE" gh-pages
rm -rf "$tmp_git"

echo "Done. Enable Pages (branch: gh-pages) in repo settings if not already."
