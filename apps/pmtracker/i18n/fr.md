---
tagline: Le pointage par chantier qui vérifie le lieu — sans enregistrer ta position
---
Les entreprises du bâtiment et les équipes d'intervention déclarent encore leurs heures sur papier, par WhatsApp et dans Excel. Le chef d'équipe n'a aucun moyen de vérifier qui était où, et l'ouvrier aucun moyen de prouver ses heures supplémentaires. PMTracker mesure le temps passé sur un chantier précis et sait, pour chaque saisie, si la personne était vraiment sur place.

### La position deux fois seulement, puis elle est effacée

Les coordonnées sont envoyées **uniquement au démarrage et à l'arrêt** du chronomètre. Le serveur vérifie que le point se trouve dans le géorepérage du chantier, enregistre une seule information, « sur place / pas sur place », et efface les coordonnées. Pas de carte des déplacements, pas de suivi en arrière-plan. Le travail hors du géorepérage peut être autorisé par une exception inscrite dans le journal d'audit.

### Les rôles sont contrôlés par la base de données, pas par l'app

Un membre de l'équipe pointe son temps sur les chantiers auxquels il est affecté. Un responsable gère en plus les chantiers et le planning des équipes et voit les rapports. Un administrateur gère les utilisateurs. Les droits sont imposés par des règles directement dans la base de données, si bien que même un client modifié ne peut pas les contourner.

### État

C'est un MVP : le modèle de données, les rôles, la vérification du géorepérage et les écrans de connexion, de pointage, de chantiers, de planning, de rapports et d'administration sont en place. Le mode hors ligne pour les chantiers sans réseau est prêt mais pas encore activé, et l'app ne tourne encore dans aucune entreprise. Pour te connecter, il te faut un compte fourni par ton employeur.

### Pour les bêta-testeurs

Pour l'instant, la version de test n'existe que pour **Android**. Elle tourne sur une entreprise fictive, « Stavby s.r.o. », avec des personnes inventées et deux chantiers : la rénovation de bureaux place Venceslas à Prague et la climatisation place de la Liberté à Brno. Les données peuvent être effacées à tout moment. Il n'y a pas d'inscription dans l'app : c'est la personne qui t'a invité à tester qui t'envoie ton compte.

**Installation**

1. Sur ton téléphone, télécharge l'APK avec le bouton de la section **Téléchargements** ci-dessus (ou depuis [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Ouvre le fichier téléchargé et autorise l'installation depuis des sources inconnues quand Android le demande.
3. Google Play Protect peut avertir qu'il ne connaît pas l'app. C'est parce qu'elle ne vient pas de Google Play ; choisis d'installer quand même.
4. Lance **PMTracker** et connecte-toi avec le compte reçu par message.

**À essayer en tant que membre de l'équipe**

- Dans l'onglet **Výkaz** (Feuille de temps), appuie sur **Zahájit výkaz** (Démarrer le pointage), choisis un chantier et autorise l'accès à la position. Sur le chantier, un « Na místě » (Sur place) vert s'affiche sous le temps.
- Si tu n'es pas sur place, l'app demande un motif. C'est normal : écris par exemple « test » et la saisie est enregistrée avec une note indiquant qu'elle a été faite hors du lieu.
- Au bout d'un moment, arrête le chronomètre avec le bouton **Ukončit výkaz** (Terminer le pointage). « Dnes celkem » (Total du jour) augmente.
- Dans l'onglet **Zakázky** (Chantiers), ouvre le détail : adresse, taille du géorepérage, personnes affectées et liste des tâches.

**À essayer en tant que responsable**

- Tu vois en plus **Roster** (ton équipe) et **Reporty** (Rapports) avec le temps travaillé par personne et par chantier. Seuls les pointages arrêtés comptent dans le rapport ; la période se change en haut à droite.
- Pour changer de compte, déconnecte-toi (icône en haut à droite de l'onglet **Výkaz**).

**Ce qu'il ne faut pas encore attendre**

- Sans internet, l'app ne fonctionne pas ; le mode hors ligne viendra plus tard.
- Un pointage oublié ne s'arrête pas tout seul ; arrête-le à la main.
- Il n'y a pas encore de version iPhone pour les testeurs.

Envoie bugs et idées à la personne qui t'a invité : ce que tu faisais, ce qui s'est passé et avec quel compte. Une capture d'écran aide beaucoup.
