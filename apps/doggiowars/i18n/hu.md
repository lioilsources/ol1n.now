---
tagline: Voxeles légiharc lebegő égi szigetek között (önálló játék Luantihoz)
---
Te vagy a vadászgép. Nem a pilóta benne — maga a gép. A DoggioWarsban nem
gyalogolsz, nem bányászol és nem építesz: az első másodperctől repülsz.

Alattad **lebegő szigetekkel** teli ég terül el tizenkét biomban — vulkánok,
amelyek kráterén átbukik a láva, jégcsapos gleccserfennsíkok, atollok lagúnái,
óriásgombák, izzó kristálytornyok. Egy seednek nevezett számból generálódnak,
így nincs két egyforma világ, a szigetek pedig **rombolhatók**: a lövéseid
darabokat törnek le belőlük, amelyek aztán a semmibe zuhannak.

### Kik repülnek errefelé

Az ég nem üres. Szigeteik körül öt elem **kígyósárkányai** köröznek — tűz a
vulkánok és a hamu fölött, jég a gleccserek fölött, víz az atollok fölött, sár
a mocsarak fölött és villám a kristályok fölött. A sivatagokon **homokférgek**
úsznak át, mint a delfinek, a kopár szigetek fölött egy **kőőrző** vigyáz, a
zöldek fölött világító **medúzák** lebegnek, és egy kis szerencsével
összefutsz egy **égi bálnával**. Egyelőre mind békések: nem bántanak, és te
sem őket. Ugyanaz a seed ugyanazt a lakosságot adja.

A **Z** billentyű vagy a `/map` parancs teljes képernyős világtérképet nyit:
biom szerint színezett szigetek, pöttyök a lényeknek, és a hajód a
repülési irányával.

### Két gép egyben

A `/mode` paranccsal váltasz köztük, és teljesen máshogy repülnek.

A **tengeralattjáró** az alapértelmezett, és megbocsátja a hibákat. Egy helyben
lebeg — ha elengeded az irányítást, finoman megáll, így nyugodtan
körülnézhetsz egy szigeten, vagy milliméterenként manőverezhetsz a sziklák
között. Oldalra is ki tud térni anélkül, hogy irányt váltana.

A **vadászgép** soha nem áll meg. Tartja a sebességet, amit beállítasz neki,
és **bedöntéssel** fordul — a bal kar szárnyra dönti, az orra pedig magától
befordul, annál készségesebben, minél meredekebben dőlsz. Egy meredek
zuhanórepülés a maximum fölé gyorsítja, az emelkedés viszont sebességet
emészt, így folyton magasságot cserélsz sebességre és vissza. Tud orsózni
(barrel roll), bukfencet (looping) és Immelmann-fordulót — a sziklák mellett
szorosan elsuhanva pedig töltődik a boost, úgyhogy megéri kockáztatni.

### Hajsza az aranynyúl után

A `/race` parancs agárversenyt indít: egy aranynyúl száguld az égen, ugyanazokat
a trükköket tudja, mint te, a szigeteken átfúrt alagutakban kanyarog, és nem
vár. Vagy végig a nyomában maradsz a pályán, vagy nem.

### Irányítás

Egér és billentyűzet is működik, de a játék **gamepadra** készült — Xbox 360 és
PS4 DualShock a Luanti natív joystick-támogatásán keresztül, külső mapper
nélkül. A bal kar a gépet irányítja, a jobb a fegyvert célozza, függetlenül
attól, merre repülsz. A dőlést és a bólintást egy vízmérték mutatja a HUD-on,
mert a Luanti nem tudja megdönteni a horizontot.

### Twitch-chat

A játékban van opcionális Twitch-kapcsolat a
[chatbridge](https://github.com/lioilsources/chatbridge) szolgáltatáson
keresztül: a nézők chatparancsokkal (`!drak`, `!velryba`, `!meduzy`…) lényeket
hívnak a streamer világába. A chat csak olyan lényeket adhat hozzá, amelyek
eltakarítanak maguk után, a terephez nem nyúl, a `/chatoff` pedig azonnal
kikapcsolja. A `minetest.conf` beállításai nélkül a kapcsolat ki van kapcsolva.

### Telepítés

Kell hozzá **Luanti 5.12 vagy újabb**, és **semmi más** — a 2.0-s verzió óta a
DoggioWars önálló játék, nem mod, így a Minetest Game-re már nincs szükség.

Csomagold ki az archívumot a Luanti adatkönyvtárában lévő `games/` mappába.
Windowson ez `%APPDATA%\Minetest\games\`, a hordozható zip-verziónál a `games\`
közvetlenül a játék mappájában. macOS-en `~/Library/Application Support/minetest/games/`,
Linuxon `~/.minetest/games/`.

A kicsomagolt mappa neve kötelezően **`doggiowars_game`**. Ezután indítsd el a
Luantit, a főmenü alsó sávjában válaszd a DoggioWarst, és nyomj a **New**
gombra.

Ha még megvan egy régebbi verzió **modként** a `mods/` mappában, töröld — a
2.0-s verzió óta ez játék, és a kettő egyszerre nem sok értelmet nyer.
