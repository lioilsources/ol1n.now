# ol1n.now

Statický "app store" pro distribuci vlastních aplikací (Windows / macOS / Linux + mobil),
alternativa Google Play / Apple Store. Hostováno na **GitHub Pages** s custom doménou
`olin.now` (CNAME); HTTPS dodává Cloudflare (proxied, SSL mode Full). Žádný backend.
Repo se jmenuje `ol1n.now`, doména je `olin.now`.

## Jak to funguje

1. **`apps/<slug>/meta.md`** je zdroj pravdy o každé aplikaci — YAML front-matter
   (název, repo, platformy, store odkazy) + markdown popis.
2. **`make fetch`** zjistí nejnovější GitHub release artefakty každé appky
   (per platforma napříč tagy) a zapíše manifest `dist/downloads/<slug>.tsv`.
   Binárky se **nehostují** — download tlačítka odkazují přímo na release URL
   (repos jsou public; obchází to 100 MB/soubor a ~1 GB limit Pages).
3. **`make screenshots`** vezme raw screenshoty z `apps/<slug>/screenshots/raw/`
   a resizne je na přesné rozměry vyžadované obchody do `dist/screenshots/<slug>/`.
4. **`make build`** vygeneruje statický web do `dist/`.
5. **`make deploy`** publikuje `dist/` na branch `gh-pages` (GitHub Pages slouží
   `olin.now` na rootu; `CNAME` soubor v buildu drží custom doménu).

`make all` = fetch + screenshots + build. `make serve` spustí lokální náhled.

### Doména / hosting
- Cloudflare zóna `olin.now`: `CNAME @ → lioilsources.github.io` (proxied), SSL mode **Full (strict)**.
- GitHub repo Settings → Pages → Custom domain: `olin.now` (drženo `CNAME` souborem).

## Přidání aplikace

Vytvoř `apps/<slug>/meta.md` (zkopíruj existující), vyplň front-matter a popis.
Volitelně přidej `apps/<slug>/icon.png` (čtvercová ikona). Hotovo — build ji objeví sám.

### Front-matter pole

