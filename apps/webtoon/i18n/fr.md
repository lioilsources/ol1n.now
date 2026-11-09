---
tagline: Des BD verticales, même hors ligne — histoires gratuites, livres-jeux où tu choisis, et cases qui prennent vie
visuals: {n} images — des cases de cinq histoires pour enfants, deux styles comparés et des character sheets.
---
Toonfork (nom de travail Webtoon) est une liseuse de BD verticales qui fonctionne aussi hors ligne. Dès l'installation, elle contient 15 histoires gratuites, sans compte ni inscription. Les histoires naissent sur notre propre serveur GPU : un modèle de langage écrit le scénario, un modèle d'image dessine les cases, et les bulles de texte ne sont ajoutées que par la liseuse, si bien qu'on peut corriger le texte sans régénérer l'image.

Les strips terminés de cinq histoires pour enfants sont sur la sous-page Strips, la boucle de jeu avec un choix en fin d'épisode sur la sous-page Gamebook.

### Liseuse

Une histoire est une longue bande de cases avec bulles, pensées, cris et effets sonores, que tu fais défiler du pouce de haut en bas. Certaines cases prennent vie en courtes boucles : la pluie sur une vitre, la lumière sur l'eau, le vent dans les cheveux. En fin d'épisode, tu vois ce qui a été choisi et le bouton **Épisode suivant**. Après le dernier épisode arrive **Fin** et une suggestion d'histoire suivante.

### Livres-jeux

Dans un livre-jeu, c'est toi qui décides. À la fin de chaque partie, tu choisis la suite, et l'histoire se ramifie. L'appli retient où tu en es, par où tu es passé et quelles fins tu as trouvées ; la carte du parcours ne montre que ce que tu as déjà visité. Tu peux recommencer ou revenir d'un pas. Les livres-jeux sont gratuits : pour les enfants **Sara et la couronne noire**, pour les adultes par exemple le huis clos dans un cabinet de psychologue **Apprendre à se taire**, **Ciel de métal au-dessus de nous** ou **La prairie en fleurs devenue grise**. Les drames abordent des sujets difficiles et le profil enfant les masque.

L'éditeur de branches est en bêta : ajoute ta propre suite à n'importe quel choix, compose-la à partir des images du livre-jeu et écris les bulles. Tu joues la branche aussitôt et tu peux l'envoyer à l'auteur via le partage, sans aucun serveur.

### Packs

Des packs optionnels ajoutent jusqu'à 50 histoires : **Romance** (histoires d'amour légères pour adultes, sans scènes explicites), **Pour enfants** et **Super-héros**. Un pack se télécharge après l'achat et se lit hors ligne. Un seul achat débloque tout, y compris les packs qui sortiront plus tard.

### Profil et contrôle parental

Au premier lancement, tu choisis le profil **Enfants** ou **Adultes**. Le profil enfant masque la romance et les drames dans la bibliothèque comme dans la boutique. Chaque achat et chaque passage au profil Adultes est protégé par un contrôle parental avec une question de table de multiplication.

### 12 langues

Histoires, livres-jeux et textes de la liseuse existent en 12 langues : tchèque, anglais, allemand, français, italien, polonais, portugais du Brésil, japonais, coréen, vietnamien, russe et ukrainien. La langue des bulles se change dans les Réglages.

### Confidentialité

Aucun compte, aucune pub, aucun pistage. Toonfork ne collecte aucune donnée personnelle ; ce que tu as acheté, c'est l'appareil qui s'en souvient, et les achats se restaurent dans les Réglages.

## Studio : comment naissent les histoires

L'autre visage de la même appli est le Studio pour les auteurs. L'auteur construit un monde : lore, personnages, lieux et un canon par lequel chaque histoire doit passer. Le Studio se joue aussi en interactif : en fin d'épisode, le lecteur choisit ce que fait ensuite le personnage, ou l'écrit avec ses propres mots, et le choix donne naissance à l'épisode suivant. Le texte libre passe d'abord par la modération ; dans un monde pour enfants, elle est plus stricte et préfère refuser en cas de doute. Les captures d'écran de cette page viennent du Studio.

### Éditeur de monde

L'auteur dispose dans l'appli de l'onglet **Créer** :

- **Base :** titre, synopsis, ton, langue, public (Pour enfants, Dès 13 ans, Pour adultes), visibilité et un style graphique valable pour tout le monde.
- **Lore et canon :** règles du monde, factions, nœuds canoniques dans un ordre fixe et garde-fous, c'est-à-dire ce qui ne doit pas arriver.
- **Personnages et lieux :** une description avec ses propres mots. Un LLM en propose des tags booru fixes pour le modèle d'image. Les tags que le modèle ne connaît pas sont écartés grâce au vocabulaire WD14, et l'auteur peaufine le reste.
- **Character sheet :** quatre variantes du personnage sur fond blanc. Celle qui correspond le mieux aux tags devient l'image de référence.
- **Vue d'ensemble :** campagnes, où les lecteurs se sont arrêtés, quels choix ils ont faits et jusqu'où ils sont allés dans le canon.

### Modèles

- **Scénario et modération :** Qwen3.6-35B-A3B via vLLM. Il propose des tags pour les personnages et les lieux et écrit le storyboard des épisodes (6 à 8 cases, 2 à 3 choix et un champ de texte libre). Un validateur vérifie ensuite personnages, lieux et règles du monde.
- **Cases :** SDXL via ComfyUI. Par défaut NoobAI-XL eps 1.1, le second style est Hassaku XL (Illustrious) 3.4. Seuls ces modèles dessinent des personnages humains.
- **Cases vivantes :** Wan 2.2 transforme une case terminée en boucle de 1 à 3 s, au plus deux cases animées par épisode.
- **Contrôle du contenu :** le tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Il vérifie chaque case et, selon le public, la rejette et la redessine avec une nouvelle seed. Pour les enfants, il refuse en plus les vêtements moulants et révélateurs. Le même tagger mesure si le personnage d'une case correspond à son design.

L'identité du personnage ne tient qu'aux tags. IP-Adapter est prêt, mais lors de la première mesure il abîmait plutôt l'image. Le modèle ne sait pas garder deux personnages humains dans un même plan : il leur échange cheveux et vêtements. Les histoires pour enfants donnent donc à chaque personnage sa propre case.

### Styles

Un style est un preset nommé : checkpoint, sampler, nombre d'étapes, CFG et tags esthétiques. L'auteur le choisit une fois pour tout le monde. **clean_webtoon_noartist** a des aplats de couleur et un trait net, **hassaku_soft** un ombrage doux et des couleurs pastel. Dans les visuels, le même épisode figure dans les deux styles côte à côte.

### État

Toonfork est en alpha : les builds macOS et Android se téléchargent sur GitHub, l'App Store et Google Play sont en préparation. Le Studio ne tourne que sur son propre backend (Go avec une file de tâches dans Postgres) et n'est pas accessible publiquement. Images et textes naissent sur notre propre serveur GPU.

Les captures viennent de la version web du Studio en largeur de téléphone, sur un backend local. L'épisode 2 n'y a qu'un scénario, ses cases attendent encore d'être dessinées. Le code source est sur [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
