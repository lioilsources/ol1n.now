# ol1n.now

Statický "app store" pro distribuci vlastních aplikací (Windows / macOS / Linux + mobil),
alternativa Google Play / Apple Store. Hostováno na GitHub Pages, servováno přes
Cloudflare Tunnel na `http://ol1n.now`.

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
5. **`make deploy`** publikuje `dist/` na branch `gh-pages` (GitHub Pages, canonical HTTPS).
6. **`make tunnel`** spustí cloudflared → `http://ol1n.now` proxyuje na Pages.

`make all` = fetch + screenshots + build. `make serve` spustí lokální náhled.

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

## Závislosti

- `bash`, `awk`, `sed` (běžné)
- `gh` CLI (pro `make fetch`)
- ImageMagick `magick` (pro `make screenshots`) — `brew install imagemagick`
- `python3` (pro `make serve`)
- `cloudflared` (pro `make tunnel`)
