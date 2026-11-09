---
tagline: Combats aeris vòxel entre illes flotants (joc independent per a Luanti)
---
Ets el caça. No el pilot dins del caça: la màquina mateixa. A DoggioWars no es
camina, no es pica ni es construeix: voles des del primer segon.

Sota teu s'estén un cel ple d'**illes flotants** en dotze biomes: volcans amb
la lava vessant pel cràter, mesetes glacials amb caramells, llacunes d'atol,
bolets gegants, agulles de cristall resplendents. Es generen a partir d'un
nombre anomenat llavor, així que no hi ha dos mons iguals, i les illes són
**destructibles**: els teus trets n'arrenquen trossos que després cauen al
buit.

### Qui vola per aquí

El cel no és buit. Al voltant de les seves illes giren **dracs serp** de cinc
elements: de foc sobre volcans i cendra, de gel sobre glaceres, d'aigua sobre
atols, de fang sobre aiguamolls i elèctrics sobre cristalls. Pels deserts
neden **cucs de sorra** com dofins, sobre les illes ermes vigila un **guardià
de pedra**, sobre les verdes suren **meduses** lluminoses i, amb una mica de
sort, et creuaràs amb una **balena celeste**. De moment tots són pacífics: no
et fan mal i tu tampoc a ells. La mateixa llavor dona la mateixa fauna.

La tecla **Z** o l'ordre `/map` obre un mapa del món a pantalla completa:
illes acolorides per bioma, punts per a les criatures i la teva nau amb el
rumb.

### Dues màquines en una

Es canvia amb l'ordre `/mode`, i volen de manera completament diferent.

El **submarí** és el mode per defecte i perdona els errors. Es queda suspès
al lloc: si deixes anar els controls, s'atura suaument, així que pots mirar
una illa amb calma o maniobrar entre roques mil·límetre a mil·límetre. També
sap desplaçar-se de costat sense canviar el rumb.

El **caça** no s'atura mai. Manté la velocitat que li marquis i gira
**inclinant-se**: l'estic esquerre el posa sobre una ala i el morro gira sol,
amb més ganes com més inclinat vas. Un picat pronunciat l'empeny per sobre de
la velocitat màxima i pujar li treu velocitat, així que sempre estàs canviant
altura per velocitat. Fa la tonell, el looping i el gir Immelmann, i passar
fregant una roca carrega el boost, així que arriscar-se val la pena.

### A la caça del conill daurat

L'ordre `/race` engega una cursa de llebrers: un conill daurat travessa el cel
a tota velocitat, fa els mateixos trucs que tu, s'esmuny per túnels foradats a
través de les illes i no espera. O el segueixes durant tot el recorregut, o
no.

### Controls

El ratolí i el teclat funcionen, però el joc està fet per a **comandament**:
Xbox 360 i PS4 DualShock mitjançant el joystick natiu de Luanti, sense
mapejador extern. L'estic esquerre pilota l'avió i el dret apunta l'arma, sigui
on sigui que vagis. L'alabeig i el capcineig es veuen en un nivell de bombolla
a l'HUD, perquè Luanti no sap inclinar l'horitzó.

### Xat de Twitch

El joc inclou una connexió opcional amb Twitch a través del servei
[chatbridge](https://github.com/lioilsources/chatbridge): els espectadors
invoquen criatures al món de l'streamer amb ordres al xat (`!drak`, `!velryba`,
`!meduzy`…). El xat només pot afegir criatures que netegen el que deixen, mai
no toca el terreny, i `/chatoff` l'apaga a l'instant. Sense configuració a
`minetest.conf`, la connexió està desactivada.

### Instal·lació

Necessites **Luanti 5.12 o posterior** i **res més**: des de la versió 2.0,
DoggioWars és un joc independent, no un mod, així que Minetest Game ja no cal.

Descomprimeix l'arxiu a la carpeta `games/` del directori de dades de Luanti.
A Windows és `%APPDATA%\Minetest\games\`, i a la versió zip portàtil, `games\`
directament a la carpeta del joc. A macOS
`~/Library/Application Support/minetest/games/`, a Linux `~/.minetest/games/`.

La carpeta descomprimida s'ha de dir **`doggiowars_game`**. Després obre
Luanti, tria DoggioWars a la barra inferior del menú principal i prem **New**.

Si encara tens una versió antiga instal·lada com a **mod** a la carpeta
`mods/`, esborra-la: des de la versió 2.0 és un joc, i tenir-los tots dos alhora
no té sentit.
