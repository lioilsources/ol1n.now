# Standalone pages

## Standalone pages (olin.now/business)

`pages/<name>.html` is a body fragment; `build-site.sh` wraps it in the store's
head/foot and writes `dist/<name>.html`, which GitHub Pages also serves as
`/<name>`. Leading `<!-- title: -->`, `<!-- description: -->`, `<!-- email-user: -->`
and `<!-- email-domain: -->` lines are metadata, not content; `__EMAIL__` in the body
is replaced by user@domain, so the contact address lives in exactly one place. It is
split in two on purpose: this repo is public and harvesters grep it for `x@y`. On the
live site Cloudflare's email obfuscation rewrites every occurrence, so never paste the
address as plain text anywhere else in the repo. It is a Cloudflare Email Routing alias
(catch-all off) — if it starts drawing spam, rotate the alias rather than filtering.

A sibling `assets/css/<name>.css` is linked after `store.css`. The store's layout is
all CSS variables, so `business.css` is mostly a palette (black, gold, grey) — the
cards, chips and badges are the store's own. The ten offers reuse the skins markup
(`.skins`, `.skin-picker`, `.skin-chip[data-skin]`, `.skin-panel`), which is why the
switching and the `#agentury` / `#hry` / `#eshopy` / `#firmy` / `#skoly` / `#rodokmen` /
`#reality` / `#gastro` / `#rekonstrukce` / `#vecirky` / `#gpu` deep links need no JavaScript of their own. `reality` sells the
TerraReality platform and `gastro` Předávka (both added 2026-10-21), `gpu` provisioning and workloads on an own/rented GPU server (added 2026-10-26, numbers from the L40S sandbox benchmarks, no screenshots); `rekonstrukce` offers a free MegaJob pilot to renovation coordinators (added 2026-11-27; the app does not exist yet, so the panel says so and shows wireframes from `visuals/megajob/…`, JSON-LD offer price 0); `vecirky` sells PartyCockpit as a party show for corporate parties, teambuildings and school events (added 2026-11-17 on a friend's feedback; prices are a first proposal, the first event is at half price because it has never run at a real party), screenshots borrowed from `screenshots/partycockpit/…`; their screenshots are
borrowed from the store by path (`screenshots/terrareality/…`, `screenshots/predavka/…`), so
renaming a raw file there breaks the business page too — the build warns about it. The
Školy panel's SwypeKids shots broke exactly that way when that gallery was renumbered. The catch that comes with it: `show()`
treats every hash as an offer id, so the page must not use other in-page anchors.

The build also puts a non-breaking space after one-letter Czech prepositions in
these pages (never in the generated store pages).

Translations are whole files next to the source: `pages/<name>.<lang>.html` for
`en de fr es it nl pl hu uk pt-BR vi ja ko` (menu order is `PAGE_LANGS` in `build-site.sh`). Czech keeps
`/business`; every other language is `/business.<lang>` (GitHub Pages serves it with and
without `.html`, so each page declares its canonical URL without it). The build adds per
language: `<html lang>`, meta description, canonical, `hreflang` for all versions plus
`x-default` → English, Open Graph + Twitter tags, the language menu at `__LANGS__`, and
fills `__URL__` / `__LANG__` / `__OGIMAGE__` in the page's JSON-LD. A translation must keep
the source's markup exactly — `scripts/check-page-translation.py <source> <translation>`
enforces it (same elements, classes, ids, links, placeholders, JSON-LD shape and prices);
run it after every edit to the Czech page and re-translate what it flags. Header comments
`title` (≤ 60 chars) and `description` (≤ 160) are per language. The one-letter-preposition
`&nbsp;` pass runs only for `cs` and `pl`, and never inside `<script>` (it would corrupt the
JSON-LD).

`make og` (authoring, needs Chrome) renders `assets/img/og/<name>.<lang>.png` from the
built pages with `scripts/shoot.mjs`; commit the PNGs. Re-run it when a headline changes.

The build also writes `dist/sitemap.xml` (store pages by file name, standalone pages by
canonical URL) and `dist/robots.txt` pointing at it.

`business.olin.now` cannot be a second GitHub Pages domain (one `CNAME` per site); it
is a Cloudflare redirect rule to `olin.now/business`.

**`pass` / `pass.en`** (Ol1n Pass landing, added 2026-11-01) is the second standalone page,
but it is **not authored here**: `pages/pass.html`, `pages/pass.en.html`, `assets/css/pass.css`
and `static/pass.json` are copied from the repo `lioilsources/Pass` (`site/` and
`catalog/apps.json` there) by its `make sync-site`. Edit them in that repo and re-sync; a change
made here is overwritten by the next sync. The page draws its app list and the "value of every
unlock today" sum from `pass.json` with a script (the same file the apps' paywalls read), so the
cards need no markup and the translation checker only sees the `.pass-i18n` label spans.

**`static/`** (same date) is copied into `dist/` as is, right after `assets/`: files served from
the site root without a page around them. Today only `pass.json`. The catalog lives at
`olin.now/pass.json` rather than `/pass/apps.json` because a `pass/` directory next to `pass.html`
would shadow the extensionless `/pass` URL on GitHub Pages.
