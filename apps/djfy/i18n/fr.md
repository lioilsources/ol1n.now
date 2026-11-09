---
tagline: Un deck de DJ avec playlist intelligente et mode soirée où les invités choisissent la musique depuis leur téléphone
---
DJfy est une app de DJ mobile qui génère des playlists intelligentes. Tu saisis un artiste et l’app assemble des morceaux autour de lui selon le tempo et les recommandations. Ensuite, elle les mixe sur des platines avec pitch, effets et crossfader.

Elle intègre **Last.fm** (recommandations, scrobbling), **GetSongBPM** (données BPM) et **SoundCloud** (streaming).

### Mode soirée

En soirée, c’est généralement celui qui tient le téléphone qui passe la musique, pendant que les autres lui crient leurs demandes à l’oreille. Avec DJfy, le téléphone de l’hôte devient la cabine de DJ et l’enceinte se contente de jouer. Les invités scannent un QR code et ouvrent la soirée dans leur navigateur. Ni app ni compte : un prénom suffit.

- **Les invités proposent et votent.** Chacun peut chercher des morceaux, les ajouter à la file d’attente et mettre un pouce en haut ou en bas. Pour qu’un seul invité n’accapare pas la file, chacun peut y avoir au plus trois morceaux à la fois.
- **File intelligente.** L’ordre ne dépend pas que des votes. L’app tient aussi compte du temps d’attente d’un morceau, du fait que le même artiste vient ou non de passer et de l’accord du tempo avec le morceau en cours.
- **Mood lock.** L’hôte fixe une plage de BPM, par exemple 110–130, et les morceaux hors plage partent en fin de file. La soirée garde ainsi son rythme, même si quelqu’un propose une ballade.
- **Auto-DJ.** Les morceaux s’enchaînent avec un crossfade fluide. Quand les tempos diffèrent de 8 % au plus, l’app aligne les BPM pendant la transition puis revient à la vitesse d’origine.
- **La fête ne s’arrête jamais.** Quand la file se vide, l’app ajoute d’elle-même un morceau proche des derniers joués et le marque Auto. Les morceaux des invités restent toujours prioritaires et ceux qui ont été vetés ne reviennent pas. Tu peux le désactiver avec l’interrupteur à côté d’Auto-DJ.
- **L’hôte a le dernier mot.** Il peut opposer son veto à un morceau, nommer un co-DJ autorisé à gérer la file ou mettre un invité dehors.
- **Le son où tu veux.** Le téléphone joue dans un casque, sur une enceinte en Bluetooth ou via AirPlay, par exemple vers une Sonos.

Le téléphone de l’hôte fait tourner toute la soirée. Un petit serveur en Go entre lui et les invités ne fait que relayer les messages et ne stocke rien.

Développé avec Flutter. Fonctionne sur mobile et macOS.
