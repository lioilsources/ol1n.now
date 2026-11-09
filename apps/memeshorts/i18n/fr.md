---
tagline: Des shorts verticaux à partir de modèles de mèmes, avec tes propres personnages
visuals: {n} portraits tirés de la bibliothèque de personnages — quatre personnages, chacun dans douze émotions.
---
Un outil en ligne de commande qui transforme un modèle de mème en short vertical de six à quinze secondes. Le mème d'origine ne sert que de modèle pour la structure de la blague — il ne se retrouve jamais dans le résultat. À sa place, ce sont tes propres personnages qui jouent.

Ni un prompt ni une seed ne suffisent à garder un personnage cohérent, alors les images ne sont pas générées pour chaque short. Elles sont créées une fois pour toutes sous forme de bibliothèque validée *personnage × émotion* : Kiro, Mei, Taro et Yuki, chacun dans douze expressions, de la suffisance à l'épuisement.

Le short passe ensuite par la chaîne `classify → storyboard → generate → animate → compose → qa`. Chaque étape est enregistrée séparément et indexée par un hash de ses options : relancer ne coûte rien, et modifier le texte ne recalcule que le strict nécessaire. La blague est écrite par un LLM ou saisie à la main ; les sous-titres sont rendus directement en Go.

Le résultat : 1080×1920, H.264, 30 fps, sonie de −14 LUFS et la mention « AI generated » à l'image comme dans les métadonnées.

Pour l'instant, il ne tourne qu'en local et n'a pas de version publiée, il n'y a donc rien à télécharger ici.
Écrit en Go ; les images sont générées par FLUX.1-schnell sur ma propre machine.
