---
tagline: Telegram-bot kockákból épített mangához, fotó-restyle-hoz, új frizurához és fotóanimációhoz
---
A TsumikiMangaBot (korábban MangaPrompts) LEGO-elven rak össze promptokat AI-képgeneráláshoz — nagyjából huszonöt tengelyen választasz építőkockákat (médium, művészeti hagyomány, fejstílus, mangastílus, történelmi korszak), és ezekből teljes prompt lesz. Itt nem áll meg: a promptot rögtön elküldi generálásra, a képet pedig visszaküldi neked.

### További kártyák

Az összerakó mellett a Mini Appban kártyaváltó is van:

- **Fotó-restyle** — feltöltesz egy fotót, kiválasztasz egy stílust, és ugyanazt az embert kapod ugyanabban a pózban, abban a stílusban. A fotó / illusztráció kapcsolóval választod a médiumot, stílusból több mint kilencven van hat csoportban (népszerűek, festők, régiók szerinti művészeti hagyományok).
- **Próbálj ki egy frizurát** — a portrén csak a hajat rajzolja újra, ha akarod, új színnel is. Minden frizurának van előnézete ugyanazon az arcon, így csak a hajat hasonlítod össze.
- **Keltsd életre a fotót** — egy fotóból és egy kiválasztott jelenetből rövid videó készül, ami megérkezik a chatbe.

### Így kezdj hozzá

Semmit nem kell telepíteni, Telegram Mini Appként fut:

1. Telegramban nyisd meg a [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) botot — vagy keresd meg a **Tsumiki** néven.
2. Írd be: `/start`. A bot a **🎨 Open Tsumiki** gombbal válaszol.
3. Koppints rá, rakd össze a kockákat, és indítsd a generálást.

A kész kép megjelenik közvetlenül az appban, **és közben a chatbe is megérkezik**, így megvan az előzményekben, és rögtön továbbküldheted. Ha kihagyod a `/start` parancsot, és közvetlenül nyitod meg az appot, a generálás akkor is működik — csak a kép nem jut el a chatbe, mert a Telegram nem engedi, hogy a bot írjon először.

### Mennyibe kerül

**Három ingyenes generálás 24 óránként.** Utána 1 kredit = 1 kép, a krediteket pedig **Telegram Stars**-ért veheted meg közvetlenül az appban — 10 kredit 25 ⭐, 50 kredit 100 ⭐, 250 kredit 400 ⭐. A restyle és a frizura ugyanannyiba kerül, mint egy kép, a frizura csak azután, hogy az elemzés elfogadta a fotót. Az animációnak saját számlálója van: napi egy ingyen, a többi 10 ⭐. Ha a generálás nem sikerül, a kreditet visszakapod. Fizetési gondoknál a `/paysupport` parancs segít, a visszatérítéseket 48 órán belül intézem.

### Mi fut a motorháztető alatt

A Mini App Flutter web a Cloudflare Pagesen. A prompt innen egy otthoni NAS-on futó backendre (FastAPI + aiogram) megy, onnan pedig a **ComfyUI**-ba — a választott sablon szerint dől el a workflow (FLUX, Pony, Juggernaut XL Lightning vagy WAI Illustrious). A restyle PuLID-dal vagy InstantID-vel tartja meg az arcot, depth ControlNettel a pózt, az animáció Wan 2.2-n fut. A krediteket és a fizetéseket SQLite tárolja a backend oldalán.

### Natív alkalmazások

Az alábbi buildek macOS-re, Windowsra, Linuxra, Androidra és iOS-re a teljes promptösszerakót tartalmazzák, és van bennük egy **Repose** mód is, ami Telegramban nincs: feltöltesz egy arcot, kiválasztasz egy pózt, és az app képet készít arról az emberről abban a pózban, hű arccal (InstantID + depth ControlNet + hi-res + FaceDetailer). A Repose viszont közvetlenül a ComfyUI-hoz csatlakozik, így a natív appnak el kell érnie azt.

Flutterrel készült.
