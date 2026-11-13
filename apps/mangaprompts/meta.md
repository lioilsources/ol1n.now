---
slug: mangaprompts
name: TsumikiMangaBot
repo: lioilsources/MangaPrompts
tagline: Telegram bot na mangu z bloků, restyle fotky, nový účes a animaci fotky
featured: false
desktop: macos,windows,linux
mobile: android,ios
icon_src: assets/icon/app_icon.png
appstore:
playstore:
testflight:
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
---
TsumikiMangaBot (dřív MangaPrompts) skládá prompty pro AI generování obrázků
ve stylu LEGO — vybíráš stavební bloky zhruba na pětadvaceti osách (médium,
výtvarná tradice, styl hlavy, manga styl, historické období) a z nich vznikne
kompletní prompt. U toho se nezastaví: prompt rovnou pošle do generování
a obrázek ti pošle zpátky.

### Další karty

Vedle skladače má Mini App přepínač karet:

- **Restyle fotky** — nahraješ fotku, vybereš styl a dostaneš stejného
  člověka ve stejné póze v tom stylu. Přepínačem foto / ilustrace volíš
  médium, stylů je přes devadesát v šesti skupinách (populární, malíři,
  výtvarné tradice podle regionů).
- **Zkus účes** — překreslí jen vlasy na portrétu, volitelně i s novou
  barvou. Každý účes má náhled na stejné tváři, takže porovnáváš jen vlasy.
- **Rozpohybuj fotku** — z fotky a vybrané scény vznikne krátké video,
  které přijde do chatu.

### Jak to rozjet

Nic se neinstaluje, běží to jako Telegram Mini App:

1. V Telegramu otevři [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) —
   nebo ho najdi ve vyhledávání pod jménem **Tsumiki**.
2. Napiš `/start`. Bot odpoví tlačítkem **🎨 Open Tsumiki**.
3. Klikni na něj, poskládej bloky a dej generovat.

Hotový obrázek se ukáže přímo v appce **a zároveň přijde do chatu**, takže ho
máš v historii a můžeš ho hned přeposlat. Když `/start` přeskočíš a otevřeš
appku napřímo, generování funguje taky — jen ti obrázek do chatu nedorazí,
protože Telegram botovi nedovolí napsat první.

### Kolik to stojí

**Tři generování zdarma za každých 24 hodin.** Pak 1 kredit = 1 obrázek a
kredity se kupují za **Telegram Stars** přímo v appce — 10 kreditů za 25 ⭐,
50 za 100 ⭐, 250 za 400 ⭐. Restyle a účes se platí stejně jako obrázek,
účes až poté, co rozbor fotku přijme. Animace má vlastní počítadlo: jedna
denně zdarma, další za 10 ⭐. Když generování selže, kredit se vrací zpátky.
S potížemi kolem platby pomůže příkaz `/paysupport`, vrácení peněz řeším
do 48 hodin.

### Co běží pod kapotou

Mini App je Flutter web na Cloudflare Pages. Prompt z ní putuje na backend
(FastAPI + aiogram) běžící na domácím NASu a odtud do **ComfyUI** — podle
zvolené šablony se vybere workflow (FLUX, Pony, Juggernaut XL Lightning nebo
WAI Illustrious). Restyle drží tvář přes PuLID nebo InstantID a pózu přes
depth ControlNet, animace běží na Wan 2.2. Kredity i platby drží SQLite na
straně backendu.

### Nativní aplikace

Buildy níže pro macOS, Windows, Linux, Android a iOS jsou plná verze skladače
promptů a mají navíc režim **Repose**, který v Telegramu není: nahraješ
obličej, vybereš pózu a appka vygeneruje obrázek té osoby v dané póze
s věrnou tváří (InstantID + depth ControlNet + hi-res + FaceDetailer).
Repose ale míří přímo na ComfyUI, takže se k němu nativní appka musí dostat.

Postaveno ve Flutteru.
