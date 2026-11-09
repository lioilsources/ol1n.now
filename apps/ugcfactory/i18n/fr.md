---
tagline: Une usine à accessoires Roblox — du prompt au modèle 3D sans modélisation à la main
---
UGC Factory fabrique des accessoires d’avatar pour le Roblox Marketplace. Tu écris ce que tu veux —
*« un casque de samouraï ouvragé aux accents néon »* — et à l’autre bout sort un
modèle 3D texturé prêt à être mis en ligne. Aucune modélisation à la main.

## Comment ça tourne

Le travail est réparti sur trois machines. Un **DGX Spark** avec GPU dessine le concept (Illustrious pour les objets,
Juggernaut XL pour ce qui se porte sur le corps — choisi selon la catégorie), détoure le fond et transforme l’image
en modèle 3D. Un **NAS** gère la file d’attente, le catalogue et un Blender headless qui fait entrer le modèle dans les
limites de Roblox — moins de 4 000 triangles, UV, texture précalculée, le bon point
d’attache. Le **mobile** sert au tri.

La voie rapide (SF3D) construit un modèle en une seconde et demie, on peut donc tester en
masse. TRELLIS, plus lent et plus fin, ne se lance qu’à l’empaquetage d’une pièce validée
par ton œil — le calcul coûteux n’est dépensé que pour ce que tu veux vraiment vendre.
Les pièces ouvragées comme les diadèmes et les casques passent directement par TRELLIS.

## L’app

Le client mobile est le cœur de tout. **Composer** envoie un lot — catégorie × style ×
variantes, cinquante pièces d’un coup s’il le faut. **File d’attente** montre en direct ce qui est en fabrication et
à quelle étape. **Triage** est l’essentiel : une pièce à l’écran, un bouton pour passer du
concept au modèle 3D orientable, trois boutons — valider, rejeter, réessayer
avec une autre seed. On avance plus vite qu’on ne lit. **Review** montre la
pièce convertie : nombre de triangles face à la limite, UV, fermeture du maillage,
texture et verdict PASS, WARN ou FAIL. De là, une pièce peut être reconvertie ou
empaquetée pour la mise en ligne. Le réempaquetage n’écrase pas le nom, les descriptions, le prix ni les tags
saisis dans l’app.

Elle tourne sur Android, iOS, macOS et dans le navigateur. Le serveur la sert sur sa propre
origine, donc la version web est toujours à jour.

## Décoré tout autour

Le modèle naît d’une seule image : personne n’a vu l’arrière, qui sort
plat et sans décor. Pour les pièces vraiment à symétrie radiale (un gâteau,
une couronne), le secteur avant est donc copié tout autour et la couture soudée. Ça s’active
dans Composer ou sur une pièce terminée lors d’une nouvelle conversion, sans nouvelle génération.
Inutile sur une pièce plate — elle se désagrège en un patchwork de secteurs.

## Catégories

Ce qui marche le mieux, ce sont les objets qui existent **à part entière** dans les données d’entraînement :
sacs à dos, sacs à main, diadèmes, chapeaux, gâteaux, masques, boucliers, bagues.
Créations de modiste avec plumes et fleurs, sacs matelassés à monogramme, couronnes
de perles et d’agates, masques inspirés de cinq cultures, queues duveteuses de renard et de raton
laveur, compagnons kawaii pour l’épaule.

Les images sont belles presque à chaque fois — les modèles, loin de là, et c’est le modèle
qui tranche. Les formes compactes et volumineuses (sac à dos, gâteau, bague) tiennent bien. Les structures
fines et ajourées se déchirent sur la voie rapide, donc les diadèmes prennent directement le chemin lent.
Et une image dessinée a peu d’ombres, ce qui donne du relief au lieu du volume — les petits animaux
pastel ont donc besoin d’un prompt qui impose un ombrage doux.

Les vêtements et les cheveux sont un vrai casse-tête : le modèle ne les connaît que portés, donc au prompt
*« robe dragon »* il dessine un dragon. Ce qui aide : passer à un modèle photoréaliste et
formuler comme une photo produit — *« robe sur un mannequin invisible »*.

En plus, Roblox traite robes, chaussures et gants comme des vêtements superposés avec un maillage de cage,
ce que l’usine ne sait pas encore faire. Pour les doigts et les mains, Roblox n’a aucun point d’attache.
