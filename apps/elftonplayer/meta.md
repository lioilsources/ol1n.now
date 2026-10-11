---
slug: elftonplayer
name: Elfton Player
repo: lioilsources/ol1nplay
tagline: Bit-perfect přehrávač pro USB DAC — soubor, RAM, ASIO a nic mezi tím
order: 24
featured: false
desktop: windows
mobile: android
appstore:
playstore:
testflight:
---
Elfton Player je přehrávač lokální hudby pro Windows 11, který má jedinou
prioritu: aby se do USB DAC dostaly přesně ty vzorky, které jsou v souboru.
Cesta signálu je **soubor → dekodér → RAM → ASIO → DAC**. Žádná hlasitost,
žádný ekvalizér, žádné převzorkování, žádný streaming. Hlasitost se nastavuje
na převodníku nebo zesilovači.

### Co umí

- **Bit-perfect výstup** přes ASIO, nebo WASAPI v exkluzivním režimu. Vedle
  skladby je vidět celý řetězec (`FLAC 24/96k → 32-bit · bit-perfect`) a zelená
  tečka zhasne ve chvíli, kdy do signálu cokoli zasáhne.
- **Přehrávání z paměti.** Skladba se celá dekóduje do RAM, takže disk během
  hraní nepracuje; další skladba se načte předem a navazuje **bez mezery**.
- **A-B smyčka přesná na vzorek** s posunem bodů po milisekundách — na cvičení
  pasáže nebo porovnávání dvou míst nahrávky.
- **Knihovna po složkách**: strom adresářů tak, jak ho máš na disku, obaly,
  hledání, fronta, oblíbené, historie, playlisty M3U, alba v jednom souboru
  s CUE, synchronizované texty z LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg i DSD** (nativně, DoP, nebo převod na PCM).
- **Mono (L+R)/2** jako jediný zásah do signálu, vždy viditelně označený.
  Přepínač má čtyři polohy — Stereo · Mono · L · P: poslední dvě pustí stejný
  mono signál jen do jedné bedny, takže jde z křesla telefonem okamžitě
  porovnat levou a pravou stranu sestavy (kabely, součástky).
- **Posuvník kreslený jako hlasitost skladby** přes celou šířku okna: tichý
  úvod je vidět a jde přeskočit jedním kliknutím.
- **Srdíčko u skladby** a filtr „jen oblíbené“ přímo v albu.
- **Tři vzhledy**: tmavý, černý a světlý.
- **Ovladač v telefonu**: Elfton Remote se spáruje QR kódem přes domácí síť
  a umí totéž co okno na počítači.

### Režim přehrávání

Na přání přepne při hraní plán napájení, vypne úsporné uspávání USB a parkování
jader a po skončení všechno vrátí. Poctivě: u asynchronního USB DAC drží hodiny
převodník, takže tyhle úpravy nemají na zvuk měřitelný vliv. Jsou volitelné,
každá se zapisuje do logu a nic z nich není potřeba.

Totéž platí pro „rituály“ převzaté z přehrávače Bug head, které jsou
v nastavení a ve výchozím stavu vypnuté: zamknutí hudby v RAM, pauza po
načtení skladby a spouštění vlastního pomocného programu (například
MinorityClean) spolu s přehrávačem. MinorityClean součástí není.

### Stav

**Verze 0.2, předběžné vydání.** První verze běžela na Windows 11 u jednoho
posluchače: hraje a ovládání z telefonu funguje. Měření a potvrzení, přes
který výstup (ASIO, nebo WASAPI) hrála, zatím chybí. Novinky verze 0.2 jsou
pokryté testy, na Windows ale ještě neběžely. Screenshoty jsou z první verze,
z vývojového sestavení pro macOS s ukázkovou knihovnou — pruh s průběhem
hlasitosti a přepínač L/P na nich ještě nejsou.

Windows build je zip: rozbal a spusť `Elfton Player.exe`, nebo pusť přiložený
`install.ps1`, který přidá zástupce do nabídky Start. Nic dalšího se
neinstaluje. Pro ASIO musí být nainstalovaný ovladač převodníku; bez něj
přehrávač nabídne WASAPI. Ovladač do telefonu je zatím jen pro
Android (APK); verze pro iOS je hotová v kódu, ale nemá veřejný build.

Engine je v Go nad FFmpegem (LGPL, dynamicky), rozhraní ve Flutteru.
