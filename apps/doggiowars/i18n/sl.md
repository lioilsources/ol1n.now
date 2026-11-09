---
tagline: Voksni zračni boj med letečimi otoki (samostojna igra za Luanti)
---
Ti si lovec. Ne pilot v lovcu — sam stroj. V DoggioWars se ne hodi peš, nič se
ne koplje in nič ne gradi: letiš od prve sekunde.

Pod tabo se razteza nebo, polno **letečih otokov** v dvanajstih biomih —
ognjeniki, iz katerih se lava preliva čez krater, ledeniške planote z
ledenimi svečami, atolske lagune, orjaške gobe, žareči kristalni stolpi.
Ustvarijo se iz števila, ki mu rečemo seed, zato nobena dva sveta nista enaka,
otoki pa so **uničljivi**: tvoji streli odbijajo kose, ki nato strmoglavijo v
praznino.

### Kdo leti naokoli

Nebo ni prazno. Okoli svojih otokov krožijo **kačji zmaji** petih elementov —
ognjeni nad ognjeniki in pepelom, ledeni nad ledeniki, vodni nad atoli,
blatni nad močvirji in električni nad kristali. Skozi puščave kot delfini
plavajo **peščeni črvi**, nad golimi otoki bdi **kamniti varuh**, nad zelenimi
lebdijo svetleče **meduze**, s kančkom sreče pa srečaš **nebesnega kita**. Vsi
so zaenkrat miroljubni: ne naredijo ti nič in ti njim tudi ne. Isti seed da
iste prebivalce.

Tipka **Z** ali ukaz `/map` odpre zemljevid sveta čez cel zaslon: otoki,
obarvani po biomu, pike za bitja in tvoja ladja s smerjo leta.

### Dva stroja v enem

Preklapljaš ju z ukazom `/mode`, letita pa povsem različno.

**Podmornica** je privzeta in odpušča napake. Lebdi na mestu — ko spustiš
kontrole, se mehko ustavi, tako da si lahko v miru ogledaš otok ali
manevriraš med skalami milimeter za milimetrom. Zna se tudi umakniti vstran,
ne da bi spremenila smer.

**Lovec** se nikoli ne ustavi. Drži hitrost, ki mu jo nastaviš, in zavija z
**nagibom** — leva palica ga položi na krilo in nos se obrne sam, tem raje, čim
bolj si nagnjen. Strm strmoglavi let ga požene čez največjo hitrost, vzpenjanje
pa mu jo jemlje, zato ves čas menjaš višino za hitrost in nazaj. Zna sod
(barrel roll), looping in Immelmannov obrat — let tik ob skali pa polni boost,
zato se tveganje splača.

### Lov na zlatega zajca

Ukaz `/race` sproži dirko hrtov: po nebu drvi zlati zajec, ki zna iste trike
kot ti, se vije skozi predore, izvrtane skozi otoke, in ne čaka. Ali mu slediš
vso progo ali pa ne.

### Upravljanje

Miška in tipkovnica delujeta, a igra je narejena za **igralni plošček** — Xbox
360 in PS4 DualShock prek vgrajene podpore za igralne palice v Luanti, brez
zunanjega preslikovalnika. Leva palica upravlja letalo, desna meri z orožjem
neodvisno od tega, kam letiš. Nagib in naklon kaže libela v HUD-u, ker Luanti
obzorja ne zna nagibati.

### Klepet na Twitchu

Igra ima neobvezno povezavo s Twitchem prek storitve
[chatbridge](https://github.com/lioilsources/chatbridge): gledalci z ukazi v
klepetu (`!drak`, `!velryba`, `!meduzy`…) prikličejo bitja v svet
pretakalca. Klepet lahko le doda bitja, ki za sabo pospravijo, terena se ne
dotakne, `/chatoff` pa ga takoj izklopi. Brez nastavitev v `minetest.conf` je
povezava izklopljena.

### Namestitev

Potrebuješ **Luanti 5.12 ali novejši** in **nič drugega** — od različice 2.0 je
DoggioWars samostojna igra, ne mod, zato Minetest Game ni več potreben.

Razpakiraj arhiv v mapo `games/` v podatkovni mapi Luanti. V Windows je to
`%APPDATA%\Minetest\games\`, pri prenosni zip različici `games\` neposredno v
mapi z igro. V macOS `~/Library/Application Support/minetest/games/`, v Linuxu
`~/.minetest/games/`.

Razpakirana mapa se mora imenovati **`doggiowars_game`**. Nato zaženi Luanti,
v spodnji vrstici glavnega menija izberi DoggioWars in klikni **New**.

Če imaš še starejšo različico kot **mod** v mapi `mods/`, jo izbriši — od
različice 2.0 je to igra in oboje hkrati nima smisla.
