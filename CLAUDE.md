# ol1n.now — CLAUDE.md

## Purpose
Static app store for own apps (Windows/macOS/Linux/mobile) at `olin.now`, on GitHub Pages.
No backend: download buttons link straight to GitHub release assets. Built from Markdown
app metadata by a Makefile + bash pipeline.

## Build
```bash
make fetch        # latest GitHub release artifacts per app -> dist/downloads/<slug>.tsv (gh + jq)
make screenshots  # raw screenshots/videos -> dist/screenshots/<slug>/ (ImageMagick with WebP, ffmpeg)
make build        # static site -> dist/ (gate: must finish; warns about missing icons)
make serve        # build + serve dist/ locally
make deploy       # trigger the CI deploy workflow (builds origin/main: push first)
make help         # all targets, incl. authoring-only import-* / store-icons / og
```

## Map
- `apps/<slug>/` — `meta.md` (front-matter + description), `icon.png` 512×512, `i18n/`, `screenshots/raw/`, optional galleries
- `pages/` — hand-written standalone pages (`business.html` = olin.now/business)
- `templates/` — HTML/CSS templates, `templates/i18n/<lang>.tsv` site chrome (cs is the base)
- `scripts/` — `build-site.sh`, fetch/import/screenshot helpers, `shoot.mjs` (headless Chrome)
- `assets/`, `static/` — site-wide assets; `static/` is copied to the site root as is
- `dist/` — built site (git-ignored); `store-screenshots/` — store-size copies, never published

## Adding a new app
1. `apps/<slug>/meta.md` with YAML front-matter. The index sorts apps alphabetically by
   `name` (Czech style, `name_key` in `build-site.sh`); there is no `order` field.
2. `apps/<slug>/icon.png` (512×512) — **easy to forget**: without it the build silently
   falls back to the first letter instead of failing.
3. Screenshots into `apps/<slug>/screenshots/raw/<kind>/<platform>/`.
4. `make fetch`, `make screenshots`, `make build`, then commit, push, `make deploy`.

Per-app quirks (store links, `artifacts:`, empty `repo:`, `master` branches): `docs/apps.md`.

## Invariants
- **Deploy only from CI.** GitHub Pages is `build_type: workflow`; `.github/workflows/deploy.yml`
  runs `make all` from `origin/main`. The `gh-pages` branch is a dead leftover — never push it,
  never read it to judge freshness; check `gh run list --workflow deploy.yml`.
- `CNAME` keeps `olin.now`; Cloudflare proxies it. Linked release repos must be public.
- **Contact e-mail** lives only in the `email-user` / `email-domain` header comments of
  `pages/*.html`, split on purpose (public repo, harvesters grep for `x@y`). Never paste it
  whole anywhere in the repo.
- `pages/pass*.html`, `assets/css/pass.css`, `static/pass.json` are synced from `lioilsources/Pass`;
  edit them there.
- `build-site.sh` knows no app by name: galleries are gated on their manifests in `dist/`.
- A translated standalone page must keep the source markup:
  `scripts/check-page-translation.py <source> <translation>` after every Czech edit.
- New chrome key goes into all 45 `templates/i18n/*.tsv` catalogs.
- No moving or fixed layer behind prose (the old parallax footer logo).
- Pages that borrow screenshots by path break silently on a raw-file rename: grep after renaming.

## More
- `docs/structure.md` — full tree, gallery manifests, tooling per `make` target
- `docs/languages.md` — i18n layers, 45 languages, RTL
- `docs/galleries.md` — lightbox, skins, visuals, fleets, decks, app subpages
- `docs/pages.md` — standalone pages (business, pass), sitemap, OG images
- `docs/apps.md` — app catalog and per-app notes
- `docs/screenshots.md` — WebP, throwaway web builds, golden-test screenshots
- `README.md` — Czech user docs („Jazyky“ etc.); `.claude/skills/release-desktop-store/`
