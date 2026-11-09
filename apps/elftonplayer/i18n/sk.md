---
tagline: Bit-perfect prehrávač pre USB DAC — súbor, RAM, ASIO a nič medzi tým
---
Elfton Player je prehrávač lokálnej hudby pre Windows 11, ktorý má jedinú
prioritu: aby sa do USB DAC dostali presne tie vzorky, ktoré sú v súbore.
Cesta signálu je **súbor → dekodér → RAM → ASIO → DAC**. Žiadna hlasitosť,
žiadny ekvalizér, žiadne prevzorkovanie, žiadny streaming. Hlasitosť sa
nastavuje na prevodníku alebo zosilňovači.

### Čo vie

- **Bit-perfect výstup** cez ASIO alebo WASAPI v exkluzívnom režime. Vedľa
  skladby vidno celý reťazec (`FLAC 24/96k → 32-bit · bit-perfect`) a zelená
  bodka zhasne vo chvíli, keď do signálu čokoľvek zasiahne.
- **Prehrávanie z pamäte.** Skladba sa celá dekóduje do RAM, takže disk počas
  hrania nepracuje; ďalšia skladba sa načíta vopred a nadväzuje **bez medzery**.
- **A-B slučka presná na vzorku** s posunom bodov po milisekundách — na nacvičenie
  pasáže alebo porovnávanie dvoch miest nahrávky.
- **Knižnica podľa priečinkov**: strom adresárov tak, ako ho máš na disku, obaly,
  vyhľadávanie, poradie, obľúbené, história, playlisty M3U, albumy v jednom súbore
  s CUE, synchronizované texty z LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg aj DSD** (natívne, DoP alebo prevod na PCM).
- **Mono (L+R)/2** ako jediný zásah do signálu, vždy viditeľne označený.
- **Tlačidlá Ľ a P** pustia len jeden reproduktor a druhý stlmia. So zapnutým
  monom hrá v oboch to isté, takže z kresla telefónom hneď porovnáš ľavú
  a pravú stranu zostavy (káble, súčiastky); bez mona hrá len ľavý alebo
  len pravý kanál nahrávky.
- **Posuvník nakreslený ako hlasitosť skladby** cez celú šírku okna: tichý
  úvod je vidieť a dá sa preskočiť jedným kliknutím.
- **Srdiečko pri skladbe** a filter „len obľúbené“ priamo v albume.
- **Tri vzhľady**: tmavý, čierny a svetlý.
- **Diaľkové ovládanie v telefóne**: Elfton Remote sa spáruje QR kódom cez domácu
  sieť a vie to isté čo okno na počítači.

### Režim prehrávania

Na želanie pri hraní prepne plán napájania, vypne úsporné uspávanie USB
a parkovanie jadier a po skončení všetko vráti. Úprimne: pri asynchrónnom
USB DAC drží hodiny prevodník, takže tieto úpravy nemajú na zvuk merateľný
vplyv. Sú voliteľné, každá sa zapisuje do logu a žiadna z nich nie je potrebná.

To isté platí pre „rituály“ prevzaté z prehrávača Bug head, ktoré sú
v nastaveniach a v predvolenom stave vypnuté: zamknutie hudby v RAM, pauza
po načítaní skladby a spúšťanie vlastného pomocného programu (napríklad
MinorityClean) spolu s prehrávačom. MinorityClean nie je súčasťou balenia.

### Stav

**Verzia 0.2, predbežné vydanie.** Prvá verzia bežala na Windows 11 u jedného
poslucháča cez ASIO (Behringer UMC204HD a SMSL D200): WAV 24/192 išiel von
ako 32-bitové ASIO bez prevodu a bez výpadkov a ovládanie z telefónu funguje.
To je hlásenie samotného prehrávača o ceste signálu; výstup zatiaľ nikto
nezachytil a neporovnal bit po bite. Novinky verzie 0.2 sú pokryté testami,
na Windows však ešte nebežali. Snímky obrazovky sú z prvej verzie,
z vývojového zostavenia pre macOS s ukážkovou knižnicou — pás s priebehom
hlasitosti a prepínač Ľ/P na nich ešte nie sú.

Zostavenie pre Windows je zip: rozbaľ ho a spusti `Elfton Player.exe` alebo
spusti priložený `install.ps1`, ktorý pridá odkaz do ponuky Štart. Nič ďalšie
sa neinštaluje. Pre ASIO musí byť nainštalovaný ovládač prevodníka; bez neho
prehrávač ponúkne WASAPI. Diaľkové ovládanie do telefónu je zatiaľ len pre
Android (APK); verzia pre iOS je hotová v kóde, ale nemá verejné zostavenie.

Jadro je napísané v Go nad FFmpegom (LGPL, dynamicky), rozhranie vo Flutteri.
