#!/usr/bin/env bash
# Deploy the site by triggering the "Build & Deploy store" GitHub Actions
# workflow (deploy.yml) and watching it to completion.
#
# GitHub Pages for this repo is set to build_type "workflow": the site is
# published exclusively by that workflow (make all on CI + actions/deploy-pages).
# Pushing to a gh-pages branch does nothing — that legacy path silently
# "succeeded" while the live site stayed stale, so it was removed (2026-07-08).
#
# The workflow builds from the tip of origin/main; commit & push local changes
# first or they won't be part of the deploy.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/lib.sh"
ROOT="$OLN_ROOT"

command -v gh >/dev/null || { echo "error: gh CLI not found" >&2; exit 1; }

REPO="$(cd "$ROOT" && gh repo view --json nameWithOwner --jq .nameWithOwner 2>/dev/null || true)"
[ -n "$REPO" ] || { echo "error: cannot resolve GitHub repo (is 'gh' authenticated?)" >&2; exit 1; }

if [ -n "$(git -C "$ROOT" status --porcelain)" ] ||
   [ -n "$(git -C "$ROOT" log origin/main..HEAD --oneline 2>/dev/null)" ]; then
  echo "warning: local changes not on origin/main will NOT be deployed" >&2
fi

echo "Triggering deploy workflow on $REPO ..."
gh workflow run deploy.yml -R "$REPO"

# workflow_dispatch is async — wait for the run to appear, then watch it.
run_id=""
for _ in $(seq 1 15); do
  sleep 2
  run_id="$(gh run list -R "$REPO" --workflow deploy.yml --limit 1 \
    --json databaseId,status --jq '.[0] | select(.status != "completed") | .databaseId' || true)"
  [ -n "$run_id" ] && break
done
[ -n "$run_id" ] || { echo "error: triggered run did not appear; check: gh run list -R $REPO" >&2; exit 1; }

echo "Watching run $run_id ..."
gh run watch "$run_id" -R "$REPO" --interval 15 --exit-status

echo "Done. Live at https://olin.now (Cloudflare cache may need a hard refresh)."
