---
tagline: Bit-perfect lejátszó USB DAC-hoz — fájl, RAM, ASIO, és semmi közöttük
---
Az Elfton Player helyi zenelejátszó Windows 11-re, amelynek egyetlen célja van:
hogy az USB DAC-ba pontosan azok a minták jussanak el, amelyek a fájlban vannak.
A jelút: **fájl → dekóder → RAM → ASIO → DAC**. Nincs hangerő, nincs
hangszínszabályzó, nincs újramintavételezés, nincs streaming. A hangerőt
az átalakítón vagy az erősítőn állítod.

### Mit tud

- **Bit-perfect kimenet** ASIO-n vagy kizárólagos módú WASAPI-n keresztül. A szám
  mellett látszik a teljes lánc (`FLAC 24/96k → 32-bit · bit-perfect`), és a zöld
  pötty abban a pillanatban kialszik, amikor bármi belenyúl a jelbe.
- **Lejátszás memóriából.** A szám teljes egészében a RAM-ba dekódolódik, így
  a lemez lejátszás közben nem dolgozik; a következő szám előre betöltődik, és
  **szünet nélkül** csatlakozik.
- **Mintapontos A-B ismétlés** a pontok ezredmásodpercenkénti finomhangolásával —
  egy részlet gyakorlásához vagy egy felvétel két pontjának összevetéséhez.
- **Mappaalapú könyvtár**: a mappafa pontosan úgy, ahogy a lemezen van, borítók,
  keresés, lejátszási sor, kedvencek, előzmények, M3U lejátszási listák, egyfájlos
  albumok CUE-val, szinkronizált dalszövegek LRC-ből.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg és DSD** (natívan, DoP-pal vagy PCM-re alakítva).
- **Mono (L+R)/2** mint egyetlen beavatkozás a jelbe, mindig jól láthatóan jelölve.
- **A B és J gomb** csak az egyik hangfalat hagyja szólni, a másikat elnémítja.
  Bekapcsolt monóval mindkettőn ugyanaz szól, így a fotelből telefonnal azonnal
  összevetheted a rendszered bal és jobb oldalát (kábelek, alkatrészek); monó
  nélkül csak a felvétel bal vagy csak a jobb csatornája szól.
- **A szám hangerejeként rajzolt csúszka** az ablak teljes szélességében: a halk
  bevezető látszik, és egy kattintással átugorható.
- **Szívecske a számnál** és „csak kedvencek” szűrő közvetlenül az albumban.
- **Három téma**: sötét, fekete és világos.
- **Távirányító a telefonon**: az Elfton Remote QR-kóddal párosítható az otthoni
  hálózaton át, és mindent tud, amit az ablak a számítógépen.

### Lejátszási mód

Kérésre lejátszás közben átváltja az energiasémát, kikapcsolja az USB szelektív
felfüggesztését és a magparkolást, a végén pedig mindent visszaállít. Őszintén:
aszinkron USB DAC-nál az órajelet az átalakító tartja, ezért ezeknek a
beállításoknak nincs mérhető hatásuk a hangra. Opcionálisak, mindegyik bekerül
a naplóba, és egyikre sincs szükség.

Ugyanez érvényes a Bug head lejátszóból átvett „rituálékra”, amelyek a
beállításokban találhatók, és alapból ki vannak kapcsolva: a zene RAM-ba zárolása,
szünet a szám betöltése után, és egy saját segédprogram (például a MinorityClean)
indítása a lejátszóval együtt. A MinorityClean nem része a csomagnak.

### Állapot

**0.2-es verzió, előzetes kiadás.** Az első verzió Windows 11-en futott egy
hallgatónál ASIO-n keresztül (Behringer UMC204HD és SMSL D200): a WAV 24/192
átalakítás és kimaradás nélkül ment ki 32 bites ASIO-ként, és a telefonos
vezérlés működik. Ez maga a lejátszó jelentése a jelútról; a kimenetet még senki
nem rögzítette és nem hasonlította össze bitről bitre. A 0.2 újdonságait tesztek
fedik le, de Windowson még nem futottak. A képernyőképek az első verzióból valók,
egy macOS-es fejlesztői buildből, mintakönyvtárral — a hangerőgörbés sáv és
a B/J kapcsoló még nincs rajtuk.

A Windows-build egy zip: csomagold ki, és indítsd el az `Elfton Player.exe`-t,
vagy futtasd a mellékelt `install.ps1`-et, amely parancsikont tesz a Start menübe.
Más nem települ. Az ASIO-hoz telepítve kell lennie az átalakító
illesztőprogramjának; enélkül a lejátszó WASAPI-t kínál fel. A telefonos
távirányító egyelőre csak Androidra érhető el (APK); az iOS-verzió kódban kész,
de nincs nyilvános buildje.

A motor Go nyelven készült az FFmpeg fölött (LGPL, dinamikusan linkelve), a felület Flutterben.
