---
tagline: Una volea amb un sol lliscament del dit: on l'empenya toca la pilota, amb quant d'efecte i en quin mil·lisegon
---
Fotball Simulator simula un únic moviment: la volea. La pilota bota davant teu, cada cop d'una manera diferent, i amb un sol lliscament del dit la xutes a porteria. Sense equip, sense partit, només la pregunta d'on i quan l'empenya toca la pilota. Tota la resta, el vol, l'efecte, el bot i si acaba en gol, en surt per la física.

### Un gest, quatre decisions

A la part de baix de la pantalla hi ha una pilota gran, i un lliscament per sobre ho diu tot alhora:

- **On poses el dit** és on l'empenya colpeja la pilota. Per sota del centre la pilota puja, per sobre la xutes contra el terra, per un costat agafa rotació.
- **La corba del lliscament** és l'efecte. Com més corbes el gest, més es desvia la pilota en l'aire.
- **La velocitat del lliscament** és la potència del xut.
- **El moment en què aixeques el dit** és l'instant del contacte. La volea té una finestra: després del bot la pilota puja, s'atura i cau, i el moment ideal és quan baixa a l'altura de l'empenya. El joc ho sap per endavant, perquè calcula el vol de la pilota en el llançament.

La desviació es mesura en mil·lisegons. Fins a ±30 ms és PERFECT, després GOOD, LATE i EARLY. Tard és tard: l'empenya colpeja per dalt la pilota que cau, que agafa efecte liftat i acaba a terra o es queda curta. Si no la toques, xutes a l'aire.

### Freeze-frame i vol

En l'instant del contacte el món s'atura una fracció de segon. A la pilota brilla el punt on l'ha tocada l'empenya, i una fletxa indica cap on va. A dalt apareixen la velocitat en km/h, la rotació en voltes per segon i la valoració del timing amb la desviació exacta. Després la pilota vola deixant un rastre, així es veu com es corba. El resultat és GOL, FORA o CURTA, i al cap de poc arriba botant la pilota següent.

Si necessites més temps, activa el **slow-mo**: quan el dit toca la pantalla el joc s'alenteix perquè puguis acabar el gest. Però el timing es mesura en temps de joc, així que alentir no ajuda a fer trampa.

### Física

El vol de la pilota és un càlcul propi, no la física d'un motor: gravetat, resistència de l'aire, efecte Magnus (per això una pilota que gira es corba) i pèrdua gradual de rotació. El bot a la gespa treu alçada i la rotació s'hi converteix en direcció. El contacte té en compte la velocitat amb què ha arribat la pilota, de manera que una pilota xutada fluix simplement rebota en lloc de quedar-se suspesa a l'aire. Els resultats estan avalats per proves automàtiques contra una implementació de referència independent del mateix model en Python.

El joc va néixer a Godot 4.7 i al mòbil hi arriba la seva reescriptura en Flutter, amb les mateixes constants i les mateixes proves. L'escena es dibuixa amb una projecció en perspectiva pròpia, sense motor 3D.

### Estat

La primera fase està enllestida: un bucle jugable de llançament, xut, freeze-frame, vol i resultat. El camp i la porteria de moment són senzills; hi falten una cama que faci el gest, una xarxa que s'infli amb el gol i una càmera que segueixi la pilota. Després vindran l'ajust de les sensacions, un mapa de calor dels xuts a porteria i estadístiques.

L'APK de sota és una versió de prova (alfa). A l'iPhone, de moment només per TestFlight per a provadors.
