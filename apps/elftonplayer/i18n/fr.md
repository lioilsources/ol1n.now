---
tagline: Lecteur bit-perfect pour DAC USB — fichier, RAM, ASIO et rien entre les deux
---
Elfton Player est un lecteur de musique locale pour Windows 11 qui n'a qu'une
priorité : que le DAC USB reçoive exactement les échantillons contenus dans le fichier.
Le chemin du signal est **fichier → décodeur → RAM → ASIO → DAC**. Pas de réglage de
volume, pas d'égaliseur, pas de rééchantillonnage, pas de streaming. Le volume se règle
sur le convertisseur ou l'amplificateur.

### Ce qu'il sait faire

- **Sortie bit-perfect** via ASIO, ou WASAPI en mode exclusif. À côté du morceau, tu vois
  toute la chaîne (`FLAC 24/96k → 32-bit · bit-perfect`), et le point vert s'éteint dès
  que quoi que ce soit touche au signal.
- **Lecture depuis la mémoire.** Le morceau est entièrement décodé en RAM, donc le disque
  ne travaille pas pendant la lecture ; le morceau suivant est chargé à l'avance et
  s'enchaîne **sans blanc**.
- **Boucle A-B précise à l'échantillon près**, avec des points ajustables à la
  milliseconde — pour travailler un passage ou comparer deux endroits d'un enregistrement.
- **Bibliothèque par dossiers** : l'arborescence telle que tu l'as sur ton disque,
  pochettes, recherche, file d'attente, favoris, historique, playlists M3U, albums en un
  seul fichier avec CUE, paroles synchronisées depuis LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg et DSD** (en natif, en DoP ou converti en PCM).
- **Mono (L+R)/2** comme seule intervention sur le signal, toujours clairement signalée.
- **Les boutons G et D** ne font jouer qu'une enceinte et coupent l'autre. Avec le mono
  activé, les deux jouent la même chose : depuis ton fauteuil, tu peux comparer
  instantanément au téléphone le côté gauche et le côté droit de ton installation (câbles,
  composants) ; sans mono, tu n'entends que le canal gauche ou que le canal droit de
  l'enregistrement.
- **Une barre de progression dessinée selon le volume du morceau**, sur toute la largeur
  de la fenêtre : une intro silencieuse se voit et se saute d'un clic.
- **Un cœur sur chaque morceau** et un filtre « favoris uniquement » directement dans
  l'album.
- **Trois thèmes** : sombre, noir et clair.
- **Télécommande sur ton téléphone** : Elfton Remote s'appaire par QR code via ton réseau
  domestique et fait tout ce que fait la fenêtre sur l'ordinateur.

### Mode lecture

Si tu le souhaites, il change le mode de gestion de l'alimentation pendant la lecture,
désactive la suspension sélective USB et le parcage des cœurs, puis remet tout en place
à la fin. Soyons honnêtes : avec un DAC USB asynchrone, c'est le convertisseur qui tient
l'horloge, donc ces réglages n'ont aucun effet mesurable sur le son. Ils sont
facultatifs, chacun est consigné dans le log et aucun n'est nécessaire.

Il en va de même pour les « rituels » repris du lecteur Bug head, qui se trouvent dans
les réglages et sont désactivés par défaut : verrouiller la musique en RAM, une pause
après le chargement du morceau et le lancement de ton propre programme auxiliaire (par
exemple MinorityClean) en même temps que le lecteur. MinorityClean n'est pas fourni.

### État

**Version 0.2, préversion.** La première version a tourné sous Windows 11 chez un
auditeur via ASIO (Behringer UMC204HD et SMSL D200) : le WAV 24/192 est sorti en ASIO
32 bits sans conversion et sans coupure, et la commande depuis le téléphone fonctionne.
C'est ce que le lecteur lui-même indique sur le chemin du signal ; personne n'a encore
capturé la sortie ni ne l'a comparée bit à bit. Les nouveautés de la 0.2 sont couvertes
par des tests, mais n'ont pas encore tourné sous Windows. Les captures d'écran viennent de
la première version, d'un build de développement macOS avec une bibliothèque d'exemple —
la barre de volume et le sélecteur G/D n'y figurent pas encore.

Le build Windows est un zip : décompresse-le et lance `Elfton Player.exe`, ou exécute le
`install.ps1` fourni, qui ajoute un raccourci au menu Démarrer. Rien d'autre n'est
installé. Pour l'ASIO, le pilote du convertisseur doit être installé ; sans lui, le
lecteur propose WASAPI. La télécommande pour téléphone n'existe pour l'instant que sur
Android (APK) ; la version iOS est prête dans le code, mais n'a pas de build public.

Le moteur est écrit en Go au-dessus de FFmpeg (LGPL, lié dynamiquement), l'interface en
Flutter.
