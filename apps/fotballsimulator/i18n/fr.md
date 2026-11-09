---
tagline: Une volée d'un seul glissement du doigt — où le cou-de-pied touche le ballon, avec quel effet et à quelle milliseconde
---
Fotball Simulator simule un seul et unique geste : la volée. Le ballon rebondit devant toi, chaque fois différemment, et d'un glissement du doigt tu l'envoies vers le but. Pas d'équipe, pas de match, juste la question de savoir où et quand ton cou-de-pied touche le ballon. Tout le reste, la trajectoire, l'effet, le rebond et le fait que ce soit un but ou non, en découle par la physique.

### Un geste, quatre décisions

En bas de l'écran il y a un gros ballon, et un glissement dessus dit tout à la fois :

- **Là où tu poses le doigt**, c'est là que le cou-de-pied frappe le ballon. Sous le centre le ballon monte, au-dessus tu l'envoies dans le sol, sur le côté il prend de la rotation.
- **La courbe du geste**, c'est l'effet. Plus tu courbes ton geste, plus le ballon s'enroule en vol.
- **La vitesse du geste**, c'est la puissance de la frappe.
- **L'instant où tu lèves le doigt**, c'est le moment du contact. La volée a une fenêtre : après le rebond le ballon monte, s'arrête et retombe, et le moment idéal, c'est quand il redescend à hauteur du cou-de-pied. Le jeu le connaît d'avance, car il calcule la trajectoire du ballon au moment de la remise en jeu.

L'écart se mesure en millisecondes. Jusqu'à ±30 ms c'est PERFECT, puis GOOD, LATE et EARLY. Trop tard, c'est trop tard : le cou-de-pied frappe par-dessus le ballon qui retombe, il prend un effet lifté et finit dans le sol ou n'arrive pas jusqu'au but. Si tu le rates complètement, tu frappes dans le vide.

### Arrêt sur image et vol

Au moment du contact, le monde s'arrête une fraction de seconde. Sur le ballon brille le point où le cou-de-pied l'a touché, et une flèche montre où il part. En haut s'affichent la vitesse en km/h, la rotation en tours par seconde et la note du timing avec l'écart exact. Puis le ballon s'envole en laissant une traînée, on voit donc comment il s'enroule. Le résultat est BUT, À CÔTÉ ou TROP COURT, et peu après le ballon suivant arrive en rebondissant.

Si tu as besoin de plus de temps, active le **ralenti** : dès que ton doigt touche l'écran, le jeu ralentit pour que tu puisses terminer ton geste. Mais le timing est mesuré en temps de jeu, donc ralentir ne t'aide pas à tricher.

### Physique

La trajectoire du ballon est un calcul maison, pas la physique d'un moteur : gravité, résistance de l'air, effet Magnus (c'est pour ça qu'un ballon qui tourne s'enroule) et rotation qui s'amortit progressivement. Le rebond sur la pelouse fait perdre de la hauteur et la rotation se transforme en direction. Le contact tient compte de la vitesse d'arrivée du ballon, si bien qu'un ballon frappé mollement rebondit simplement au lieu de rester suspendu en l'air. Les résultats sont garantis par des tests automatiques face à une implémentation de référence indépendante du même modèle en Python.

Le jeu a été créé avec Godot 4.7, et sur le téléphone tourne sa réécriture en Flutter, avec les mêmes constantes et les mêmes tests. La scène est dessinée par une projection en perspective maison, sans moteur 3D.

### État

La première phase est terminée : une boucle jouable remise en jeu, frappe, arrêt sur image, vol et résultat. Le terrain et le but restent simples pour l'instant ; il manque encore une jambe qui arme sa frappe, un filet qui se gonfle sur un but et une caméra qui suit le ballon. Viendront ensuite le réglage des sensations, une carte de chaleur des tirs au but et des statistiques.

L'APK ci-dessous est une version de test (alpha). Sur iPhone, pour l'instant uniquement via TestFlight pour les testeurs.
