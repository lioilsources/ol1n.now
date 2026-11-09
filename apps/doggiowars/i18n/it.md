---
tagline: Dogfight voxel tra isole volanti (gioco autonomo per Luanti)
---
Sei il caccia. Non il pilota dentro il caccia: la macchina stessa. In
DoggioWars non si cammina, non si scava e non si costruisce: voli dal primo
secondo.

Sotto di te si stende un cielo pieno di **isole volanti** in dodici biomi:
vulcani con la lava che trabocca dal cratere, mesa glaciali coperte di
ghiaccioli, lagune di atolli, funghi giganti, guglie di cristallo luminose.
Vengono generate da un numero chiamato seed, quindi non esistono due mondi
uguali, e le isole sono **distruttibili**: i tuoi colpi ne staccano pezzi che
poi precipitano nel vuoto.

### Chi vola qui intorno

Il cielo non è vuoto. Attorno alle loro isole volteggiano **draghi serpente**
di cinque elementi: di fuoco sopra vulcani e cenere, di ghiaccio sopra i
ghiacciai, d'acqua sopra gli atolli, di fango sopra le paludi ed elettrici
sopra i cristalli. Nei deserti i **vermi delle sabbie** emergono e si
rituffano come delfini, sulle isole brulle veglia un **guardiano di pietra**,
sopra quelle verdi fluttuano **meduse** luminose e, con un po' di fortuna,
incontrerai una **balena celeste**. Per ora sono tutti pacifici: non ti fanno
del male e tu non lo fai a loro. Lo stesso seed dà la stessa fauna.

Il tasto **Z** o il comando `/map` apre una mappa del mondo a schermo intero:
isole colorate per bioma, puntini per le creature e la tua nave con la
direzione di volo.

### Due macchine in una

Si passa dall'una all'altra con il comando `/mode`, e volano in modo
completamente diverso.

Il **sottomarino** è la modalità predefinita e perdona gli errori. Resta
sospeso sul posto: se lasci i comandi si ferma dolcemente, così puoi
osservare un'isola con calma o manovrare tra le rocce al millimetro. Sa anche
spostarsi di lato senza cambiare rotta.

Il **caccia** non si ferma mai. Mantiene la velocità che gli imposti e vira
**inclinandosi**: lo stick sinistro lo piega su un'ala e il muso gira da solo,
tanto più volentieri quanto più sei inclinato. Una picchiata ripida lo spinge
oltre la velocità massima, mentre la salita gliene toglie, quindi scambi
continuamente quota e velocità. Sa fare il tonneau, il looping e la virata
Immelmann, e passare rasente a una roccia carica il boost: rischiare conviene.

### A caccia del coniglio d'oro

Il comando `/race` avvia una corsa di levrieri: un coniglio d'oro sfreccia nel
cielo, fa le tue stesse acrobazie, si infila nei tunnel scavati attraverso le
isole e non aspetta. O gli stai dietro per tutto il percorso, o no.

### Comandi

Mouse e tastiera funzionano, ma il gioco è fatto per il **gamepad**: Xbox 360
e PS4 DualShock tramite il joystick nativo di Luanti, senza mapper esterni. Lo
stick sinistro guida l'aereo, quello destro punta l'arma indipendentemente
dalla direzione in cui voli. Rollio e beccheggio sono indicati da una livella
nell'HUD, perché Luanti non sa inclinare l'orizzonte.

### Chat di Twitch

Il gioco ha un collegamento opzionale con Twitch tramite il servizio
[chatbridge](https://github.com/lioilsources/chatbridge): gli spettatori, con i
comandi in chat (`!drak`, `!velryba`, `!meduzy`…), evocano creature nel mondo
dello streamer. La chat può solo aggiungere creature che si ripuliscono da
sole, non tocca mai il terreno, e `/chatoff` la spegne all'istante. Senza
impostazioni in `minetest.conf` il collegamento è disattivato.

### Installazione

Ti serve **Luanti 5.12 o successivo** e **nient'altro**: dalla versione 2.0
DoggioWars è un gioco autonomo, non una mod, quindi Minetest Game non serve
più.

Estrai l'archivio nella cartella `games/` della tua directory dati di Luanti.
Su Windows è `%APPDATA%\Minetest\games\`, nella versione zip portatile
`games\` direttamente nella cartella del gioco. Su macOS
`~/Library/Application Support/minetest/games/`, su Linux `~/.minetest/games/`.

La cartella estratta deve chiamarsi **`doggiowars_game`**. Poi avvia Luanti,
scegli DoggioWars nella barra in basso del menu principale e premi **New**.

Se hai ancora una versione vecchia installata come **mod** nella cartella
`mods/`, cancellala: dalla versione 2.0 è un gioco e averli entrambi non ha
senso.
