# App catalog

Per-app notes: store links, release quirks, where the content comes from.

## App Catalog

Current apps (in `apps/`): audioscanner, beenhere (Been Here), behanek (Běhánek), djfy, doggiowars, doodlebugs,
elftonplayer (Elfton Player, repo `ol1nplay`), hajanek (Hajánek), handwrittenstickers, immunorun (repo `BioDefenseRogue`), kindlify, kirian (Kiran), kittens,
lexify, mangaprompts, memeshorts, mirrorbooth, mutants, ol1nllm, orbitrontactics,
poetrystream, puff, storyteller, swypekids, terrareality, ugcfactory, ugcmarket (Ol1n Market), webtoon,
chess4princesses (Šachové království), rattleramp (repo `ChrestysSkatepark`),
fotballsimulator (Fotball Simulator), kaceny (Kačeny; default branch `master`).

Five were added on 2026-10-04 for their artwork rather than for a build, and their pages
lean on the visuals gallery. None has a real app screenshot: what sits in
`screenshots/raw/desktop/sheets/` are the projects' own mockups and review contact sheets
(the ones `$DEV_ROOT/review-hub.html` links to), captured from the sheet HTML with
`scripts/shoot.mjs` at 1440×900 @2x. Each app's `i18n/cs.tsv` therefore renames
`sec.shots_desktop` to say so ("Makety a revizní archy"), instead of passing a sheet off as
a desktop build. The memeshorts sheet is shot only as far down as the flux-schnell rows —
the anime rows below them are the unverified-licence line — and its two Wan 2.2 clips are
under `raw/mobile/clips/`. Their icons are derived from their
own art (the Flutter projects still carry the default logo). **kittens**, **mutants** and
**handwrittenstickers** have no release yet. **immunorun** links a pre-release APK
(`v1.0.0`). **memeshorts** is a Go CLI with no GitHub repo at all — `repo:` is empty, so
`make fetch` skips it, and its `i18n/cs.tsv` rewords `dl.empty` so the page does not
promise builds.

