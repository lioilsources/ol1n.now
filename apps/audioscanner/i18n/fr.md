---
tagline: Une carte acoustique de ta pièce avec le micro du téléphone
---
Tu diffuses un signal de test sur tes enceintes, tu parcours la pièce avec ton
téléphone et le spectre est mesuré à chaque point. Pendant ce temps, le suivi AR
repère où tu te trouves. Le résultat est une carte thermique sur le plan : où
les basses résonnent, où elles disparaissent, où placer les enceintes et où
placer l'auditeur.

**Ce n'est pas un remplacement de REW avec un micro calibré.** C'est un outil
relatif : des différences entre les endroits d'une même pièce. Un SPL absolu
depuis un téléphone non calibré n'existe pas, et l'appli ne le prétend nulle
part.

### Mesure

Sonomètre SPL et RTA sur trente et une bandes de tiers d'octave de 20 Hz à
20 kHz, FFT 8192 avec fenêtre de Hann et moyennage énergétique. Les signaux de
test s'exportent en WAV : bruit rose et sweep logarithmique, canal gauche et
canal droit séparément.

Le RTA propose le maintien des crêtes, les traces de maximum et de minimum et le
gel ; une capture gelée peut être enregistrée comme point. Un fichier de
calibration du micro (UMIK ou REW) et un offset SPL peuvent être chargés, mais
ils ne modifient jamais les données enregistrées.

Tu mesures un point d'un simple toucher, avec trois secondes de moyennage, ou tu
laisses l'appli mesurer en continu tous les demi-mètres. Les points donnent une
carte thermique IDW avec un curseur pour parcourir les bandes et une
recommandation de la place la plus linéaire.

À partir du sweep logarithmique, la déconvolution de Farina calcule la réponse
impulsionnelle : son direct, première réflexion et réponse en fréquence avec la
phase, avec une fenêtre de gating réglable et un lissage de 1/3 à 1/24 d'octave.
S'y ajoutent la décroissance par octave (EDT, T20, T30), C50 et C80, la courbe
de Schroeder, le graphe de l'impulsion, l'ETC et le spectrogramme. Le même sweep
donne aussi la distorsion HD2 et HD3. Quand une réflexion arrive avant que
l'impulsion ait fini de résonner, on ne peut pas la séparer : l'appli préfère ne
rien renvoyer plutôt que de prendre un lobe secondaire pour un mur.

Deux points quelconques peuvent être comparés, même entre sessions. À l'export :
FRD pour REW et VituixCAD, les impulsions et toute la session en JSON.

### Concevoir l'installation

Avec le LiDAR, elle récupère la géométrie de la pièce via RoomPlan, calcule les
modes par sommation modale, effectue un « subwoofer crawl » logiciel, trouve
les points de première réflexion par la méthode du miroir et vérifie les angles
par rapport aux recommandations Dolby. Elle peut en tirer des réglages pour
l'Integra DRX-8.4, y compris ses quinze bandes d'EQ.

À la position d'écoute, chaque canal est mesuré séparément par un sweep. L'EQ
part de la moyenne des points autour de l'auditeur ; une bande qui varie de plus
de 6 dB entre eux ne reçoit que la moitié de la correction. On coupe largement,
on remonte à peine, et on ne touche à rien au-dessus de la fréquence de
Schroeder. L'aperçu montre l'avant, la cible et l'après prévu, et la courbe
cible est modifiable. Une deuxième mesure, après avoir saisi l'EQ dans
l'ampli-tuner, montre ce que son filtre a réellement fait.

### Ce que l'appli dit franchement

Un seul micro ne peut pas localiser une source : seule la position du téléphone
est enregistrée, jamais son orientation comme direction du son. Quand le système
traite le signal en douce — AGC, réduction de bruit, annulation d'écho —, la
couche native indique ce qu'elle a réellement autorisé : une mesure à travers
l'AGC n'est pas une mesure moins bonne, c'est une mesure de l'AGC. Un micro
Bluetooth est détecté et signalé par un avertissement.

### Ce qui manque volontairement

La lecture du signal depuis le téléphone. Le haut-parleur d'un téléphone
s'arrête vers 500 Hz, donc au-dessus de tous les modes qui valent la peine d'être
cherchés : exporter un WAV vers une vraie installation est la seule voie qui ait
du sens.

RoomPlan n'existe pas sur Android. À la place, les plans verticaux d'ARCore sont
assemblés en boîte : ils voient les murs que la caméra a regardés, rarement les
coins, jamais derrière les meubles. Ça suffit pour nommer un mode, pas pour les
points de réflexion — et la géométrie porte cette information sur elle-même.

Correction de phase, EQ paramétrique et plusieurs subwoofers. L'ampli-tuner
n'accepte que la distance et quinze bandes graphiques ; au-delà, il faut un DSP
externe et l'export FRD vers REW.
