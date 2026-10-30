---
slug: djfy
name: DJfy
repo: lioilsources/DJfy
tagline: DJ deck s chytrým playlistem a párty režimem, kde hudbu vybírají hosté z mobilu
order: 9
featured: false
desktop: macos
mobile: android,ios
appstore:
playstore:
testflight:
---
DJfy je mobilní DJ aplikace s chytrým generováním playlistů. Zadáš
interpreta a aplikace k němu poskládá skladby podle tempa a doporučení.
Pak je míchá na decích s pitchem, efekty a crossfaderem.

Integruje **Last.fm** (doporučení, scrobbling), **GetSongBPM** (BPM data)
a **SoundCloud** (streaming).

### Párty režim

Na párty obvykle hudbu pouští ten, kdo je zrovna u telefonu, a ostatní mu
křičí přání do ucha. V DJfy se z telefonu hostitele stane DJ pult a
reproduktor jen hraje. Hosté naskenují QR kód a otevřou si párty v
prohlížeči. Nepotřebují aplikaci ani účet, stačí zadat jméno.

- **Hosté navrhují a hlasují.** Každý může hledat skladby, přidat je do
  fronty a dávat palec nahoru nebo dolů. Aby jeden host nezabral celou
  frontu, může v ní mít najednou nejvýš tři skladby.
- **Chytrá fronta.** Pořadí neurčuje jen počet hlasů. Aplikace bere v
  úvahu i to, jak dlouho skladba čeká, jestli stejný interpret nehrál
  před chvílí a jestli tempo sedí k té, která právě hraje.
- **Mood lock.** Hostitel nastaví rozsah BPM, třeba 110–130, a skladby
  mimo něj jdou na konec fronty. Večer tak drží tempo, i když někdo
  navrhne baladu.
- **Auto-DJ.** Skladby na sebe navazují plynulým crossfadem. Když se
  tempa liší nejvýš o 8 %, aplikace během přechodu sladí BPM a pak se
  vrátí k původní rychlosti.
- **Hostitel má poslední slovo.** Může skladbu vetovat, jmenovat
  spolu-DJe, který smí zasahovat do fronty, nebo hosta vyhodit.
- **Zvuk kamkoli.** Telefon hraje do sluchátek, do reproduktoru přes
  Bluetooth nebo přes AirPlay třeba do Sonosu.

Telefon hostitele drží celou párty. Malý server v Go mezi ním a hosty
jen přeposílá zprávy a nic neukládá.

Postaveno ve Flutteru. Běží na mobilu i macOS.
