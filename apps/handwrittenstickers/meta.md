---
slug: handwrittenstickers
name: HandWrittenStickers
repo: lioilsources/HandWrittenStickers
tagline: Nálepky z vlastního rukopisu
order: 23
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
desktop: macos,windows,linux
mobile: android,ios
visuals: Ukázky nálepek složených v aplikaci a vzorníky sad písma.
appstore:
playstore:
testflight:
icon_src: handwritten_stickers/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
---
Napiš text a aplikace ho složí znak po znaku z ručně psaných písmen — a uloží
jako průhledné PNG, které se dá poslat jako nálepka.

První sada je skutečný dětský rukopis: Laurinka vyplnila šablonu na A4, ta se
vyfotila a nástroj z ní vyřízl 160 znaků včetně celé české diakritiky. Stejnou
šablonu si může vytisknout a vyplnit kdokoli. Druhá naskenovaná sada, psací
Jessie 1, má písmena ve slově navázaná tahem pera jako vázané písmo.

K tomu přes osmdesát dalších sad ve třech kategoriích — rukopis, kaligrafie a
typografie — a dětské a materiálové sady: bublina, plastelína, perník, neon.
Sady se přepínají přímo v editoru a text se sází na účaří s proporcionálními
mezerami, takže nevypadá jako vystřihovánka.

### Presety a emoji

Preset je sada spolu se stylem: rozestupy, výška řádku, rozkolísání účaří,
velikosti a natočení písmen. Vestavěné jsou Úhledně, Běžně, Rychlý vzkaz
a Chaos, další patří k balíčkům (Milostný dopis, Nápis na dort, Dětský vzkaz,
Neonový nápis…). Vlastní nastavení jde uložit jako nový preset. Aplikace si
při dalším spuštění pamatuje poslední stav.

Ke zprávě jde přidat jednu ze 41 kreslených emoji nálepek, která se jemně
pohupuje. S ní se nálepka uloží jako animovaný GIF, který zvládnou poslat
i messengery.

### Zdarma, balíčky navíc

Editor, vestavěné presety, export PNG i GIF, emoji a navazování písmen jsou
zdarma. Platit se bude za obsah navíc, tematické balíčky písem s vlastními
presety (Rukopisy, Kaligrafie, Plakát a nápisy, Pro děti, Materiály), a za
ukládání vlastních presetů. Zamčenou sadu jde v editoru
vyzkoušet, placení přijde na řadu až při uložení. Balíčky se budou kupovat
v App Store a Google Play, kde aplikace zatím není. Ve verzi pro Windows
a Linux je odemčené všechno.

Dvě části: nástroj v Go, který ze skenu šablony nebo z fontu vyrobí sadu
znaků, a aplikace ve Flutteru, která z nich skládá text (repo
`HandWrittenStickers`).
