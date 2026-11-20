# Screenshots

## WebP on the site

Screenshots on the site are **WebP** (gallery + `full/`, q82): PNG made the Pages
artifact ~360 MB and deploys timed out. Pages may keep linking a screenshot by
its raw `.png` name; `build-site.sh` (`webp_links`) points the link at the
`.webp` copy.

## Screenshots from a throwaway web build

All three were shot with `scripts/shoot.mjs` from a **Flutter web build of a copy** of each
repo (`rsync` to a scratch dir, `flutter create --platforms web .`, `flutter build web`, serve,
shoot) — none of the three repos has a web target, and nothing was committed to them. Chess
at 402×874 @3x with `"locale": "cs-CZ"`, progress seeded into `localStorage`
(`flutter.progress_v1`, modules 0–1 done) and routes opened by hash (`#/lesson/m02_l04`);
RattleRamp at 1194×834 @2x with `"motion": true` (with reduced motion Flutter finishes the
avatar picker's 5 s countdown instantly); Fotball at 402×874 @3x.

Two of the copies needed hand edits that exist only in that scratch copy, re-do them to
refresh the shots:

- **fotball** does not compile for the web: its PCG32 serve RNG uses 64-bit integer
  literals and `nextInt(1 << 32)` (0 in JS). The copy swaps `Pcg32` for `dart:math` Random.
  It also gets a `?seed=&stop=window|freeze|flight|result&ox=&oy=&curve=&ft=` hook in
  `game_screen.dart` that draws a synthetic swipe and releases it at the ideal moment, then
  stops the ticker — a real-time kick cannot be timed over DevTools. Physics, contact model
  and rendering are the app's own; results vary a few ms run to run, so take several.
- **rattleramp** gets `?bot=<seconds>`, which lets the attract loop's own `_botTick` play a
  real (non-autopilot) ride with the HUD for that long — again because a release has to land
  within ±tens of ms of the coping.

## Screenshots without a device

Two mobile apps have no screenshots taken on a phone; theirs are rendered by a
**golden test against the app's own widgets** and copied here, which is why they
are in Czech and match the UI as it actually was:

    flutter test test/screenshots_test.dart --update-goldens

`storyteller` ships that harness itself (`app/test/screenshots_test.dart`, tagged
`screenshots` so CI skips it — goldens compare pixels, and a runner's Skia or font
version reds the build for a rendering difference that is not a regression).
`been-here`'s was written the same way against its existing fakes
(`FakePhotoLibrary`, `FakeLocationService`, an in-memory drift db) but **is not
committed to that repo yet**, so regenerating its four shots means writing it
again — worth upstreaming the next time that repo is open.

Three things make such a harness work where a naive golden test gives black boxes
and English text: real fonts have to be loaded by hand out of
`$FLUTTER_ROOT/bin/cache/artifacts/material_fonts`, the locale has to be forced to
`cs` (the test platform reports en-US), and `WidgetsApp.debugAllowBannerOverride =
false` gets the red DEBUG ribbon off the top-right corner.

Two known gaps, both wanting a real phone rather than more code:

- **been-here's photo tiles are blank.** `FakePhotoLibrary.thumbnail()` returns a
  2×2 placeholder PNG, so the Here screen shows its visit timeline over empty
  tiles. The layout is real; the photos are not.
- **audioscanner has no screenshots at all.** Its screens are fed by ARKit and the
  microphone, and every one of them shows *measurements*. Rendering them in a test
  would mean inventing a room's frequency response — the one thing a measurement
  tool must not ship on its store page. These have to come off a phone in a real
  room.

**handwrittenstickers** is shot the same way (5 files in `raw/mobile/android/`,
`stickers_N_<what>.png`, 402×874 @3x). Its harness is committed in that repo —
`handwritten_stickers/test/screenshots_test.dart` — and writes PNGs instead of goldens:
`SCREENSHOT_DIR=<dir> flutter test test/screenshots_test.dart`, then copy them over. It
shows the editor as a release build does (sheets marked `"bundle": false` hidden).

**ol1nllm** is the third app shot this way (31 files in `raw/mobile/android/`, named
`NN-<area>-<what>.png`; the one macOS shot, `llm_chat.png`, is from a real build). Its harness
*is* committed — `test/screenshots_test.dart` in that repo — and the answers and
catalogs on screen are captures, not inventions: the fixtures say which. The four
`5N-mapa-*` shots show a real style-map pack built from the same lab run as the Image
Studio shots (602 pictures of the dancer), with the facets a vision model gave it. To refresh:
run it there with `--update-goldens` and copy `test/screenshots/*.png` over. Two
features have no shot because nothing real was available to show: a Knihovník answer
(the only capture is a 90-character fragment) and the Story Studio keyframe review
(needs keyframes of a real job).

**hajanek** is shot the same way (8 files in `raw/mobile/ios/`, `NN-<screen>.png`, 390×844 @3x).
Its harness is `app/test/screenshots_test.dart` in the Hajanek repo and writes PNGs, skipped
unless `SCREENSHOT_DIR` is set: `SCREENSHOT_DIR=<dir> flutter test test/screenshots_test.dart`.
The catalog, mixer and voice screens are the bundled catalog; the player state and the two
parent voices are fixtures. Its page lists all ten tales, but as of 2026-10-21 only Červená
Karkulka and Zlatovláska are `gold` — the other eight are `draft` and a release build hides
them; the page says so, drop that sentence once they are reviewed. `icon.png` is
`app/assets/icon/icon.png` from that repo at 512 px. Its first release had not been tagged
yet: `release-android.yml` there names the APK `hajanek-<tag>.apk`, and the download
button appears on the next `make fetch`.

**behanek** too (8 files in `raw/mobile/ios/`, 440×956 @3x = the App Store 6.9″ size), harness
`test/screenshots_test.dart` in the behanek repo, same `SCREENSHOT_DIR` switch. Its runs are
generated, not recorded: three Prague loops in `test/fixtures/routes/*.gpx` (walking paths from
the OSRM foot router, heights from Open-Meteo) are run at a fixed pace curve into nineteen runs
over the last three months, so the dates move with the day the harness runs (the newest run
is the 26th, so before the 27th the harness treats the previous month as current). The map
tiles are fetched live during the test; the shots are made with
`--dart-define=MAPY_API_KEY=...` (Mapy.com tiles, as in the store build) — without it the app
falls back to OpenTopoMap, which it only uses in development. The monthly report PNG has no
shot: it draws with a bare `TextPainter`, which the test environment renders as boxes.
`icon.png` is `assets/icon/icon.png` from that repo at 512 px. Release v0.1.0 (prerelease)
carries the APK. The app ships 15 languages (`langs:` in its meta; `i18n/<lang>.md` are
translations of the description). The store gallery shows the Czech shots only — the
harness renders every language (`SCREENSHOT_LANG`), and those go to App Store Connect, but
the store has no per-language gallery. `es` and `nl` got their chrome catalogs for it.
The privacy policy is on GitHub Pages: `https://lioilsources.github.io/behanek/privacy.html`.

**astro** too (11 files in `raw/mobile/ios/`, `NN-<what>.png`, 393×852 @3x). Harness
`app/test/screens/screens_test.dart` in the Astro repo (Astro PR #17 until merged), tagged `screens` and skipped by default:
`cd app && flutter test test/screens --run-skipped` writes `run/screens/*.png`, copy them over.
Fictional profiles (Jana, Petr); transits, hours and the election search start on the day the
harness runs, so those shots move with the date. The horary shot takes the first moment of
19. 11. 2026 that gives a "yes" with a timing; the catalog check is the bundled people catalog.

`storyteller` and `audioscanner` also have **no app icon** yet — both still carry the
default Flutter logo, which is not worth shipping, so they fall back to the store's
letter tile on purpose.

**smpl16** is shot the same way (5 files in `raw/mobile/android/`, 402×874 @3x), harness
`smpl16/test/screenshots_test.dart` in the Sample16 repo; it needs a monospace font dir as well —
see `docs/apps.md`.
