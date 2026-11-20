---
slug: smpl16
name: SMPL16
repo: lioilsources/Sample16
icon_src: smpl16/assets/icon/icon.png
tagline: Šestnáct padů v telefonu — nahraj zvuk mikrofonem, polož ho na pad a hraj
featured: false
langs: cs
desktop:
mobile: android,ios
artifacts: android
appstore:
playstore:
testflight:
---
SMPL16 je kapesní sampler: šestnáct padů v mřížce 4 × 4, do každého jde
nahrát nebo naimportovat zvuk a pak na něj klepnutím hrát. Celé ovládání
je na jedné obrazovce: klepnutí přehraje, podržení otevře nastavení padu.

### Pady

Klepnutí na pad spustí jeho zvuk, další klepnutí ho zastaví. Hrát může
víc padů najednou. Pad, který právě zní, svítí. Každý ukazuje číslo,
název, délku a průběh vlny, smyčku značí „∞“. Klepnutí na prázdný pad
rovnou otevře jeho editor, aby se do něj dalo něco nahrát.

### Jednou, nebo dokola

Každý pad má vlastní přepínač smyčky: vypnutý zvuk zahraje jednou
(one-shot, třeba bicí), zapnutý hraje dokola, dokud ho nezastavíš.
**PLAY ALL** spustí všechny nahrané pady najednou ve smyčce a **STOP**
všechno utne. Posuvník **LOOP SPD** zrychlí nebo zpomalí všechno, co
právě hraje (0,25× až 2×).

### Nahrávání do slotu

Tlačítko **REC** nahrává z mikrofonu (nejvýš 30 sekund, pak se samo
zastaví). Po zastavení se rozblikají všechny pady a klepnutím vybereš,
kam nahrávka patří. Z editoru padu jde nahrávat i rovnou do něj:
po zastavení se zvuk uloží do toho padu a obrazovka se zavře. Místo
nahrávání lze do padu naimportovat zvukový soubor z telefonu.

### Nastavení padu

Podržením padu se otevře jeho editor: průběh vlny, ladění **PITCH**
(±12 půltónů, po půl půltónu), rychlost **SPEED** (0,25× až 2×), smyčka
a smazání obsahu. Změny platí hned, i když pad zrovna hraje, takže se
ladí poslechem. Ladění funguje jako na gramofonu: vyšší tón zvuk
zároveň zrychlí.

### Uložené mezi spuštěními

Nahrané i naimportované zvuky appka kopíruje do svého úložiště a
nastavení padů si pamatuje, takže po dalším spuštění je mřížka
taková, jak jsi ji nechal.

### Stav

SMPL16 je ve vývoji a zatím nemá veřejné vydání: buildy pro Android a iOS
dostávají jen testeři. Průběh vlny umí appka přečíst jen z WAV (tak se
ukládají nahrávky z mikrofonu), u naimportovaných MP3 a podobných je vlna
na padu jen orientační. Zdrojový kód je na
[github.com/lioilsources/Sample16](https://github.com/lioilsources/Sample16).

Screenshoty jsou ze skutečných widgetů aplikace, vyrenderované testem:
zvuky na padech jsou syntetické (kopák, virbl, hi-hat…) a stav přehrávání
a nahrávání je nastavený ručně.
