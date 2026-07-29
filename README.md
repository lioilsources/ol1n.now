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
| `appstore` / `playstore` / `testflight` | URL na obchody (volitelné) |

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

## Závislosti

- `bash`, `awk`, `sed` (běžné)
- `gh` CLI (pro `make fetch`)
- ImageMagick `magick` (pro `make screenshots` a `make import-skins`) — `brew install imagemagick`
  (pro skiny je potřeba WebP delegát: `magick -list format | grep WEBP`)
- `ffmpeg` (videa v galerii + audio skinů) — `brew install ffmpeg`
- `python3` (pro `make serve`)
