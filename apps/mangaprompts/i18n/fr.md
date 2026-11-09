---
tagline: Bot Telegram pour du manga en blocs, restyle de photos, nouvelle coiffure et photos animées
---
TsumikiMangaBot (anciennement MangaPrompts) assemble des prompts pour la
génération d'images par IA façon LEGO : tu choisis des blocs sur environ
vingt-cinq axes (médium, tradition artistique, style de tête, style manga,
époque historique) et ils forment un prompt complet. Et ça ne s'arrête pas là :
le prompt part directement en génération et l'image te revient.

### Autres cartes

À côté de l'assembleur, la Mini App a un sélecteur de cartes :

- **Restyle de photo** — tu envoies une photo, tu choisis un style et tu
  obtiens la même personne dans la même pose, dans ce style. Le bouton photo /
  illustration choisit le médium, et il y a plus de quatre-vingt-dix styles en
  six groupes (populaires, peintres, traditions artistiques par région).
- **Essaie une coiffure** — redessine seulement les cheveux sur un portrait,
  avec une nouvelle couleur si tu veux. Chaque coiffure a un aperçu sur le même
  visage, donc tu ne compares que les cheveux.
- **Anime ta photo** — à partir d'une photo et d'une scène choisie, une courte
  vidéo est créée et arrive dans le chat.

### Pour commencer

Rien à installer, ça tourne comme une Telegram Mini App :

1. Dans Telegram, ouvre [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) —
   ou cherche-le sous le nom **Tsumiki**.
2. Écris `/start`. Le bot répond avec le bouton **🎨 Open Tsumiki**.
3. Appuie dessus, assemble tes blocs et lance la génération.

L'image terminée s'affiche directement dans l'appli **et arrive aussi dans le
chat**, tu l'as donc dans ton historique et tu peux la transférer tout de
suite. Si tu sautes `/start` et ouvres l'appli directement, la génération
marche aussi — seulement l'image n'arrivera pas dans le chat, parce que
Telegram ne permet pas à un bot d'écrire en premier.

### Combien ça coûte

**Trois générations gratuites toutes les 24 heures.** Ensuite, 1 crédit =
1 image, et les crédits s'achètent en **Telegram Stars** directement dans
l'appli — 10 crédits pour 25 ⭐, 50 pour 100 ⭐, 250 pour 400 ⭐. Le restyle et
la coiffure coûtent comme une image, la coiffure seulement une fois que
l'analyse a accepté la photo. L'animation a son propre compteur : une par jour
gratuite, les suivantes à 10 ⭐. Si une génération échoue, le crédit est rendu.
Pour un souci de paiement, il y a la commande `/paysupport`, et je traite les
remboursements sous 48 heures.

### Sous le capot

La Mini App est en Flutter web sur Cloudflare Pages. Le prompt part de là vers
un backend (FastAPI + aiogram) qui tourne sur un NAS à la maison, puis vers
**ComfyUI** — le workflow est choisi selon le modèle sélectionné (FLUX, Pony,
Juggernaut XL Lightning ou WAI Illustrious). Le restyle garde le visage avec
PuLID ou InstantID et la pose avec un depth ControlNet, l'animation tourne sur
Wan 2.2. Les crédits et les paiements sont stockés dans SQLite côté backend.

### Applis natives

Les builds ci-dessous pour macOS, Windows, Linux, Android et iOS sont
l'assembleur de prompts complet, avec en plus un mode **Repose** absent de
Telegram : tu envoies un visage, tu choisis une pose et l'appli génère une
image de cette personne dans cette pose avec un visage fidèle (InstantID +
depth ControlNet + hi-res + FaceDetailer). Mais Repose s'adresse directement à
ComfyUI, donc l'appli native doit pouvoir y accéder.

Fait avec Flutter.
