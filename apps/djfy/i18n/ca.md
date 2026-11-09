---
tagline: Un deck de DJ amb playlist intel·ligent i mode festa en què els convidats trien la música des del mòbil
---
DJfy és una app de DJ per al mòbil que genera playlists de manera intel·ligent. Escrius un artista i l'app hi aplega cançons al voltant segons el tempo i les recomanacions. Després les mescla en decks amb pitch, efectes i crossfader.

Integra **Last.fm** (recomanacions, scrobbling), **GetSongBPM** (dades de BPM) i **SoundCloud** (streaming).

### Mode festa

En una festa, la música sol posar-la qui té el mòbil a prop, mentre els altres li criden peticions a l'orella. Amb DJfy, el mòbil de l'amfitrió es converteix en la cabina de DJ i l'altaveu només reprodueix. Els convidats escanegen un codi QR i obren la festa al navegador. No necessiten app ni compte, n'hi ha prou amb un nom.

- **Els convidats proposen i voten.** Tothom pot cercar cançons, afegir-les a la cua i donar-los un polze amunt o avall. Perquè un sol convidat no acapari la cua, cadascú hi pot tenir com a màxim tres cançons alhora.
- **Cua intel·ligent.** L'ordre no depèn només dels vots. L'app també té en compte quant de temps fa que espera una cançó, si el mateix artista acaba de sonar i si el tempo encaixa amb la que sona ara.
- **Mood lock.** L'amfitrió fixa un interval de BPM, per exemple 110–130, i les cançons de fora van al final de la cua. Així la nit manté el ritme encara que algú proposi una balada.
- **Auto-DJ.** Les cançons s'encadenen amb un crossfade suau. Quan els tempos difereixen un 8 % o menys, l'app iguala els BPM durant la transició i després torna a la velocitat original.
- **La festa no s'acaba.** Quan la cua es buida, l'app hi afegeix tota sola una altra cançó, semblant a les últimes que han sonat, i la marca com a Auto. Les cançons dels convidats sempre tenen prioritat i les vetades ja no tornen. Ho pots desactivar amb l'interruptor del costat d'Auto-DJ.
- **L'amfitrió té l'última paraula.** Pot vetar una cançó, nomenar un co-DJ que pugui gestionar la cua o fer fora un convidat.
- **So a qualsevol lloc.** El mòbil sona pels auriculars, per un altaveu Bluetooth o per AirPlay, per exemple en un Sonos.

El mòbil de l'amfitrió porta tota la festa. Un petit servidor en Go entre ell i els convidats només reenvia missatges i no desa res.

Fet amb Flutter. Funciona al mòbil i a macOS.
