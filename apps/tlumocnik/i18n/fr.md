---
tagline: Un téléphone posé sur la table entre deux personnes : chacune parle sa langue et l’app dit la traduction à voix haute à l’autre
---
Tlumočník sert à une conversation autour d’une même table : à la mairie, au garage, chez le médecin, avec un nouveau collègue. Tu poses le téléphone au milieu, tu parles tchèque, l’autre par exemple ukrainien. L’app reconnaît toute seule qui parle, traduit et le dit à voix haute à l’autre. Personne ne tape quoi que ce soit et vous ne vous passez pas le téléphone.

### Un écran coupé en deux

La moitié du bas est à toi, celle du haut est retournée pour la personne en face. Chacun lit ainsi dans sa langue et personne ne doit lire à l’envers. En gros caractères, il y a toujours ce que la personne comprend : pour tes phrases, ce que tu as dit ; pour celles de l’autre, leur traduction. En petit au-dessus, il y a l’autre version, pour voir exactement ce qui a été dit. Une barre de couleur sur le bord montre quel côté est en train de parler.

Le texte traduit apparaît avant que l’app le lise. Si tu ne veux pas que le téléphone parle, passe en **Texte seul** et la conversation continue comme avec des sous-titres.

### Qui parle

L’app décide d’après la voix et la langue. Au bout de quelques phrases, elle retient la voix de chacun, et en attendant, elle s’aide du fait que chacun parle une langue différente. Quand elle n’est pas sûre, elle ne devine pas : elle affiche la phrase sur les deux moitiés sans traduction, avec un bouton **C’était moi**. Celui qui l’a dite appuie dessus et l’app la traduit dans le bon sens. Un appui long sur ta moitié te permet aussi de désigner toi-même qui parle.

Pendant que le téléphone parle, le micro n’écoute pas, pour que l’app ne se traduise pas elle-même.

### Trois modes

- **Auto :** on parle chacun son tour et l’app détecte seule quand chacun a commencé et fini.
- **Maintenir pour parler :** tu gardes le doigt sur ta moitié tant que tu parles. Pratique dans le bruit, quand le mode automatique ne suffit pas.
- **En direct :** une transcription en cours s’affiche pendant que tu parles.

### 13 langues

Tchèque, anglais, allemand, ukrainien, vietnamien, polonais, slovaque, espagnol, français, italien, portugais, japonais et chinois. Tu choisis la paire de langues avant de commencer ; les dernières utilisées sont en haut de la liste.

### Historique sur le téléphone

Chaque conversation est enregistrée dans l’historique avec l’heure de chaque phrase. Tu peux la relire, sélectionner du texte et tout partager, par exemple par e-mail comme compte rendu de réunion. L’historique reste uniquement sur le téléphone.

### Ta propre voix (expérimental)

La traduction peut aussi avoir ta voix. Tu enregistres trente secondes de lecture continue, puis l’app dit tes phrases dans la langue étrangère avec une voix qui ressemble à la tienne. La voix est une donnée biométrique : l’enregistrement ne se fait qu’avec la case de consentement cochée, tu ne peux enregistrer que toi-même, et supprimer une voix efface physiquement l’enregistrement du serveur. Il peut y avoir cinq voix au maximum. Pour l’instant, ta propre voix est réservée aux testeurs avec un code d’invitation.

### Accès

L’app n’a pas de compte : au premier lancement, le téléphone s’enregistre tout seul comme appareil. Sans code, il a un accès de base avec un temps de traduction limité par jour. Un code d’invitation de l’auteur de l’app débloque l’accès testeur avec plus de temps de traduction et ta propre voix. Quand les minutes du jour sont épuisées, l’app te le dit, et demain elle traduit de nouveau.

### Confidentialité

La reconnaissance vocale, la traduction et la voix tournent sur notre propre serveur avec GPU, pas dans le cloud d’un autre. Le serveur ne conserve ni le son ni les textes des conversations et ne les écrit pas dans des journaux. L’app n’a ni compte, ni publicité, ni analytics. À cause du serveur, elle a besoin d’une connexion Internet.

Tlumočník est encore en test fermé : sur iPhone via TestFlight, sur Android via Firebase.
