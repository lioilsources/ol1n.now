---
slug: rattleramp
name: RattleRamp
repo: lioilsources/ChrestysSkatepark
tagline: U-rampa na tablet v baru U Chřestýše — triky se kreslí prstem do mřížky 3×3, rozhoduje pustit ve správnou chvíli
order: 29
featured: false
desktop: macos
mobile: android,ios
artifacts: macos,android
appstore:
playstore:
testflight:
---
RattleRamp je hra na tablet, který visí na baru U Chřestýše vedle skateparku.
Host čeká na pivo nebo na jídlo, tapne na obrazovku a jede.
Jízda trvá půl minuty až dvě, nic se nemusí vysvětlovat a nic se
nenastavuje. Pak tablet zase přehrává jízdy sám sobě a láká dalšího.

### Jak se jezdí

Skejťák jezdí v U-rampě sám, ode zdi ke zdi. Hráč dělá jen jednu věc: na
každé hraně rampy nakreslí prstem trik do mřížky 3×3 vpravo dole, podobně jako
se kreslí gesto na odemčení telefonu. Rozhoduje **okamžik, kdy prst pustí**.
Ke hraně se stahuje kroužek a ve chvíli, kdy dosedne, skejťák vyskočí.
Pustit přesně znamená PERFECT, o kousek vedle GOOD, pozdě LATE. Kdo
nestihne, netrefí tvar nebo nakreslí delší trik, než kolik vydrží ve vzduchu,
spadne a jízda končí.

Bez triku skejťák ztrácí rychlost a po pár prázdných skocích už na hranu
nedojede. Povedené triky ho naopak zrychlují, rychlost zvedá skoky, a tím se
vejdou delší triky. Okno na puštění se ale s rychlostí zužuje, takže hra sama
přitvrzuje.

### Triky se skládají

Mřížka má gramatiku, ne seznam tvarů. **Kolečko po okraji** je otočka (po
směru hodinek frontside, proti backside, od 180 do 1080). **Hák přes střed**
je grab: Indy, Melon, Mute, Stalefish, Method, Japan, Crail, Rocket Air
a další, každý má svůj tvar. **Kosočtverec** je flip: Kickflip, Heelflip,
Varial, 360 Flip, Hardflip, Impossible… Tahy jdou za sebou jedním tahem
prstu, každý začíná tam, kde předchozí skončil, a tak vznikají kombinace jako
Kickflip Melon nebo pojmenované McTwist a Rodeo. Šest otoček, 14 grabů, 12
flipů a 5 pojmenovaných komb dá dohromady tisíce triků. Test projde všech přes
deset tisíc kombinací do tří tahů a hlídá, že každý tvar jde přečíst jen
jedním způsobem.

### Body

Body za trik se násobí timingem, rychlostí, sérií a pestrostí: stejný trik
podruhé za jízdu vynese polovinu, potřetí čtvrtinu. Jeden trik je každý den
**trik dne** za dvojnásobek. Začátečníci mají dole nápovědu se třemi tvary
k obkreslení. Kdo ji nechce, zvolí **PRO**: bez nápovědy a za 1,5× body. Na
konci jízdy se ukáže karta: skóre, nejlepší trik, nejdelší série a průměrný
timing.

**Trick book** je přímo na úvodní obrazovce: všechny graby, flipy, otočky
a komba s nakresleným tvarem, body a obtížností.

### Postavy a tři styly

Před jízdou je pět vteřin na výběr postavy. Kdo nic nevybere, jede s minulou.
Postav je osm, první je chřestýš, maskot baru, s chrastítkem na ocase. K tomu
šest barev oblečení a šest grafik desky. Hlavy vznikly v modelu FLUX.1-schnell
na vlastním serveru, tělo s končetinami se kreslí v kódu, aby šlo skládat
otočky, flipy a graby bez ruční animace pro každou kombinaci.

Celá hra jde přepnout do tří stylů: **neon** (svítící čáry na tmavém pozadí),
**komiks** (obrys tuší, rastr a paprsky) a **pixel** (celá scéna ve velkých
pixelech). Přepíná se tlačítkem STYL na úvodní obrazovce.

### Stav

Hotové je jádro hry, triky a postavy. Ještě chybí to, co z ní udělá barovou
hru: denní a týdenní žebříček s iniciálami (a odměnou pro dnešního vítěze,
kterou nastaví bar), záznamy nejlepších jízd přehrávané na úvodní obrazovce,
režim pro dva u jednoho stolu a uzamčený kioskový režim tabletu s adminem pro
obsluhu.

Buildy níže jsou zkušební (alfa). Hra je dělaná na tablet na šířku,
na telefonu je všechno malé. Offline, bez účtů a bez reklam.
