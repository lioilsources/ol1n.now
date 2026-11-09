---
tagline: Telegram bot za mango iz kock, restyle fotografij, novo pričesko in animacijo fotografij
---
TsumikiMangaBot (prej MangaPrompts) sestavlja pozive za generiranje slik z AI po načelu LEGO — izbiraš gradnike na približno petindvajsetih oseh (medij, likovna tradicija, slog glave, slog mange, zgodovinsko obdobje) in iz njih nastane celoten prompt. Pri tem se ne ustavi: prompt takoj pošlje v generiranje, sliko pa ti vrne nazaj.

### Dodatne kartice

Poleg sestavljalnika ima Mini App preklopnik kartic:

- **Restyle fotografije** — naložiš fotografijo, izbereš slog in dobiš isto osebo v isti pozi v tem slogu. S stikalom fotografija / ilustracija izbereš medij, slogov pa je več kot devetdeset v šestih skupinah (priljubljeni, slikarji, likovne tradicije po regijah).
- **Preizkusi pričesko** — na portretu na novo nariše samo lase, po želji tudi z novo barvo. Vsaka pričeska ima predogled na istem obrazu, zato primerjaš samo lase.
- **Oživi fotografijo** — iz fotografije in izbranega prizora nastane kratek video, ki pride v klepet.

### Kako začeti

Nič se ne namešča, deluje kot Telegram Mini App:

1. V Telegramu odpri [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — ali ga poišči z imenom **Tsumiki**.
2. Napiši `/start`. Bot odgovori z gumbom **🎨 Open Tsumiki**.
3. Klikni nanj, sestavi kocke in zaženi generiranje.

Končana slika se prikaže neposredno v aplikaciji **in hkrati pride v klepet**, tako da jo imaš v zgodovini in jo lahko takoj posreduješ naprej. Če `/start` preskočiš in aplikacijo odpreš neposredno, generiranje prav tako deluje — le slika ne pride v klepet, ker Telegram botu ne dovoli, da piše prvi.

### Koliko stane

**Tri generiranja brezplačno vsakih 24 ur.** Potem je 1 kredit = 1 slika, kredite pa kupiš s **Telegram Stars** neposredno v aplikaciji — 10 kreditov za 25 ⭐, 50 za 100 ⭐, 250 za 400 ⭐. Restyle in pričeska staneta enako kot slika, pričeska šele potem, ko analiza fotografijo sprejme. Animacija ima svoj števec: ena na dan brezplačno, nadaljnje za 10 ⭐. Če generiranje spodleti, se kredit vrne. Pri težavah s plačilom pomaga ukaz `/paysupport`, vračila denarja urejam v 48 urah.

### Kaj teče pod pokrovom

Mini App je Flutter web na Cloudflare Pages. Prompt iz nje potuje na backend (FastAPI + aiogram), ki teče na domačem NAS-u, od tam pa v **ComfyUI** — glede na izbrano predlogo se izbere workflow (FLUX, Pony, Juggernaut XL Lightning ali WAI Illustrious). Restyle ohrani obraz s PuLID ali InstantID in pozo z depth ControlNet, animacija teče na Wan 2.2. Krediti in plačila so shranjeni v SQLite na strani backenda.

### Izvorne aplikacije

Spodnje gradnje za macOS, Windows, Linux, Android in iOS so polna različica sestavljalnika pozivov in imajo dodatno način **Repose**, ki ga v Telegramu ni: naložiš obraz, izbereš pozo in aplikacija ustvari sliko te osebe v tej pozi z zvestim obrazom (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose pa se povezuje neposredno s ComfyUI, zato mora izvorna aplikacija imeti dostop do njega.

Narejeno s Flutterjem.
