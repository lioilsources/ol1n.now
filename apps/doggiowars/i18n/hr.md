---
tagline: Voxel zračna borba među letećim otocima (samostalna igra za Luanti)
---
Ti si lovac. Ne pilot u lovcu — sam stroj. U DoggioWarsu se ne hoda, ništa se
ne kopa ni gradi: letiš od prve sekunde.

Ispod tebe proteže se nebo puno **letećih otoka** u dvanaest bioma — vulkani
iz kojih se lava prelijeva preko kratera, ledenjačke visoravni sa sigama od
leda, atolske lagune, divovske gljive, svjetleći kristalni tornjevi. Generiraju
se iz broja koji se zove seed, pa nijedna dva svijeta nisu ista, a otoci su
**uništivi**: tvoji hici odlamaju komade koji se zatim survavaju u prazninu.

### Tko leti uokolo

Nebo nije prazno. Oko svojih otoka kruže **zmajevi-zmije** pet elemenata —
vatreni iznad vulkana i pepela, ledeni iznad ledenjaka, vodeni iznad atola,
blatni iznad močvara i električni iznad kristala. Pustinjama poput dupina
plivaju **pješčani crvi**, nad pustim otocima bdije **kameni čuvar**, iznad
zelenih lebde svjetleće **meduze**, a uz malo sreće sresti ćeš **nebeskog
kita**. Svi su zasad miroljubivi: ne diraju tebe, a ni ti njih. Isti seed daje
istu postavu.

Tipka **Z** ili naredba `/map` otvara kartu svijeta preko cijelog zaslona:
otoci obojeni prema biomu, točke za stvorenja i tvoj brod sa smjerom leta.

### Dva stroja u jednom

Prebacuješ ih naredbom `/mode`, a lete potpuno drukčije.

**Podmornica** je zadana i oprašta pogreške. Lebdi na mjestu — kad pustiš
kontrole, glatko stane, pa možeš na miru razgledati otok ili manevrirati među
stijenama milimetar po milimetar. Zna se i izmaknuti ustranu bez promjene
kursa.

**Lovac** nikad ne staje. Drži brzinu koju mu zadaš i skreće **nagibom** —
lijeva palica ga polegne na krilo, a nos se okrene sam, to spremnije što si
strmije nagnut. Strmo poniranje tjera ga preko najveće brzine, penjanje mu
brzinu oduzima, pa stalno mijenjaš visinu za brzinu i obratno. Zna barrel
roll, looping i Immelmannov okret — a let tik uz stijenu puni boost, pa se
riziko isplati.

### Utrka za zlatnim zecom

Naredba `/race` pokreće utrku hrtova: nebom juri zlatni zec koji zna iste
trikove kao ti, provlači se kroz tunele probušene kroz otoke i ne čeka. Ili ga
pratiš cijelom stazom, ili ne.

### Upravljanje

Miš i tipkovnica rade, ali igra je napravljena za **gamepad** — Xbox 360 i PS4
DualShock preko Luantijeve izvorne podrške za joystick, bez vanjskog mapera.
Lijeva palica upravlja avionom, desna nišani oružjem neovisno o tome kamo
letiš. Nagib i propinjanje prikazuje libela u HUD-u jer Luanti ne zna naginjati
horizont.

### Twitch chat

Igra ima opcionalnu vezu s Twitchom preko servisa
[chatbridge](https://github.com/lioilsources/chatbridge): gledatelji naredbama
u chatu (`!drak`, `!velryba`, `!meduzy`…) dozivaju stvorenja u svijet
streamera. Chat može samo dodati stvorenja koja za sobom počiste, teren ne
dira, a `/chatoff` ga odmah gasi. Bez postavki u `minetest.conf` veza je
isključena.

### Instalacija

Trebaš **Luanti 5.12 ili noviji** i **ništa drugo** — od verzije 2.0 DoggioWars
je samostalna igra, a ne mod, pa Minetest Game više nije potreban.

Raspakiraj arhivu u mapu `games/` u Luantijevoj podatkovnoj mapi. Na Windowsima
je to `%APPDATA%\Minetest\games\`, kod prijenosne zip verzije `games\` izravno u
mapi s igrom. Na macOS-u `~/Library/Application Support/minetest/games/`, na
Linuxu `~/.minetest/games/`.

Raspakirana mapa mora se zvati **`doggiowars_game`**. Zatim pokreni Luanti, u
donjoj traci glavnog izbornika odaberi DoggioWars i klikni **New**.

Tko još ima stariju verziju kao **mod** u mapi `mods/`, neka je obriše — od
verzije 2.0 to je igra i oboje istodobno nema smisla.
