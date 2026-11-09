---
tagline: Un deck de DJ con playlist inteligente y modo fiesta en el que los invitados eligen la música desde el móvil
---
DJfy es una app de DJ para móvil que genera playlists de forma inteligente. Escribes un artista y la app reúne canciones a su alrededor según el tempo y las recomendaciones. Luego las mezcla en decks con pitch, efectos y crossfader.

Integra **Last.fm** (recomendaciones, scrobbling), **GetSongBPM** (datos de BPM) y **SoundCloud** (streaming).

### Modo fiesta

En una fiesta, la música suele ponerla quien tiene el móvil a mano, mientras los demás le gritan peticiones al oído. Con DJfy, el móvil del anfitrión se convierte en la cabina de DJ y el altavoz solo reproduce. Los invitados escanean un código QR y abren la fiesta en el navegador. No necesitan app ni cuenta, basta con escribir su nombre.

- **Los invitados proponen y votan.** Cualquiera puede buscar canciones, añadirlas a la cola y darles un pulgar arriba o abajo. Para que un solo invitado no acapare la cola, cada uno puede tener como máximo tres canciones a la vez.
- **Cola inteligente.** El orden no depende solo de los votos. La app también tiene en cuenta cuánto tiempo lleva esperando una canción, si el mismo artista acaba de sonar y si el tempo encaja con la que está sonando.
- **Mood lock.** El anfitrión fija un rango de BPM, por ejemplo 110–130, y las canciones fuera de él pasan al final de la cola. Así la noche mantiene el ritmo aunque alguien proponga una balada.
- **Auto-DJ.** Las canciones se enlazan con un crossfade suave. Cuando los tempos difieren un 8 % o menos, la app iguala los BPM durante la transición y luego vuelve a la velocidad original.
- **La fiesta no se acaba.** Cuando se vacía la cola, la app añade por su cuenta otra canción parecida a las últimas que sonaron y la marca como Auto. Las canciones de los invitados siempre tienen prioridad y las vetadas no vuelven. Puedes desactivarlo con el interruptor junto a Auto-DJ.
- **El anfitrión tiene la última palabra.** Puede vetar una canción, nombrar a un co-DJ que pueda gestionar la cola o echar a un invitado.
- **Sonido donde quieras.** El móvil suena por auriculares, por un altavoz Bluetooth o por AirPlay, por ejemplo en un Sonos.

El móvil del anfitrión lleva toda la fiesta. Un pequeño servidor en Go entre él y los invitados solo reenvía mensajes y no guarda nada.

Hecho con Flutter. Funciona en móvil y macOS.
