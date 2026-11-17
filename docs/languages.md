# Languages

Czech is the base language and keeps the bare URLs (`kirian.html`); every other
language gets a suffixed page next to it (`kirian.ja.html`, `kirian-skins.ja.html`),
so no link that has ever been shared moves. `<html lang>`, `<link rel="alternate">`
and a flag switcher next to the back-link come out of the same data.

**Each app drives its own translations.** An app opts in with `langs: cs,ja` in
its front-matter and keeps everything it needs under `apps/<slug>/i18n/`; an app
that declares nothing is built in Czech only and its output stays byte-identical.
Adding a language to one app therefore never touches another.

Three layers, merged per app in this order (later wins):

1. `templates/i18n/cs.tsv` — the base catalog. Every key the chrome uses lives here.
2. `templates/i18n/<lang>.tsv` — the same keys in that language. Anything it omits
   falls back to Czech, key by key, so a half-finished catalog still renders.
3. `apps/<slug>/i18n/<lang>.tsv` — the app's own file. It can reword any chrome key
   for itself, and it carries the gallery translations.

`apps/<slug>/i18n/<lang>.md` is the translated `meta.md`: front-matter for the
fields that change (`tagline`) and a body that replaces the description.

Gallery manifests are translated by data, not by markup: rows keyed
`label.<source string>` rewrite the human-readable columns of `skins.tsv` and
`assets.tsv` into `dist/skins/<slug>/{skins,assets}.<lang>.tsv` at build time.
Keying on the source string (not a row number) is what lets `make import-skins`
regenerate the gallery from the game repo without invalidating a translation;
a cell with no row passes through, which is what proper names — `Falcon X`,
`Bouncer`, the skin titles — want anyway.

Czech grammar that a format string cannot express stays in code: `plural_ship`
picks loď/lodě/lodí, and `vessels_label` hands every other language a plain
format (`skins.vessels`) instead.

**45 languages** (Apple's set without regional variants, BCP 47 codes: `nb`, `pt-PT`,
`zh-Hans`, `zh-Hant`), each with a **complete** catalog (every `cs.tsv` key), a flag and a
`lang_name`. A new chrome key goes into all 45 catalogs; translator notes (`%s`, RTL arrows)
are in the header of `cs.tsv`. `ar he ur` are RTL (`lang_rtl` → `<html dir="rtl">`;
`store.css` uses logical properties, keep it that way). Fonts are system-only, per-script
fallbacks via `:lang()` in `store.css`. `index.html` stays Czech; every language any app
ships gets `index.<lang>.html` (translated card where the app has the language, Czech card
otherwise) with a lang menu — the Czech index differs from before only by that menu and the
alternates. Lightbox labels ride on `data-lb-*` of the footer (none on Czech pages).
Past three languages the flag row turns into `<details class="lang-menu">`. The visuals and
fleets subpages and `apps/<slug>/pages/` are still base-language only (headings in the
scripts); their teasers on the app page are translated. Details: README „Jazyky“.
