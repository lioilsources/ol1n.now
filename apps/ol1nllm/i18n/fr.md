---
tagline: Chat IA avec des rôles, le Bibliothécaire et le Juriste, un studio pour images, vidéo, contes, musique et voix
---
Ol1nLLM est une seule appli au-dessus de ton propre serveur : elle discute, cherche dans une bibliothèque et dans les lois, dessine, transforme une image en vidéo, tourne un conte, compose de la musique et lit les réponses avec une voix enregistrée.
Un guide détaillé avec captures d'écran se trouve sur la page [Ce que sait faire l'appli](ol1nllm-features.html).

### Chat

Une conversation commence par le choix d'un **rôle** — dix personnalités, de l'enfant de cinq ans au grand-père, et quatre assistants avec leurs propres données. La réponse s'écrit au fil de l'eau, la conversation peut se **ramifier** et le rôle peut changer en cours de route.

- **Bibliothécaire** répond à partir d'un corpus de philosophie et de textes sacrés dans leurs langues d'origine et montre les passages dont il s'est servi, avec une traduction tchèque.
- **Juriste** répond à partir des lois tchèques en vigueur et cite les articles.
- **Juriste – contrats** rédige un contrat à partir d'un modèle : il pose ses questions carte par carte et veille aux limites légales.
- **Leads** cherche des entreprises et des institutions dans le Registre tchèque des contrats.

### Image Studio

Une image naît par tours qui forment un arbre : texte → image, puis retouches de la variante choisie. Dix-neuf modèles (FLUX, SDXL, lignées anime), plus de trois cents **styles** artistiques (cultures et époques, artistes, médiums), des modèles de **poses**, des **LoRA** du serveur et un prompt négatif écrit en majuscules.

- **Garder la pose** et **Garder le visage** — un nouveau personnage dans la posture du modèle, et au besoin avec son visage.
- **Carte des styles** — des centaines d'images du même sujet rangées par ressemblance ; le doigt glisse sur la mosaïque, le style change comme une animation, et celui qui est choisi est appliqué.
- **Inpaint** — tu peins une zone et décris ce qui doit s'y trouver.
- **Coiffeur** — une nouvelle coiffure ou couleur de cheveux sans dessiner de masque.
- **Animer** — une courte vidéo à partir d'une image : danses et gestes du serveur, ou ta propre description du mouvement.
- **3D** — un modèle à imprimer (STL), ou une figurine dansante avec squelette.

### Story Studio

Tu choisis un conte parmi dix scénarios, tu distribues les rôles avec tes propres images et le serveur en fait une vidéo animée d'une minute avec narrateur, musique et sous-titres. On peut vérifier les plans avant l'animation et faire redessiner ceux qui sont ratés.

### Music Studio

Donne au studio un extrait musical — depuis un fichier ou enregistré au micro — et il en déduit le genre, le tempo et la tonalité. **Vibe** compose un nouveau morceau dans le même esprit, **Groove** réarrange l'original dans un autre genre.

### Voice Studio

À partir d'un court enregistrement — même la piste audio d'une vidéo — naît ta propre **voix**. N'importe quelle voix peut être essayée sur n'importe quelle phrase et attribuée à un rôle du chat. Le haut-parleur sous une réponse la lit alors avec la voix de ce rôle.

### Historique

Les conversations, sessions, projets et contes restent sur le téléphone. Les longues tâches tournent sur le serveur : tu peux fermer l'appli, elle s'y reconnecte toute seule à ton retour.

Développée avec Flutter, elle tourne sur mobile et sur ordinateur. L'appli est un client de ton propre serveur de modèles ; sans lui, elle ne génère rien.
