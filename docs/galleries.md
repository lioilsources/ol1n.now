# Galleries and app subpages

## Screenshot lightbox and the footer logo

Every screenshot in a `.shots` gallery or a `.feat-shots` strip opens in a lightbox
(`store.js`): wheel zooms towards the pointer, drag pans, two fingers pinch, `+` `-` `0`
and Esc work, and there are on-screen buttons. It needs no markup — the script binds to
the `<img>`s and derives the picture to show from the gallery URL
(`screenshots/<slug>/<kind>/x.png` -> `screenshots/<slug>/<kind>/full/x.png`), falling
back to the gallery copy if there is no `full/` one.

So `make screenshots` writes **two** sizes per image: the gallery copy (capped 800x1500
mobile / 1920x1080 desktop, sized for the strip) and `full/` (capped 2600x2600, i.e. the
raw file for nearly everything). The exact store-upload sizes (Play, App Store, Mac App
Store) go to `store-screenshots/<slug>/<target>/` outside `dist/` (gitignored, never
published; CI skips them with `STORE_SHOTS=0`). Inside `dist/` they had grown to 358 MB of
a 730 MB site (2026-11-07) against GitHub Pages' 1 GB limit, and Pages deploys started
timing out. Nothing uploads them to the stores; that is manual.
A raw screenshot smaller than its gallery cap gains nothing from the lightbox; ol1nllm's
are rendered at 3x (1170x2532) for that reason.

The Ananas&Bananas logo is a plain `<img class="footer-logo">` in `templates/foot.html`.
Until 2026-10-13 it was a fixed full-width backdrop with a parallax transform, sliding
under the text at its own speed — long descriptions were unreadable wherever the two
overlapped. Do not bring a moving or fixed layer back behind prose.

## Skins gallery

Only `kirian` has one today. Source of truth is the game repo `lioilsources/Kiran`
(`SKINS.md`, `lib/services/skin_registry.dart`, `assets/skins/<id>/`);
`scripts/import-skins.sh` transcodes it to WebP + AAC (`.ogg` is unplayable in
Safari/iOS), buckets sprites into categories by filename, and writes the two TSV
manifests. `make build` only copies the result.

`build-site.sh` gates the whole feature on `dist/skins/<slug>/skins.tsv` existing,
so apps without skins render byte-identically to before. It emits a teaser section
on `<slug>.html` and a full explorer at `<slug>-skins.html` (skin picker + one panel
per skin, categories: preview, vessels, enemies, boss, asteroids, fx, ui, backgrounds,
sfx, music). A category with no manifest rows emits nothing at all — that is how the
`default` skin's empty `backgrounds/` is handled.

## Visuals gallery

The flat one: categorised artwork, no entities, no audio. `doodlebugs`, `kittens`,
`mutants`, `memeshorts`, `immunorun`, `handwrittenstickers`, `swypekids`, `webtoon` and `kaceny` have one.
`scripts/import-visuals.sh <slug>` holds one `import_<slug>` function per app — where
the art lives in that app's checkout, how it is bucketed, the Czech titles — and
`make build` only copies the result. Gated on `dist/visuals/<slug>/cats.tsv`; emits a
teaser on `<slug>.html` (the head of the **first** category) and `<slug>-visuals.html`.

Nothing in `build-site.sh` knows an app by name. The layout of a category is the
fourth column of `cats.tsv`, and the sentence above the teaser is `visuals:` in the
app's `meta.md` (`{n}` = number of pieces). Adding a gallery is a function in the
import script plus that one front-matter line.

What deliberately stays out of a gallery, per app:

- **memeshorts** — only the flux-schnell line of the character library (Apache-2.0).
  The anime line is Animagine, whose licence that repo's graphics plan still lists as
  unverified. `data/originals` (the meme templates) never ships. Two of Taro's picks
  (`proud`, `angry`) are skipped because the jacket came out with a sportswear wordmark.
