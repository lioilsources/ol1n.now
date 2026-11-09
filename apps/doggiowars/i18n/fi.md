---
tagline: Vokselikaartotaistelua leijuvien taivassaarten keskellä (itsenäinen peli Luantille)
---
Sinä olet hävittäjä. Et lentäjä hävittäjässä — itse kone. DoggioWarsissa ei
kävellä, ei louhita eikä rakenneta: lennät ensimmäisestä sekunnista lähtien.

Allasi levittäytyy taivas täynnä **leijuvia saaria** kahdessatoista
biomissa — tulivuoria, joiden kraatterista laava valuu yli, jääpuikkojen
koristamia jäätikköylänköjä, atollien laguuneja, jättisieniä, hehkuvia
kristallitorneja. Ne syntyvät luvusta, jota kutsutaan seediksi, joten kahta
samanlaista maailmaa ei ole, ja saaret ovat **tuhottavissa**: laukauksesi
irrottavat niistä paloja, jotka syöksyvät tyhjyyteen.

### Keitä täällä lentää

Taivas ei ole tyhjä. Saariensa ympärillä kiertelee viiden elementin
**käärmelohikäärmeitä** — tulinen tulivuorten ja tuhkan yllä, jäinen
jäätiköiden, vetinen atollien, mutainen soiden ja sähköinen kristallien yllä.
Aavikoiden halki uivat **hiekkamadot** kuin delfiinit, karujen saarten yllä
vartioi **kivivartija**, vihreiden yllä leijuu hehkuvia **meduusoja**, ja
hyvällä tuurilla kohtaat **taivasvalaan**. Toistaiseksi kaikki ovat
rauhallisia: ne eivät vahingoita sinua, etkä sinä niitä. Sama seed antaa saman
väen.

**Z**-näppäin tai komento `/map` avaa koko näytön maailmankartan: saaret
biomin mukaan väritettyinä, pisteet olennoille ja aluksesi lentosuuntineen.

### Kaksi konetta yhdessä

Niiden välillä vaihdetaan komennolla `/mode`, ja ne lentävät aivan eri
tavalla.

**Sukellusvene** on oletus ja antaa virheet anteeksi. Se leijuu paikallaan —
kun päästät ohjaimista irti, se pysähtyy pehmeästi, joten voit rauhassa
katsella saarta tai pujotella kallioiden välissä millimetri kerrallaan. Se
osaa myös väistää sivulle muuttamatta suuntaa.

**Hävittäjä** ei pysähdy koskaan. Se pitää asettamasi nopeuden ja kääntyy
**kallistamalla** — vasen sauva kallistaa sen siivelleen ja nokka kääntyy
itsestään, sitä halukkaammin mitä jyrkemmin kallistat. Jyrkkä syöksy vie sen
yli huippunopeuden, nousu taas syö vauhtia, joten vaihdat jatkuvasti korkeutta
nopeuteen ja takaisin. Se osaa tynnyrikierteen (barrel roll), silmukan ja
Immelmann-käännöksen — ja lento läheltä kalliota lataa boostia, joten riskin
ottaminen kannattaa.

### Kultaisen kanin perässä

Komento `/race` käynnistää vinttikoirakilpailun: kultainen kani kiitää
taivaalla, osaa samat temput kuin sinä, pujottelee saarten läpi porattuja
tunneleita eikä odota. Joko pysyt sen kannoilla koko radan, tai et.

### Ohjaus

Hiiri ja näppäimistö toimivat, mutta peli on tehty **peliohjaimelle** — Xbox
360 ja PS4 DualShock Luantin oman ohjaintuen kautta, ei ulkoista mapperia.
Vasen sauva ohjaa konetta, oikea tähtää asetta riippumatta siitä, mihin
lennät. Kallistuksen ja nokan asennon näyttää vesivaaka HUDissa, koska Luanti
ei osaa kallistaa horisonttia.

### Twitch-chat

Pelissä on valinnainen Twitch-yhteys
[chatbridge](https://github.com/lioilsources/chatbridge)-palvelun kautta:
katsojat kutsuvat chat-komennoilla (`!drak`, `!velryba`, `!meduzy`…) olentoja
striimaajan maailmaan. Chat voi vain lisätä olentoja, jotka siivoavat
jälkensä, se ei koske maastoon, ja `/chatoff` sammuttaa sen heti. Ilman
asetuksia tiedostossa `minetest.conf` yhteys on pois päältä.

### Asennus

Tarvitset **Luanti 5.12:n tai uudemman** etkä **mitään muuta** — versiosta 2.0
lähtien DoggioWars on itsenäinen peli eikä modi, joten Minetest Gamea ei enää
tarvita.

Pura arkisto Luantin datahakemiston kansioon `games/`. Windowsissa se on
`%APPDATA%\Minetest\games\`, siirrettävässä zip-versiossa `games\` suoraan
pelin kansiossa. macOS:ssä `~/Library/Application Support/minetest/games/`,
Linuxissa `~/.minetest/games/`.

Puretun kansion nimen täytyy olla **`doggiowars_game`**. Käynnistä sitten
Luanti, valitse päävalikon alapalkista DoggioWars ja paina **New**.

Jos sinulla on vielä vanhempi versio **modina** kansiossa `mods/`, poista
se — versiosta 2.0 lähtien se on peli, eikä molempia kannata pitää yhtä aikaa.
