---
tagline: Telegram bot na mangu z kociek, restyle fotky, nový účes a animáciu fotky
---
TsumikiMangaBot (predtým MangaPrompts) skladá prompty na AI generovanie obrázkov v štýle LEGO — vyberáš stavebné kocky zhruba na dvadsiatich piatich osiach (médium, výtvarná tradícia, štýl hlavy, manga štýl, historické obdobie) a z nich vznikne kompletný prompt. Tým sa nezastaví: prompt rovno pošle do generovania a obrázok ti pošle späť.

### Ďalšie karty

Popri skladači má Mini App prepínač kariet:

- **Restyle fotky** — nahráš fotku, vyberieš štýl a dostaneš toho istého človeka v tej istej póze v danom štýle. Prepínačom foto / ilustrácia volíš médium, štýlov je vyše deväťdesiat v šiestich skupinách (populárne, maliari, výtvarné tradície podľa regiónov).
- **Vyskúšaj účes** — prekreslí len vlasy na portréte, voliteľne aj s novou farbou. Každý účes má náhľad na tej istej tvári, takže porovnávaš len vlasy.
- **Rozpohybuj fotku** — z fotky a vybranej scény vznikne krátke video, ktoré príde do chatu.

### Ako to rozbehnúť

Nič sa neinštaluje, beží to ako Telegram Mini App:

1. V Telegrame otvor [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — alebo ho nájdi vo vyhľadávaní pod menom **Tsumiki**.
2. Napíš `/start`. Bot odpovie tlačidlom **🎨 Open Tsumiki**.
3. Klikni naň, poskladaj kocky a daj generovať.

Hotový obrázok sa ukáže priamo v appke **a zároveň príde do chatu**, takže ho máš v histórii a môžeš ho hneď preposlať. Keď `/start` preskočíš a otvoríš appku napriamo, generovanie funguje tiež — len ti obrázok do chatu nepríde, pretože Telegram botovi nedovolí napísať prvý.

### Koľko to stojí

**Tri generovania zadarmo za každých 24 hodín.** Potom 1 kredit = 1 obrázok a kredity sa kupujú za **Telegram Stars** priamo v appke — 10 kreditov za 25 ⭐, 50 za 100 ⭐, 250 za 400 ⭐. Restyle a účes sa platia rovnako ako obrázok, účes až potom, čo rozbor fotku prijme. Animácia má vlastné počítadlo: jedna denne zadarmo, ďalšia za 10 ⭐. Keď generovanie zlyhá, kredit sa vracia späť. S problémami okolo platby pomôže príkaz `/paysupport`, vrátenie peňazí riešim do 48 hodín.

### Čo beží pod kapotou

Mini App je Flutter web na Cloudflare Pages. Prompt z nej putuje na backend (FastAPI + aiogram) bežiaci na domácom NAS-e a odtiaľ do **ComfyUI** — podľa zvolenej šablóny sa vyberie workflow (FLUX, Pony, Juggernaut XL Lightning alebo WAI Illustrious). Restyle drží tvár cez PuLID alebo InstantID a pózu cez depth ControlNet, animácia beží na Wan 2.2. Kredity aj platby drží SQLite na strane backendu.

### Natívne aplikácie

Buildy nižšie pre macOS, Windows, Linux, Android a iOS sú plná verzia skladača promptov a majú navyše režim **Repose**, ktorý v Telegrame nie je: nahráš tvár, vyberieš pózu a appka vygeneruje obrázok tej osoby v danej póze s vernou tvárou (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose však mieri priamo na ComfyUI, takže sa k nemu natívna appka musí dostať.

Postavené vo Flutteri.