- **swypekids** — the one gallery that mixes shipped art (Pandička's ten poses, the 294
  stickers from `assets/emoji`) with review rounds (`drafts/stickers`: the four mascot
  candidates, the first-round proposals). A sticker's caption is the emoji it replaced,
  decoded from the code point in its file name. The import re-encodes ~400 images and
  takes about six minutes. Its screenshots (14 phone, 5 desktop, numbered so the
  gallery follows the app: map, game, Zvěřinec, pet world, sentences, book, guides,
  parent corner, onboarding) are not taken by hand: `tool/store_screenshots.sh <dir>`
  in the SwypeKids repo runs the real app with a seeded profile and writes
  `phone-*.png` / `desktop-*.png`; drop the prefix and copy them into
  `raw/mobile/ios` and `raw/desktop/macos`.
- **immunorun** — the G0 batch is a style test, not production art, and the page says so.
- **kaceny** — one skin per pack, not all 112: each tile is an animated WebP composed
  by the import (the pack's background with the skin's Wan 2.2 wing-beat frames on it),
  so only skins that have frames (`assets/skins/duck/<id>_N.png`) can be shown. The
  target ideas are read from the game repo's git-ignored `tool/skins/out/target/`, so
  a fresh checkout drops that category until `tool/skins/generate.py` has run. Phone
  screenshots and clips come from `tool/store_screenshots.sh <dir>` in the Kaceny repo.
- **handwrittenstickers** — the stickers are composed by the import script from the
  app's glyph PNGs, in capitals only: without the app's baseline metrics, capitals are
  what bottom-aligns correctly.

The default checkout paths are the local folder names, three of which differ from the
GitHub repo: `KittenCards` (Kittens), `MutantCards` (Mutants), `HandWritenStickers`
(HandWrittenStickers), plus `BioDefenseRogue` for ImmunoRun.

## Fleets gallery

Only `orbitrontactics` has one. Third gallery shape, after skins (whole themes)
and visuals (flat artwork): ten interchangeable sprite sets over one shared game.
So the per-fleet panels are followed by a section that belongs to no fleet —
maneuvers, battle sounds and unit themes.

`build-site.sh` gates it on `dist/fleets/<slug>/fleets.tsv`, exactly like skins,
and emits a teaser on `<slug>.html` plus `<slug>-fleets.html`. That subpage
reuses the skins markup (`.skins`, `.skin-picker`, `.skin-chip[data-skin]`,
`[data-audio]`), so fleet switching and the single audio channel come from the
code that already ran on Kirian; `show()` additionally fires a `gallery:select`
event, which is how the maneuver canvases below the panels know which fleet to
fly.

The maneuvers are the one dynamic part. `tools/dump_maneuvers.dart` **in the game
repo** samples every maneuver through `Maneuver.poseAt` and writes both a TSV
(what the page prints — bash must not need a JSON parser) and a JSON of flight
paths. `store.js` only interpolates between samples and paints: the easing, the
anchors and the per-ship scaling are never reimplemented here, because a second
implementation drifts from the engine the first time a curve changes.

## App subpages (OrbitronTactics rules)

The app is **named Archion on the page** since 2026-10-20; the slug, the URLs and the
repo (`lioilsources/OrbitronTactics`) keep the old name, as does this file. The former
"Pocta originálu" section (Orbitron: Space Academy on Steam) was replaced by the single
line "Ripped friendship with @DK" on request.

`apps/<slug>/pages/<name>.html` is a hand-written body fragment that becomes
`dist/<slug>-<name>.html`, with a link section on the app page taken from its
`<!-- title: -->` and `<!-- intro: -->` header comments. A translation is
`pages/<name>.<lang>.html` → `dist/<slug>-<name>.<lang>.html`; the page then gets the
usual language menu and the app page links it in that language. Languages without
a translation get no link (the base page stays). `apps/ugcmarket/pages/guide*.html`
are generated by `RobloxMarket/bin/export-olinnow` in all 45 languages: do not edit them here. Today that is
`orbitrontactics-rules.html`: win conditions, every piece's moves, the realtime arena,
shield, maneuvers and the tactical motifs.

Two placeholders keep diagrams out of the prose. `__BOARD:<id>__` draws an 8×8 board
from `pages/boards.tsv` (`board row col mark piece color`), and `__GESTURE:<dots>__`
draws a maneuver gesture with the fleets page's `gesture_svg`. `boards.tsv` is **not
written by hand**: `scripts/dump_orbitron_rules.dart` asks the game's own validators
which squares each piece reaches, and `make import-fleets` reruns it (the script lives
here but runs with `dart --packages=<game>/.dart_tool/package_config.json`). A rule
change in the game redraws the diagrams; the prose next to them has to be re-read by a
person.

