---
tagline: Une cuisine sereine au coup de feu — les cuisiniers entendent les commandes, la salle voit dans combien de minutes arrive quoi
---
Au coup de feu, un restaurant perd du temps entre la cuisine et la salle. Les bons s'empilent sur la ligne, les serveurs viennent en cuisine demander quand la table sept sera prête, et les plats déjà prêts refroidissent au passe parce que personne ne les a remarqués. Předávka règle ça sans obliger personne à regarder plus d'écrans : **les cuisiniers entendent les commandes**, **la salle voit sur un seul écran dans combien de minutes arrive quoi et à quelle table**, et un plat prêt au passe réclame tout seul d'être envoyé au bout de quelques minutes.

Tout tourne dans le restaurant sur un seul petit ordinateur : sans cloud, sans abonnement mensuel pour des serveurs, et en tchèque. Si internet tombe, le service continue.

### La cuisine écoute, elle n'a pas à lire

Quand une commande arrive, un haut-parleur au passe dit une phrase courte, par exemple « Table sept : deux svíčková, une escalope. » Les nombres et les noms des plats sont accordés correctement en tchèque (« jedna svíčková, dvě svíčkové, pět svíčkových »). La voix est générée sur place, dans le restaurant, et lors des tests elle était prête à être jouée moins de 0,2 s après l'événement. Les annonces ne se chevauchent jamais : elles sont classées par importance, séparées par une pause, et une ancienne commande déjà affichée à l'écran n'est pas relue pour rien. Le bouton « Encore une fois » répète la dernière annonce.

### Une file où le cuisinier se sert

Chaque poste (grill, chaud, froid, desserts) a sa propre file sur une tablette ou un téléviseur. Le cuisinier prend un plat d'une touche ou d'un appui sur le bump bar. Le système sait ainsi qui cuisine quoi et depuis quand, et si personne ne prend une commande pendant deux minutes, il le signale : « Table sept, grill, attend un cuisinier. »

### La salle sait quand et où porter

L'écran de salle affiche les tables, ce qui part vers elles et dans combien de minutes. L'estimation ne bouge pas sans arrêt (au plus une fois toutes les trente secondes), pour qu'on puisse s'organiser avec. En haut, il y a toujours ce qu'il faut récupérer. Au passe, les plats « vieillissent » : au bout de trois minutes, on entend « Table sept prête, trois minutes au passe », et l'annonce se répète jusqu'à ce que quelqu'un l'emporte.

### Les estimations apprennent de ta propre cuisine

Au départ, le chef saisit une fois combien de temps prend chaque plat. Ensuite, Předávka chronomètre chaque plat de sa prise en charge jusqu'à ce qu'il soit prêt et, après cinq mesures, utilise les temps réels de cette cuisine. L'estimation pour le client tient ainsi compte de ce qui est devant lui dans la file et du nombre de cuisiniers qui travaillent en même temps au poste.

### Fonctionne avec n'importe quelle caisse

Les commandes peuvent être reprises de l'imprimante à bons : Předávka se branche entre la caisse et l'imprimante, le bon s'imprime comme avant, et elle y lit la table et les plats. Aucune intégration avec une caisse particulière n'est donc nécessaire. On peut aussi saisir les commandes directement depuis la tablette de salle.

### Photos des plats

Un article du menu peut avoir une image ou un emoji. Les écrans dans le navigateur les affichent sur les boutons de commande, sur les fiches en cuisine, au passe et en salle. Le même système peut aussi tourner à la maison, comme un jeu de restaurant pour enfants : une cuisine, un menu enfant illustré, un ordinateur qui sert à la fois de serveur et de haut-parleur, et les autres appareils ouvrent simplement un navigateur sur le même Wi-Fi.

La description détaillée des fonctions et du déroulement d'un service se trouve sur la page [Comment ça marche](predavka-features.html) (en tchèque), avec trois moments de la soirée : une file vide, quelques tables et « on est débordés ! ».

### État

Předávka est un prototype fonctionnel abouti : serveur, voix, écoute de l'imprimante, file, estimations, envois par plats et écrans (une appli pour Android TV et tablettes ainsi qu'une version navigateur) sont réalisés et testés dans une simulation de service. **Elle n'a pas encore tourné dans un vrai restaurant.** La prochaine étape est un pilote dans une cuisine : l'intelligibilité de la voix dans le bruit de la hotte, la sonorisation de la cuisine avec plusieurs haut-parleurs et la lisibilité des écrans sur de vrais téléviseurs.

Les captures d'écran viennent de vrais écrans. Ce qu'elles montrent a été obtenu en simulant un service : menu et tables inventés, temps figé à un moment précis de la soirée.
