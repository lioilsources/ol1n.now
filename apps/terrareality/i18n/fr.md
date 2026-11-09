---
tagline: Louer un appartement, de la recherche sur la carte au loyer payé — pour propriétaires, locataires et opérateur
---
TerraReality est une plateforme de location longue durée d'appartements et de chambres. Elle démarre à Prague et dans ses environs, mais ses données sont prêtes dès le départ pour d'autres pays d'Europe centrale (juridiction du bail, devise, langue). Contrairement à un portail d'annonces, elle ne s'arrête pas à la prise de contact : elle accompagne le propriétaire et le locataire pendant toute la location — recherche, messages, candidature, visite, bail et signature, jusqu'aux paiements et à leur suivi.

La plateforme a quatre visages. **Le chercheur** cherche sur la carte ou écrit simplement ce qu'il veut. **Le propriétaire ou gestionnaire** dispose d'une administration façon boutique en ligne : annonces, candidats, baux, banque, portefeuille et facturation. **Le locataire** a son portail avec le bail, les paiements et les QR codes. **L'opérateur** a un back-office pour la validation, la modération et les réglages. Et une application mobile pour iOS et Android.

Les captures d'écran viennent de l'environnement de développement avec des données de test : les noms sont fictifs, les photos d'appartements sont illustratives et les suggestions de l'IA ont été générées en mode hors ligne, sans modèle de langage.

### Recherche sur la carte et par chat

La carte va de la région à la commune, puis à l'arrondissement et jusqu'à la rue, et à chaque échelle elle montre combien d'offres il y a et où. À côté se trouvent les filtres (type, prix, surface, agencement, équipement, animaux, transports) avec le nombre de résultats pour chaque option. Pas envie de cliquer ? Tapez par exemple « 2+kk jusqu'à 25 000 à Prague 6 avec un chien et un balcon » : la plateforme règle les filtres et le cadrage de la carte à partir de la phrase et montre comment elle l'a comprise. Une recherche peut être enregistrée, et les nouvelles offres arrivent avec une notification.

### Annonce assistée par IA — toujours avec l'accord d'un humain

Le propriétaire saisit l'adresse depuis le registre officiel des adresses (RÚIAN), les caractéristiques, les photos et le texte. L'IA sait proposer des caractéristiques à partir de la description et des photos (ascenseur, balcon, type de construction…) et rédiger le texte de l'annonce en tchèque et en anglais. Mais une proposition n'est jamais enregistrée toute seule : le propriétaire voit ce que l'IA suggère, coche ce qui est juste, et c'est seulement ensuite que c'est appliqué. Avant publication, l'annonce est validée par une personne dans le back-office. Pour chaque annonce, le propriétaire peut ajouter des questions aux candidats (par exemple « Avez-vous un animal ? »).

### Messages

Le candidat écrit au propriétaire directement depuis l'annonce ; les messages arrivent en temps réel, avec accusé de lecture et pièces jointes. Jusqu'à la signature du bail, la plateforme masque les numéros de téléphone et les e-mails dans le texte, pour que ni l'arrangement ni les paiements ne lui échappent — et le candidat voit l'avertissement « ne payez rien avant la visite ». Qui n'est pas en ligne reçoit une notification push ou un e-mail. Une conversation suspecte se signale en un clic.

### Candidatures, colocation et choix du locataire

Le candidat postule seul ou pour un groupe de colocataires : il crée un groupe, invite les autres par e-mail, ils s'accordent dans le chat de groupe, et la candidature ne part chez le propriétaire qu'une fois que tout le monde est d'accord. Le propriétaire voit la liste des candidats avec leurs réponses à ses questions, leur statut de vérification et un court résumé de l'IA (là encore, seulement une proposition). La plateforme ne collecte pas de données protégées comme l'âge, le sexe ou la nationalité. Quand le propriétaire choisit quelqu'un, les autres reçoivent une réponse automatique polie.

### Visites