What is still hand-copied from the game and can drift: the unit stats table
(`unit_base_stats.dart`, projectile speeds in `battle_engine.dart`), shield and energy
numbers, upgrade multipliers (`upgrade_engine.dart`), and the maneuver names, gestures
and energy ranges (cross-check against `fleets/maneuvers.tsv`). Two things the game's
README gets wrong and the page gets right, per the code: power-field victory needs
**all five** fields, not a majority; and the cloud multiplayer captures without a
battle — only single player, hot-seat and local Wi-Fi enter the arena.

The page must not use the `.skins` class (see the business page note on `show()`):
its table of contents relies on plain in-page anchors.

`ol1nllm-features.html` is the second one: a feature-by-feature walkthrough (chat roles,
Knihovník, Právník, the contract agent, Image Studio, the style map, video and 3D, Story
Studio, Music Studio, history). It uses no placeholders. Its `.feat` blocks put a sideways-scrolling
strip of phone screenshots (`.feat-shots`) above the prose and borrow the store's
gallery copies by path (`screenshots/ol1nllm/mobile/<name>.png`), so renaming a raw
file breaks an `<img>` here without failing the build — grep the page after renaming.
The numbers in its prose (19 models, 80+ styles, 17 hair colours, 10 stories, 14
contract templates, 9 dances) are hand-copied from the app's registries and the live
catalogs as of app 1.28.1 and drift with them; the style map section was written against
1.31.0 (three playback speeds, „přes dvacet“ = 22 axes in a pack).

## Decks gallery

Only `lexify` has one. Fourth gallery shape: a catalog of flashcard decks, each
drawn in two art styles (always `photo` plus one illustrated look — ink, pastel or
watercolor). Every deck gets a sample of **ten different cards**: the first five in
its default style, the next five in the other one, so a visitor sees both looks
without the same word twice (cards are deduplicated on their Czech label — weather
has two keys that are both "bouřka").

Source of truth is the app repo `lioilsources/DuolingoCards`: the published packs
`docs/decks/<slug>/deck.json` + `images/<style>/*.webp`, `assets/catalog.json` for
which decks are free (they lead the picker, in the catalog's order) and
`lib/l10n/app_cs.arb` for the style names the app itself shows. `import-decks.sh`
downsizes the samples to 384 px WebP; `make build` only copies the result.

Gated on `dist/decks/<slug>/decks.tsv`. Unlike the other galleries it has **no
subpage** — the picker and panels sit right on `lexify.html` as a "Balíčky" section.
It reuses the skins markup (`.skins`, `.skin-chip[data-skin]`, `.skin-panel`), so
switching and `#<deck>` deep links come from `store.js` for free; that works only
because it is the one `.skins` root on the page. Chrome strings are Czech in the
script, like visuals and fleets.

The bold word on a card is in the page's language; under it sits a translation,
switchable between the other languages in the header of **`apps/lexify/words.tsv`**
(English first — the no-JS default — or Czech on the English page; `store.js`
remembers the choice in localStorage). On the translated pages the section's chrome
comes from the `decks.*` catalog keys and the deck titles and style names from
`deck.<id>` / `style.<id>` / `style.<id>.desc` in `apps/lexify/i18n/<lang>.tsv`; the
Czech page keeps taking them from the import. The cards are rendered by one awk pass
per style, not per-word `esc` subshells — twelve languages of those took minutes. That
file is **hand-checked and deliberately not imported**: the packs' own labels are
machine output and wrong in exactly the way a store page must not show (ja calls
the eagle an owl, ko the owl a lion, vi the penguin an ostrich; pl/uk are empty and
it exists for two decks). It sits outside `decks/` because `import-decks.sh` wipes
that folder; the import warns about any sampled card that has no row in it, so a
re-import that picks new cards tells you what to translate. A new language is a new
column plus `assets/img/flag-<lang>.svg` and a `lang_name` entry in `i18n.sh`.
