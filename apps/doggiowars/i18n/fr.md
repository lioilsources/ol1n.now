---
tagline: Combat aérien voxel entre des îles flottantes (jeu autonome pour Luanti)
---
Tu es le chasseur. Pas le pilote dans le chasseur — la machine elle-même. Dans
DoggioWars, on ne marche pas, on ne mine rien et on ne construit rien : tu
voles dès la première seconde.

Sous toi s'étend un ciel rempli d'**îles flottantes** réparties en douze
biomes — volcans dont la lave déborde du cratère, mesas glaciaires couvertes de
stalactites de glace, lagons d'atoll, champignons géants, flèches de cristal
lumineuses. Elles sont générées à partir d'un nombre appelé seed, donc deux
mondes ne se ressemblent jamais, et les îles sont **destructibles** : tes tirs
en arrachent des morceaux qui tombent ensuite dans le vide.

### Qui vole dans le coin

Le ciel n'est pas vide. Des **dragons-serpents** de cinq éléments tournent
autour de leurs îles — de feu au-dessus des volcans et des cendres, de glace
au-dessus des glaciers, d'eau au-dessus des atolls, de boue au-dessus des
marais et électriques au-dessus des cristaux. Des **vers des sables** ondulent
à travers les déserts comme des dauphins, un **gardien de pierre** veille sur
les îles arides, des **méduses** lumineuses flottent au-dessus des vertes, et
avec un peu de chance tu croiseras une **baleine céleste**. Pour l'instant, ils
sont tous pacifiques : ils ne te font aucun mal, et toi non plus. La même seed
donne la même faune.

La touche **Z** ou la commande `/map` ouvre une carte du monde en plein écran :
îles colorées selon leur biome, points pour les créatures et ton vaisseau avec
sa direction de vol.

### Deux machines en une

On passe de l'une à l'autre avec la commande `/mode`, et elles volent de façon
complètement différente.

Le **sous-marin** est le mode par défaut et pardonne les erreurs. Il reste en
vol stationnaire — lâche les commandes et il s'arrête en douceur, ce qui permet
d'observer une île tranquillement ou de manœuvrer entre les rochers au
millimètre. Il sait aussi se décaler sur le côté sans changer de cap.

Le **chasseur**, lui, ne s'arrête jamais. Il garde la vitesse que tu lui donnes
et vire en **s'inclinant** — le stick gauche le couche sur l'aile et le nez
tourne tout seul, d'autant plus volontiers que tu es incliné. Un piqué raide le
pousse au-delà de sa vitesse maximale, une montée lui en fait perdre, si bien
que tu échanges sans cesse altitude contre vitesse. Il sait faire le tonneau,
le looping et le virage Immelmann — et frôler un rocher recharge le boost, donc
prendre des risques paie.

### À la poursuite du lapin doré

La commande `/race` lance une course de lévriers : un lapin doré file à travers
le ciel, fait les mêmes figures que toi, se faufile dans des tunnels percés à
travers les îles et n'attend personne. Soit tu le suis sur tout le parcours,
soit non.

### Commandes

Souris et clavier fonctionnent, mais le jeu est fait pour la **manette** — Xbox
360 et PS4 DualShock via le joystick natif de Luanti, sans outil de mapping
externe. Le stick gauche pilote l'avion, le droit vise avec l'arme
indépendamment de ta direction de vol. Le roulis et le tangage s'affichent sur
un niveau à bulle dans le HUD, car Luanti ne sait pas incliner l'horizon.

### Chat Twitch

Le jeu propose une connexion optionnelle à Twitch via le service
[chatbridge](https://github.com/lioilsources/chatbridge) : les spectateurs
invoquent des créatures dans le monde du streamer avec des commandes de chat
(`!drak`, `!velryba`, `!meduzy`…). Le chat ne peut qu'ajouter des créatures qui
nettoient derrière elles, il ne touche jamais au terrain, et `/chatoff` le
coupe instantanément. Sans réglages dans `minetest.conf`, la connexion reste
désactivée.

### Installation

Il te faut **Luanti 5.12 ou plus récent** et **rien d'autre** — depuis la
version 2.0, DoggioWars est un jeu autonome et non un mod, Minetest Game n'est
donc plus nécessaire.

Décompresse l'archive dans le dossier `games/` de ton répertoire de données
Luanti. Sous Windows, c'est `%APPDATA%\Minetest\games\`, ou pour la version zip
portable, `games\` directement dans le dossier du jeu. Sous macOS
`~/Library/Application Support/minetest/games/`, sous Linux `~/.minetest/games/`.

Le dossier décompressé doit s'appeler **`doggiowars_game`**. Lance ensuite
Luanti, choisis DoggioWars dans la barre du bas du menu principal et clique sur
**New**.

Si tu as encore une ancienne version installée comme **mod** dans le dossier
`mods/`, supprime-la — depuis la version 2.0, c'est un jeu, et avoir les deux en
même temps n'a aucun sens.