Le propriétaire propose des créneaux de visite avec une capacité et une note (« rendez-vous devant l'entrée ») ; les candidats les réservent, les déplacent ou les annulent directement dans leur candidature et reçoivent un rappel.

### Bail numérique et signature

Le bail est créé à partir d'un modèle (appartement à durée déterminée ou indéterminée, bail commun de colocataires, chambre) et rempli avec les données de l'offre. Le formulaire génère un PDF, les deux parties le signent en ligne et chaque événement — proposition, signature, paiement, résiliation — est inscrit dans une chaîne d'audit où chaque entrée est liée à la précédente par un hachage. Une modification ultérieure de l'historique ne peut donc pas être dissimulée ; la page du bail montre que la chaîne est intacte. La plateforme gère aussi la résiliation et le règlement du dépôt de garantie.

Les modèles portent le filigrane BROUILLON tant qu'un juriste ne les a pas relus, et la signature est pour l'instant une signature électronique simple avec preuves (horodatage, adresse IP, empreinte du document). La signature via Bank iD est prête comme étape suivante et attend le contrat avec Bank iD.

### Paiements — l'argent va directement au propriétaire

Le bail génère un échéancier : dépôt de garantie, loyer et provisions sur charges, répartis selon les parts entre colocataires. Le locataire paie par QR code dans son application bancaire ou par carte via un lien Revolut Business qui mène au propre compte marchand du propriétaire. Le propriétaire peut connecter son compte bancaire (en lecture seule) et les paiements entrants sont rapprochés automatiquement selon le symbole variable, le symbole spécifique et le montant ; ce qui ne correspond pas reste en suggestion à rapprocher à la main. Après l'échéance partent des rappels, et au bout de sept jours une escalade.

**TerraReality ne détient ni ne transfère jamais l'argent des locataires.** Pas de séquestre, pas de cryptomonnaies — les paiements vont directement du compte du locataire à celui du propriétaire.

### Reprise des locations existantes

Le propriétaire dont les appartements sont déjà loués avec un bail papier n'a rien à signer de nouveau. Il reprend la location comme signée hors plateforme, téléverse un scan du bail, et les paiements sont suivis à partir de la date de reprise : l'ancienne dette passe dans le solde d'ouverture, le dépôt de garantie détenu est enregistré et le symbole variable habituel est conservé. Les locataires ne reçoivent rien tant que le propriétaire ne les invite pas sur le portail locataire. Plusieurs locations peuvent être importées d'un coup depuis un tableur.

### Portefeuille multi-villes et risque locatif

Pour les propriétaires et gestionnaires de plusieurs logements : vue de toutes les locations par commune, quittancement mensuel et encaissements réels, tendance sur douze mois, liste de ce qui demande de l'attention (impayé, escalade, résiliation, logement vacant), concentration des revenus et rent roll exportable en CSV et Excel. Chaque location a un score de risque calculé à partir de règles (impayé, anciens paiements en souffrance, couverture par le dépôt, fin de bail proche…). Le score est purement informatif et ne décide jamais de quoi que ce soit ; le locataire voit sur quoi il repose. Les règles (rappels, escalades, dépôt, préavis) se paramètrent par commune, et un investisseur peut obtenir un accès en lecture seule où les locataires n'apparaissent que par leurs initiales.

### Mise en avant et facturation

Le propriétaire peut remonter ou mettre en évidence son annonce. Il paie par carte via Stripe, la facture avec TVA est émise automatiquement, envoyée par e-mail et téléchargeable dans l'administration. Les annonces mises en avant sont marquées « Remonté » dans les résultats.

### Back-office, modération et DSA

L'opérateur dispose d'un tableau de bord, d'une file d'annonces à valider, de la modération des conversations et annonces signalées, d'une file de propositions de l'IA pour de nouvelles caractéristiques, de la grille tarifaire de mise en avant, des modèles de bail, d'interrupteurs de fonctionnalités et d'un journal d'audit. Tout le monde peut signaler une annonce, même sans compte (conformément au règlement européen sur les services numériques, DSA) ; chaque cas est tranché par une personne et la motivation est envoyée par e-mail au signaleur comme à l'annonceur. Se connecter « en tant qu'utilisateur » pour le support exige d'indiquer un motif et est consigné dans l'audit.

### Application mobile

L'application Flutter pour iOS et Android couvre ce dont le locataire a besoin sur son téléphone : recherche en liste et sur carte, détail de l'annonce avec message, candidature et réservation de visite, mes visites, la location avec paiement par QR et lien Revolut, et ouverture directe depuis les notifications push. C'est une première version ; les builds pour testeurs (TestFlight et piste interne Google Play) arriveront avec la préparation des tests.

### Exploitation

L'environnement de production est prêt pour Hetzner dans l'UE : serveurs d'application et de base de données séparés dans un réseau privé, HTTPS automatique, sauvegardes de la base avec restauration à n'importe quel instant (au plus une heure de données perdues) et test de restauration vérifié, supervision avec alertes (disponibilité 99,9 %, réponse de la recherche sous 300 ms, état des sauvegardes) et remontée des erreurs. L'IA tourne sur notre propre serveur GPU ; quand elle n'est pas disponible, tout fonctionne aussi sans elle.

### État et tests

**Le MVP de toute la plateforme est terminé.** Tous les modules ci-dessus sont développés et couverts par des tests automatisés — unitaires, d'intégration et de bout en bout, qui déroulent dans le navigateur des scénarios complets (annonce, messages, candidature de groupe, bail avec signature et paiement rapproché, portefeuille, mise en avant avec facture, signalement DSA, back-office). La restauration de la base depuis une sauvegarde a elle aussi été vérifiée.

Les améliorations de sécurité et d'exploitation recommandées lors de la revue de code ainsi que les notifications push pour les candidatures, les baux et les paiements sont également terminées. Une bêta fermée tourne sur notre propre serveur avec des annonces d'exemple pour Prague et ses environs, signalées comme telles. Le déploiement en production chez Hetzner attend les comptes et les accès (voir ci-dessous).

Les tests avec de vraies personnes se déroulent en cinq phases. Chacune se termine par une porte où l'on décide ensemble de continuer ou non :

1. **T0 — préparation (2 semaines).** Environnement de test chez Hetzner avec un bandeau « Environnement de test », partenaires en sandbox (Stripe, Revolut, Bank iD), analytique produit sans données personnelles, bouton « Signaler un problème / une idée » sur le web et dans l'application, inscription sur invitation uniquement, données de test et builds de l'application pour les testeurs.
2. **T1 — tests internes (1 semaine).** 5 à 8 personnes de l'équipe et de son entourage parcourent tous les scénarios dans le rôle du propriétaire et du chercheur, sur plusieurs appareils, y compris un exercice d'incident et une restauration depuis une sauvegarde.
3. **T2 — tests d'utilisabilité modérés (2 semaines).** 12 participants : propriétaires particuliers, un gestionnaire avec des logements dans plusieurs villes, chercheurs tchèques et étrangers et un duo de colocataires. On mesure la réussite des tâches et la satisfaction (SUS ≥ 70).
4. **T3 — pilote fermé à Prague (6 semaines).** 20 propriétaires pilotes avec un accompagnement personnel et 50 à 100 chercheurs, sur invitation uniquement. On observe si les annonces reçoivent des candidatures, à quelle vitesse les propriétaires répondent, combien de baux sont conclus en ligne et avec quelle fiabilité tout fonctionne ; une version par semaine.
5. **T4 — bêta ouverte à Prague (4 semaines).** Inscription ouverte à tous avec la mention bêta, sans campagne payante — et à la fin, la décision sur le lancement public.

Au total, environ 15 semaines depuis le début de la préparation.

**Ce dont nous avons besoin de votre part :**

- des comptes et accès pour l'exploitation : Hetzner, nom de domaine et DNS, comptes développeur Apple et Google, Stripe, Revolut Business, Bank iD et le fournisseur de connexion bancaire ;
- le recrutement des testeurs, de 20 propriétaires pilotes et de chercheurs, les récompenses des participants ;
- la relecture juridique des conditions d'utilisation, de la politique de confidentialité et des modèles de bail, les consentements des testeurs et la décision de signer ou non de vrais baux directement sur la plateforme pendant le pilote ;
- un test d'intrusion avant le pilote, la conduite des entretiens en T2 et le support de premier niveau pendant le pilote ;
- la décision à chaque porte entre les phases.