| Pole | Význam |
|------|--------|
| `slug` | URL slug (= jméno adresáře) |
| `name` | Zobrazované jméno |
| `repo` | `owner/repo` na GitHubu (odkud se tahají release artefakty) |
| `tagline` | Krátký popisek na kartě |
| `order` | Pořadí na úvodní stránce (číslo) |
| `featured` | `true` = badge „Doporučeno" |
| `desktop` | CSV platforem: `macos,windows,linux` |
| `mobile` | CSV platforem: `android,ios` |
| `artifacts` | CSV bucketů pro `make fetch`; default `macos,windows,linux,android`. `mod` = platformově neutrální `.zip` (Luanti mod) |
| `appstore` / `playstore` / `testflight` / `contentdb` | URL na obchody (volitelné) |
| `langs` | CSV jazyků aplikace, např. `cs,ja`; default `cs` (viz [Jazyky](#jazyky)) |

## Jazyky

Základní jazyk je čeština a drží si holé URL (`kirian.html`). Každý další jazyk
dostane vedle něj stránku s příponou (`kirian.ja.html`, `kirian-skins.ja.html`),
takže žádný dosud sdílený odkaz se nehne. Z téhož zdroje se generuje `<html lang>`,
`<link rel="alternate">` i přepínač s vlaječkami vedle zpětného odkazu.

**Překlady si řídí každá aplikace sama.** Přihlásí se přes `langs: cs,ja` ve
front-matteru a všechno si drží ve svém `apps/<slug>/i18n/`. Aplikace, která nic
nedeklaruje, se staví jen česky a její výstup zůstává bajt po bajtu stejný —
přidání jazyka jedné aplikaci se ostatních vůbec nedotkne.

Tři vrstvy, slévají se v tomhle pořadí (pozdější vyhrává):

| Soubor | Co v něm je |
|--------|-------------|
| `templates/i18n/cs.tsv` | základní katalog — všechny klíče, které web používá |
| `templates/i18n/<lang>.tsv` | tytéž klíče v daném jazyce; co chybí, spadne zpět na češtinu |
| `apps/<slug>/i18n/<lang>.tsv` | vlastní soubor aplikace: přepis kteréhokoli klíče + překlad galerie |

`apps/<slug>/i18n/<lang>.md` je přeložené `meta.md` — front-matter jen pro pole,
která se mění (`tagline`), a tělo, které nahradí popis.

Galerie se překládá na úrovni dat, ne šablony: řádky s klíčem
`label.<původní text>` přepíšou textové sloupce `skins.tsv` a `assets.tsv` do
`dist/skins/<slug>/{skins,assets}.<lang>.tsv`. Klíčem je zdrojový řetězec (ne
číslo řádku), takže `make import-skins` může galerii kdykoli přegenerovat z
herního repa, aniž by překlad zneplatnil; buňka bez řádku projde beze změny —
což je přesně to, co vlastní jména (`Falcon X`, `Bouncer`, názvy skinů) chtějí.

Dnes má druhý jazyk (japonštinu) jen **kirian**. Podstránky vizuálů a flotil mají
nadpisy pořád ve skriptu, takže se staví jen v základním jazyce.

## Screenshoty

Hoď raw obrázky do `apps/<slug>/screenshots/raw/{desktop,mobile}/<platform>/`.
`make screenshots` z nich vyrobí přesné store rozměry. Cílové rozměry jsou
konstanty na začátku `scripts/resize-screenshots.sh`.

## Skiny (Kirian)

Kirian má navíc galerii skinů: sekce „Skiny" na `kirian.html` a podstránka
`kirian-skins.html` s výběrem skinu, sprity po kategoriích (lodě, nepřátelé, boss,
asteroidy, efekty, game center, pozadí), SFX tlačítky a hudebním playlistem.

Zdroj pravdy je herní repo **`lioilsources/Kiran`** — `SKINS.md`,
`lib/services/skin_registry.dart` a `assets/skins/<id>/`. Web-ready assety se
generují lokálně a **commitují** do `apps/kirian/skins/`:

```bash
KIRAN_SRC=/cesta/ke/Kiran make import-skins
```

`scripts/import-skins.sh` zmenší sprity do WebP a přetranskóduje `.ogg` na `.m4a`
(Safari a iOS `.ogg` nepřehrají), rozřadí je do kategorií podle názvu souboru
a vygeneruje dva manifesty:

| Soubor | Sloupce |
|--------|---------|
| `apps/kirian/skins/skins.tsv` | `id name year theme vessels bloom crt tint notes wiki pixelart` |
| `apps/kirian/skins/assets.tsv` | `skin ord category file label meta1 meta2` |

Knoflíky (rozměry, kvality, bitrate, seznam hudebních stop `MUSIC_TRACKS`) jsou
konstanty na začátku `scripts/import-skins.sh`. `make build` už jen kopíruje
`apps/<slug>/skins/` do `dist/skins/<slug>/`; sekce i podstránka se vygenerují
**jen** když existuje `dist/skins/<slug>/skins.tsv`, takže ostatní aplikace
zůstávají beze změny.

## Flotily a manévry (OrbitronTactics)

OrbitronTactics má galerii flotil: sekce „Flotily" na `orbitrontactics.html`
a podstránka `orbitrontactics-fleets.html` s výběrem flotily, loděmi v bílé
i černé variantě, manévry po typech lodí a zvuky souboje.

Zdroj pravdy je herní repo **`lioilsources/OrbitronTactics`** — `assets/fleets/`,
`assets/audio/` a katalog manévrů v `lib/core/maneuvers/`. Web-ready assety se
generují lokálně a **commitují** do `apps/orbitrontactics/fleets/`:

```bash
ORBITRON_SRC=/cesta/k/OrbitronTactics make import-fleets
```

`scripts/import-fleets.sh` zmenší sprity do WebP, poskládá z bílých lodí náhled
flotily, přetranskóduje `.ogg` na `.m4a` a spustí `tools/dump_maneuvers.dart`
ve hře, který vysype katalog manévrů:

| Soubor | Sloupce |
|--------|---------|
| `fleets.tsv` | `id name theme notes default` |
| `assets.tsv` | `fleet ord category file label w h` (kategorie `preview`, `white`, `black`) |
| `common.tsv` | `category ord file label secs —` (zvuky a hudba, sdílené všemi flotilami) |
| `maneuvers.tsv` | `id ship family tier name description energy duration pattern unlock price untouchable tags shots` |
| `maneuvers.json` | navzorkované dráhy letu pro animaci na plátně |

Dráhy se **vzorkují v Dartu** přes `Maneuver.poseAt`, ne dopočítávají
v JavaScriptu — galerie má ukazovat to, co engine doopravdy letí, a druhá
implementace easingu by se rozešla s první při první změně křivky. Gesto (mřížka
3×3) kreslí `build-site.sh` do SVG, animaci plátna `assets/js/store.js`.

Bez Dartu import proběhne, jen si nechá už zacommitovaný dump manévrů.

## Závislosti

- `bash`, `awk`, `sed` (běžné)
- `gh` CLI (pro `make fetch`)
- ImageMagick `magick` (pro `make screenshots`, `make import-skins`, `make import-fleets`) — `brew install imagemagick`
  (pro skiny je potřeba WebP delegát: `magick -list format | grep WEBP`)
- `ffmpeg` (videa v galerii + audio skinů a flotil) — `brew install ffmpeg`
- Dart SDK (jen `make import-fleets` — vysypání katalogu manévrů)
- `python3` (pro `make serve`)
