---
tagline: Dogfight voxel printre insule zburătoare (joc de sine stătător pentru Luanti)
---
Tu ești avionul de vânătoare. Nu pilotul din el — mașinăria însăși. În
DoggioWars nu se merge pe jos, nu se minează și nu se construiește nimic: zbori
din prima secundă.

Sub tine se întinde un cer plin de **insule zburătoare** în douăsprezece
biomuri — vulcani cu lava revărsându-se peste crater, platouri glaciare cu
țurțuri, lagune de atol, ciuperci uriașe, turnuri de cristal strălucitoare. Sunt
generate dintr-un număr numit seed, așa că nu există două lumi la fel, iar
insulele sunt **distructibile**: gloanțele tale le rup bucăți, care apoi cad în
gol.

### Cine zboară pe aici

Cerul nu e gol. În jurul insulelor lor se rotesc **dragoni-șarpe** din cinci
elemente — de foc deasupra vulcanilor și a cenușii, de gheață deasupra
ghețarilor, de apă deasupra atolilor, de noroi deasupra mlaștinilor și
electrici deasupra cristalelor. Prin deșerturi înoată **viermi de nisip** ca
delfinii, peste insulele sterpe veghează un **gardian de piatră**, deasupra
celor verzi plutesc **meduze** luminoase, iar cu puțin noroc te întâlnești cu o
**balenă cerească**. Deocamdată toți sunt pașnici: nu-ți fac rău și nici tu
lor. Același seed dă aceeași populație.

Tasta **Z** sau comanda `/map` deschide o hartă a lumii pe tot ecranul: insule
colorate după biom, puncte pentru creaturi și nava ta cu direcția de zbor.

### Două mașinării într-una

Le schimbi cu comanda `/mode` și zboară complet diferit.

**Submarinul** e modul implicit și iartă greșelile. Stă suspendat pe loc — dacă
lași comenzile, se oprește lin, așa că poți privi liniștit o insulă sau poți
manevra printre stânci milimetru cu milimetru. Știe și să se ferească într-o
parte fără să schimbe cursul.

**Avionul de vânătoare** nu se oprește niciodată. Păstrează viteza pe care i-o
setezi și virează prin **înclinare** — stickul stâng îl culcă pe aripă, iar
botul se întoarce singur, cu atât mai ușor cu cât ești mai înclinat. Un picaj
abrupt îl duce peste viteza maximă, urcarea în schimb îi mănâncă din viteză,
așa că mereu schimbi altitudine pe viteză și invers. Face tonou (barrel roll),
looping și întoarcere Immelmann — iar zborul razant pe lângă o stâncă încarcă
boostul, deci riscul se merită.

### Pe urmele iepurelui de aur

Comanda `/race` pornește o cursă de ogari: un iepure de aur gonește pe cer,
face aceleași trucuri ca tine, se strecoară prin tuneluri săpate prin insule și
nu așteaptă. Ori te ții după el pe tot traseul, ori nu.

### Control

Mouse-ul și tastatura merg, dar jocul e făcut pentru **gamepad** — Xbox 360 și
PS4 DualShock prin suportul nativ de joystick din Luanti, fără mapper extern.
Stickul stâng pilotează avionul, cel drept țintește arma indiferent încotro
zbori. Înclinarea laterală și tangajul le arată o nivelă în HUD, pentru că
Luanti nu poate înclina orizontul.

### Chat Twitch

Jocul are o conexiune opțională cu Twitch prin serviciul
[chatbridge](https://github.com/lioilsources/chatbridge): spectatorii cheamă
creaturi în lumea streamerului prin comenzi în chat (`!drak`, `!velryba`,
`!meduzy`…). Chatul poate doar să adauge creaturi care fac curat după ele, nu
atinge niciodată terenul, iar `/chatoff` îl oprește instantaneu. Fără setări în
`minetest.conf`, conexiunea e oprită.

### Instalare

Ai nevoie de **Luanti 5.12 sau mai nou** și de **nimic altceva** — din versiunea
2.0, DoggioWars e un joc de sine stătător, nu un mod, așa că Minetest Game nu mai
e necesar.

Dezarhivează arhiva în folderul `games/` din directorul de date Luanti. Pe
Windows e `%APPDATA%\Minetest\games\`, la versiunea zip portabilă `games\`
direct în folderul jocului. Pe macOS `~/Library/Application Support/minetest/games/`,
pe Linux `~/.minetest/games/`.

Folderul dezarhivat trebuie să se numească **`doggiowars_game`**. Apoi pornește
Luanti, alege DoggioWars din bara de jos a meniului principal și apasă **New**.

Dacă mai ai o versiune veche instalată ca **mod** în folderul `mods/`, șterge-o —
din versiunea 2.0 e un joc, iar ambele deodată n-au sens.
