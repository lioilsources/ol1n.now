---
tagline: Voxelový dogfight na lietajúcich ostrovoch (samostatná hra pre Luanti)
---
Si stíhačka. Nie pilot v stíhačke — samotný stroj. V DoggioWars sa nechodí
pešo, nič sa neťaží ani nestavia: od prvej sekundy letíš.

Pod tebou sa tiahne nebo plné **lietajúcich ostrovov** v dvanástich biómoch —
sopky s lávou pretekajúcou cez kráter, ľadovcové mesy s cencúľmi, atolové
lagúny, obrie huby, žiariace kryštálové veže. Generujú sa z čísla, ktorému sa
hovorí seed, takže žiadne dva svety nie sú rovnaké, a ostrovy sú
**zničiteľné**: tvoje strely z nich odlamujú kusy, ktoré potom padajú do
prázdna.

### Kto lieta okolo

Nebo nie je prázdne. Okolo svojich ostrovov krúžia **hadí draci** piatich
živlov — ohnivý nad sopkami a popolom, ľadový nad ľadovcami, vodný nad
atolmi, bahenný nad močiarmi a elektrický nad kryštálmi. Púšťami preplávajú
**piesočné červy** ako delfíny, nad pustými ostrovmi stráži **kamenný
strážca**, nad zelenými sa vznášajú svietiace **medúzy** a s trochou šťastia
stretneš **nebeskú veľrybu**. Všetci sú zatiaľ mierumilovní: neublížia ti a ty
im tiež nie. Rovnaký seed dá rovnakú posádku.

Kláves **Z** alebo príkaz `/map` otvorí mapu sveta na celú obrazovku: ostrovy
zafarbené podľa biómu, bodky tvorov a tvoja loď so smerom letu.

### Dva stroje v jednom

Prepínajú sa príkazom `/mode` a lietajú úplne inak.

**Ponorka** je predvolená a odpúšťa chyby. Visí na mieste — keď pustíš
ovládanie, plynulo zastaví, takže si môžeš v pokoji prezrieť ostrov alebo
manévrovať medzi skalami po milimetroch. Vie aj uhnúť nabok bez toho, aby
zmenila kurz.

**Stíhačka** nezastaví nikdy. Drží rýchlosť, ktorú jej nastavíš, a zatáča
**náklonom** — ľavá páčka ju položí na krídlo a nos sa stočí sám, tým
ochotnejšie, čím strmšie visíš. Strmý strmhlavý let ju roztlačí nad maximum,
stúpanie jej naopak rýchlosť uberá, takže výšku a rýchlosť stále vymieňaš
jednu za druhú. Vie barrel roll, looping aj Immelmannov obrat — a let tesne
popri skale nabíja boost, takže riskovanie sa oplatí.

### Preteky za zlatým zajacom

Príkazom `/race` sa spustia chrtie dostihy: po oblohe uháňa zlatý zajac,
ktorý vie tie isté triky ako ty, prepletá sa tunelmi prevŕtanými cez ostrovy
a nečaká. Buď sa ho udržíš celou traťou, alebo nie.

### Ovládanie

Myš a klávesnica fungujú, ale hra je robená pre **gamepad** — Xbox 360 aj PS4
DualShock cez natívny joystick v Luanti, žiadny externý mapovač. Ľavá páčka
riadi lietadlo, pravá mieri zbraňou nezávisle od toho, kam letíš. Náklon a
sklon ukazuje vodováha v HUD, pretože horizont Luanti nakláňať nevie.

### Twitch chat

Hra má v sebe voliteľné napojenie na Twitch cez službu
[chatbridge](https://github.com/lioilsources/chatbridge): diváci príkazmi v
chate (`!drak`, `!velryba`, `!meduzy`…) privolávajú tvory do sveta streamera.
Chat vie iba pridať tvory, ktoré po sebe upracú, terénu sa nedotkne a
`/chatoff` ho okamžite vypne. Bez nastavenia v `minetest.conf` je napojenie
vypnuté.

### Inštalácia

Potrebuješ **Luanti 5.12 alebo novšie** a **nič ďalšie** — od verzie 2.0 je
DoggioWars samostatná hra, nie mod, takže Minetest Game už netreba.

Rozbaľ archív do priečinka `games/` vo svojom dátovom adresári Luanti. Vo
Windows je to `%APPDATA%\Minetest\games\`, pri prenosnej zip verzii `games\`
priamo v priečinku s hrou. V macOS `~/Library/Application Support/minetest/games/`,
v Linuxe `~/.minetest/games/`.

Rozbalený priečinok sa musí volať **`doggiowars_game`**. Potom spusti Luanti,
v dolnej lište hlavného menu vyber DoggioWars a daj **New**.

Kto má ešte staršiu verziu ako **mod** v priečinku `mods/`, nech ju zmaže — od
verzie 2.0 je to hra a oboje naraz nedáva zmysel.