**ol1nllm** is invitation only: every build carries a Cloudflare Access service
token, so its releases hold no files (Ol1nLLM PR #59) and iOS/Android go out through
TestFlight and Firebase invites. `desktop:` is empty and `i18n/<lang>.tsv` rewords
`dl.empty` in every language; the GitHub link stays (the repo is public, the token is not
in it).

**storyteller** was private until 2026-09-26 and is now public, so `make fetch` resolves it
like any other app. Its default branch is **`master`**, not `main` — as is fotballsimulator's, the only two in the
catalog.

While it was private it **took the whole deploy down**, and the trap is worth keeping in mind
before adding another private repo here: `gh api` answers a 404 with an error *object* on
stdout and a non-zero exit that `|| true` hides. The object is neither empty nor `[]`, so the
emptiness check waved it through and the `jq` after it died with `Cannot index string with
string "draft"` — exit 5, `make: *** [fetch] Error 5`, Pages never published (run 100,
2026-09-26). `fetch_app` now checks that the response `type` is `array` before touching it, so
an unreadable repo costs that app its download buttons and nothing more.

**ugcfactory** got its first public release only on 2026-09-25 (`v1.0.0`); until then it had
no release workflow at all (just `firebase-android.yml` + `testflight.yml`) and its page
showed "Buildy brzy k dispozici" while advertising `desktop: macos`. Its `release-macos.yml`
is the odd one out: the Flutter root is **`app/`**, not the repo root, it pins no Flutter
version (matching that repo's other workflows), and it has `workflow_dispatch` so the build
can be smoke-tested without burning a tag. It ships macOS only — `app/windows` and
`app/linux` do not exist.

**Store links.** `appstore:` / `playstore:` in the front-matter render after the download
buttons as home-screen style tiles (`assets/img/store-{appstore,playstore}.svg`, hand-drawn
look-alikes, name underneath, `.store-icon` in `store.css`); `testflight:` / `contentdb:`
stay plain secondary buttons. **kirian**, **poetrystream** and **puff** are on
Google Play, so their Android APK is not offered any more: kirian and poetrystream set
`artifacts: macos,windows,linux`, puff (mobile only) sets `artifacts: none`, which makes
`make fetch` write no manifest at all. An app with store links and no manifest shows
just the store buttons — `downloads_html` withholds "Buildy brzy k dispozici" when
`store_links_html` has anything. App Store ids (seller "Olin Vorechovsky"): kirian
6774868017, poetrystream 6767237393 ("Poesie Simona Clinae"), puff 6808586613, lexify
6784602743, mirrorbooth 6767824892 ("Mirror Booth Photos"); the `apps.apple.com/app/id…`
form is used so Apple picks the visitor's storefront. Play ids: `com.ab.kiran`,
`com.ab.PoetryStreamSC`, `com.ol1n.puff` (developer "A+B"). Toonfork (`webtoon`) is on Play as `com.ol1n.webtoon` since 2026-11-12
and sets `artifacts: macos`, so the APK button is gone. Lexify and MirrorBooth are
not on Play (2026-10-19), so they keep the APK button.

All are standalone binaries except **doggiowars**, which runs inside Luanti (ex-Minetest) —
no per-platform executable, so it sets `artifacts: mod` (a platform-agnostic `.zip` bucket in
`fetch-artifacts.sh`, opt-in because that pattern would otherwise match the Flutter apps'
macOS/Windows zips) and can carry a `contentdb:` link.

As of `DoggioWars@v2.0.0` it is a **standalone game, not a mod**: it installs into `games/`
rather than `mods/` and no longer needs Minetest Game. Install instructions must say so.

The unpacked folder has to be named **`doggiowars_game`**. For a game the folder name is the
game id, except Luanti strips a `_game` suffix — the same reason `minetest_game` has the id
`minetest` — so the id stays `doggiowars` and existing worlds keep loading.

There is exactly **one** ContentDB package, `lioilsources/doggiowars_game`, titled
"DoggioWars" and typed `game` (approved 2026-08-14; before that its page 403'd as a draft).
The old mod package was renamed into it rather than left standing beside it, so
`/packages/lioilsources/doggiowars/` is a 302 to the game and no rival "Doggio Wars" package
exists — the author's profile and `api/packages/?author=lioilsources` both list this one and
nothing else.

Since v2.4.0 the repo has a **release workflow** (`.github/workflows/release.yml`, first run
2026-09-25): pushing an **annotated** `v*` tag ships to both places, and the tag's message
becomes the release description on each. `git tag -a v2.4.0 -m "…" && git push origin v2.4.0`
is the whole procedure. What it does, and what still has to be done by hand:

1. **GitHub Release** (what the store links to): the workflow runs
   `git archive --format=zip --prefix=doggiowars_game/ <tag> -o doggiowars-<tag>.zip` and
   attaches it. The `doggiowars_game/` prefix is what makes the folder name
   unmistakable on unpack. `git archive` honours `.gitattributes` `export-ignore`, which is
   how `Prompts/` and `play.sh` stay out; `roblox/` deliberately ships.
2. **ContentDB** is only published automatically once the repo has a `CONTENTDB_TOKEN`
   secret — it has **none today**, so that step exits 0 with a warning and the game reaches
   Luanti players a day late over the daily poll below (that is what happened to v2.4.0).
   Set it with `gh secret set CONTENTDB_TOKEN -R lioilsources/DoggioWars` (ContentDB →
   Settings → API Tokens) to make it immediate.
   ContentDB builds its own zip from git. Its git update detection polls **once a day**
   (no webhook on the repo), so a fresh tag shows up there a day late; the UI's Create
   Release, or `POST /api/packages/lioilsources/doggiowars_game/releases/new/` with
   `{"method":"git","title":"vX.Y.Z","ref":"vX.Y.Z"}` and a Bearer token, publishes it at
   once. The POST returns immediately with `commit: null` and `size: 0` plus a `task` URL —
   the import runs asynchronously, so read the release back from
   `api/packages/.../releases/` to confirm the commit and size landed.

**terrareality** (added 2026-10-16) is not a store app but a web platform plus a Flutter app,
both unreleased: `repo:` is empty (`lioilsources/terrareality` has no releases, so `make fetch` skips it), `desktop: Web`
only produces the badge, and its `i18n/{cs,en}.tsv` reword `sec.downloads` / `dl.empty` so the page
says it is not public yet. Its screenshots (`raw/desktop/web`, `raw/mobile/web`, numbered in the order
of the description) were taken with Playwright from a local dev stack of the `m8-launch` branch
against a separate throwaway database: fictional names, `example.com` e-mails, offline (mock) AI, and
flat photos from Unsplash (Unsplash License) uploaded as listing photos. The phone shots are the web
at 390 px, not the Flutter app. The page text is sourced from that repo's `PLAN.md`,
`docs/04-user-testing.md` and `docs/runbooks/launch.md`; refresh the status section when the pilot
moves.

**predavka** (Předávka, added 2026-10-18) is a client pitch for a kitchen/floor coordination
prototype (repo `lioilsources/Kitchen`, public, no releases). `repo:` is empty on purpose so the
page carries no GitHub link, and `i18n/cs.tsv` rewords `sec.downloads` / `dl.empty` (installed on
site, not downloadable). Its screenshots are the real displays — the built-in web pages and the
Flutter app's web build — fed by `go run ./tools/scenarios -serve :8093 -scenario rush -app
apps/display/build/web` in that repo (scenarios `empty`, `few`, `rush`, clock frozen), shot with
`scripts/shoot.mjs` at 1280×800 @2x and 402×874 @3x. `pages/features.html` ("Jak to funguje")
borrows them by path; its status section lists what the pilot still has to verify — update it
when the pilot happens.

**webtoon** (added 2026-10-18) is an unreleased project (Go backend + Flutter app + Python
prototype in the public repo `lioilsources/Webtoon`, no releases), so `repo:` is empty and
`desktop: Web` only produces the badge; `i18n/cs.tsv` rewords downloads and the empty desktop
section (the app is laid out for phone width — a desktop shot would just be stretched cards).
Its 20 phone shots (`raw/mobile/web/NN-*.png`, numbered in the order of the editor subpage) were
taken with `scripts/shoot.mjs` from the Flutter **web** build at 402 px @3x against a local
backend with the five kids worlds imported as episode 1; touch `swipe` steps scroll the Flutter
reader (its canvas ignores `window.scrollBy`). Taps are CSS coordinates read off a first shot —
a layout change in the app moves them. Episode 2 in the shots has only a script (ComfyUI was
off), and the page says so.

The visuals come from the Webtoon checkout's gitignored `out/` (see `import_webtoon` for what is
left out and why — no named-artist preset, no skin-tight sheet, no IP-Adapter tests).
`visuals/stripy/<story>.webp` are composed strips that are **not in `assets.tsv`**: the
`stripy` and `gamebook` subpages read them by path, and they reach `dist/` only because the
build copies the whole `visuals/` folder. Three subpages: `stripy` (the strips in `<details>`),
`gamebook` (episode 1 of Záhada v lese plus, under each choice, the episode-2 storyboard the
LLM wrote — verbatim, including its mistakes) and `editor` (screen-by-screen walkthrough,
`.feat-shots` borrowing `screenshots/webtoon/mobile/*.png` by path). Their CSS is the `.wt-*`
block in `store.css`; no script. When episode 2 gets panels, the gamebook branches can show
them instead of the script.

**chess4princesses**, **rattleramp** and **fotballsimulator** (added 2026-10-25) are early
alphas. Chess has no release yet (`i18n/cs.tsv` rewords downloads); RattleRamp ships
`v0.x-alpha` pre-releases with a macOS zip + APK, Fotball an APK (both also push to TestFlight,
which the page does not link). Fotball's `master` default branch is the second one in the
catalog. Fotball still carries the default Flutter icon, so it gets the letter tile.
RattleRamp is a landscape tablet game for the U Chřestýše bar kiosk, so its shots sit under
`raw/desktop/tablet/` and the empty mobile section is reworded. The Fotball repo is a Godot
project; the store builds and screenshots are of its Flutter port in `flutter_app/`.

**ugcmarket** (Ol1n Market, added 2026-11-16) is the web store `market.ol1n.com` that sells the
models UGC Factory makes. Source repo `lioilsources/RobloxMarket` (not on GitHub yet), so `repo:` is
empty; `desktop: Web` only produces the badge and `i18n/<lang>.tsv` rewords `sec.downloads` /
`dl.empty` (bought on the web, nothing to install). The public name is "Ol1n Market": Roblox brand
rules forbid "Roblox" in a store name, so the slug and the text say "compatible with Roblox Studio"
and keep the not-affiliated sentence. The icon was generated on SPARK (Qwen-Image, 2026-11-16).
A customer guide (`pages/guide.html`) will be exported from that repo's `web/src/lib/guide/`;
do not hand-edit it here.

## Elfton Player

**elftonplayer** (Elfton Player, added 2026-10-11) lives in the repo `lioilsources/ol1nplay` and
keeps that code name everywhere but on screen. It is a Windows program: `desktop: windows`, and
its release workflow ships one zip (Flutter UI + Go engine + FFmpeg DLLs) plus the Android remote
as an APK. The screenshots sit under `raw/desktop/macos/` because they come from the macOS
development build (`flutter drive` against a demo engine — `test_driver/shots_app_test.dart` in
that repo), and the description says so. There is no phone screenshot yet, and as of `v0.1.0` the
ASIO/WASAPI output has never played on a real DAC — the page says that too; drop the sentence
once it has.
