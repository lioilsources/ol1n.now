---
name: release-desktop-store
description: >-
  (Re)release the desktop builds of one or more lioilsources Flutter apps and
  redeploy the olin.now store to point at the fresh GitHub Release assets. Use
  when a desktop build is broken (e.g. Windows debug builds users can't run),
  when cutting a new version, or when the store's download links are stale.
  Covers: fix build workflow → tag/release → CI → store make fetch/build/deploy.
---

# Release desktop apps + redeploy olin.now store

The olin.now store does **not** host binaries. Each app's download buttons link
straight to **GitHub Release assets** built by per-app GitHub Actions workflows
(`.github/workflows/release-{windows,macos,linux}.yml`). `make fetch` resolves the
newest release asset per platform into `dist/downloads/<slug>.tsv`. So "publishing
a fixed build" = **push a new tag on the app repo** (CI builds + uploads) then
**re-run the store fetch/build/deploy**.

## App ↔ repo ↔ store slug map

Repos live under `/Users/ol1n/Dev/GitHub/`. Apps with desktop release workflows:

| store slug  | repo (lioilsources/…) | flutter root        | artifact prefix |
|-------------|-----------------------|---------------------|-----------------|
| poetrystream| PoetryStream          | `poetry_stream`     | PoetryStream    |
| lexify      | DuolingoCards         | `.`                 | (see workflow)  |
| kirian      | Kiran                 | `tyrian_mobile`     | Kiran           |
| mirrorbooth | MirrorBooth           | `mirrorbooth`       | MirrorBooth     |
| ol1nllm     | Ol1nLLM               | `.`                 | Ol1nLLM         |
| swypekids   | SwypeKids             | `.`                 | SwypeKids       |

`doodlebugs` (doodlebugs-revival) is a **Unity** app — its Windows build is a
separate pipeline, NOT covered by the Flutter workflows below. Check `desktop:` in
each `apps/<slug>/meta.md` to see which platforms an app advertises.

## The debug-build gotcha (why Windows fails)

The Flutter desktop workflows historically built `--debug`. A **Windows debug**
`.exe` links against the *debug* C runtime (`VCRUNTIME140D.dll`, `MSVCP140D.dll`,
`ucrtbased.dll`) which is **not present on normal user machines** → the app won't
launch. **Fix = build `--release`** and package from the `Release` output dir.

All three desktop platforms now build **`--release`** (release bundles are also
smaller — Windows dropped ~36 MB debug → ~12 MB release). macOS/Linux debug did
run (unsigned/larger) but release is preferred and what the store ships. The
workflow generator is `scripts/gen-desktop-workflows.sh`; note the real per-repo
workflows have since **drifted** from it (e.g. Linux gained AppImage packaging),
so **edit the repo workflow files in place — do not regenerate** (you'd lose the
AppImage step).

### Keeping debug builds without shipping them
The store fetch (`fetch-artifacts.sh`) matches assets by filename substring
(`windows`, `macos`, `.appimage`/`.tar.gz`) and takes the **newest match across
recent releases**. So a debug asset attached to a release with `windows`/`macos`
in its name *could* get shipped — don't do that. Options to retain debug:
- **Old prerelease tags keep their debug assets** (we don't delete them) — the
  simplest "kept but not shipped" store, since the store points at the newest tag.
- To retain debug for *new* builds, add a separate `flutter build … --debug` step
  + `actions/upload-artifact` (with `continue-on-error` / `if: always()`). That
  keeps debug as a **CI artifact** (not a release asset), so the store never sees
  it. Repos are public → Actions minutes are free; artifacts count toward storage
  and expire (set `retention-days`).

### Known Windows release-build gotchas
- **audioplayers_windows** (and other plugins using `<experimental/coroutine>`)
  fail release compile on new MSVC with `error C2338 … STL1011`. Fix: set
  `env: { CL: /D_SILENCE_EXPERIMENTAL_COROUTINE_DEPRECATION_WARNINGS }` on the
  Windows build step (already in the generator).
- **ffmpeg_kit_flutter_new** (MirrorBooth) fails at CMake configure on Windows:
  "Cannot extract through symlink … Failed to extract FFmpegKit archive". This
  hits debug *and* release — MirrorBooth has **never** produced a Windows asset.
  Not fixed by the debug→release change; treat as a separate plugin issue. Until
  fixed, either drop `windows` from `apps/mirrorbooth/meta.md` `desktop:` or
  accept no Windows download for that app.

Per-platform fix (find & replace in each repo's `release-<platform>.yml`):

- Windows: `flutter build windows --debug` → `--release`; path `…\x64\runner\Debug` → `…\Release`
- macOS:   `flutter build macos --debug` → `--release`; path `Build/Products/Debug` → `…/Release`
- Linux:   `flutter build linux --debug` → `--release`; path `x64/debug/bundle` → `x64/release/bundle` (may appear twice)

Also fix `gen-desktop-workflows.sh` so future apps are correct.

## Procedure

### 1. Fix the workflow(s)
Edit the affected `release-*.yml` in each app repo (see find/replace above). Verify:
```bash
grep -oE 'flutter build (windows|macos|linux) --[a-z]+' <repo>/.github/workflows/release-*.yml
```
Commit **only** the workflow file(s) and push:
```bash
git -C <repo> add .github/workflows/release-windows.yml
git -C <repo> commit -m "Build Windows release (not debug) so users can run it"
git -C <repo> push origin main
```

### 2. Cut a release (per repo)
Tags are `vMAJOR.MINOR.PATCH`. Bump the patch for a build-only fix. **Sync remote
tags first** (local clones may be behind):
```bash
git -C <repo> fetch --tags
git -C <repo> tag --sort=-v:refname | head -3        # find latest
NEW=v2.0.3                                            # = latest + patch
git -C <repo> tag "$NEW" && git -C <repo> push origin "$NEW"
```
Pushing a `v*` tag triggers `release-{windows,macos,linux}.yml`, which build and
upload assets to the release named `<artifact> <tag>` (softprops merges the 3
platform assets into one release; `prerelease: true`).

**Pilot one repo first** (e.g. PoetryStream), confirm the Windows job is green and
the asset runs, then roll the rest out — avoids creating N broken releases.

### 3. Watch CI
```bash
gh run list  -R lioilsources/<repo> --limit 5
gh run watch -R lioilsources/<repo> <run-id>          # or: gh run view <id> --log-failed
gh release view "$NEW" -R lioilsources/<repo>          # confirm *-Windows.zip attached
```

### 4. Redeploy the store
Once releases have the fresh assets:
```bash
cd /Users/ol1n/Dev/GitHub/ol1n.now
make fetch      # re-resolves newest release asset per platform → dist/downloads/*.tsv
make build      # regenerates dist/
make deploy     # pushes dist/ to gh-pages (Cloudflare-fronted olin.now)
```
`make fetch` needs `gh` authed (account `lioilsources`).

### 5. Verify
```bash
grep -i windows dist/downloads/<slug>.tsv             # URL points at the NEW tag
```
Then load the app's detail page and check the Windows download. CSS/JS are
cache-busted (`?v=<hash>`); the HTML has a 10-min Cloudflare TTL, so hard-refresh
(Cmd+Shift+R) or wait for the live site to update.

## Notes
- Only commit the workflow file — never sweep unrelated working-tree changes.
- If a platform's release build fails in CI, the release just lacks that asset;
  `make fetch` keeps the last good asset for other platforms. Fix and re-tag.
- Deploy is outward-facing (public releases + live site) — the flow is
  pre-authorized for this store, but report what shipped.
