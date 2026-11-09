---
tagline: Una fàbrica d’accessoris per a Roblox: del prompt al model 3D sense modelar a mà
---
UGC Factory fabrica accessoris per a avatars del Roblox Marketplace. Escrius el que vols
—*«un casc de samurai ornamentat amb detalls de neó»*— i per l’altra banda en surt un
model 3D texturat a punt per pujar. Sense modelatge a mà.

## Com funciona

La feina es reparteix entre tres màquines. Un **DGX Spark** amb GPU dibuixa el concepte (Illustrious per als objectes,
Juggernaut XL per al que es porta posat; es tria segons la categoria), treu el fons i converteix la imatge
en un model 3D. Un **NAS** guarda la cua, el catàleg i un Blender headless que ajusta el model als
límits de Roblox: menys de 4.000 triangles, UV, textura precalculada i el punt d’ancoratge
correcte. El **mòbil** serveix per classificar.

La via ràpida (SF3D) construeix un model en segon i mig, així que es pot provar a
l’engròs. El TRELLIS, més lent i més fi, només s’engega quan s’empaqueta una peça que ha passat
pel teu ull: el càlcul car només es gasta en el que de debò vols vendre.
Les peces ornamentades com diademes i cascos van directament per TRELLIS.

## L’app

El client mòbil és el nucli de tot. **Composer** llança un lot: categoria × estil ×
variants, fins a cinquanta peces de cop. **Cua** mostra en directe què s’està fabricant i
en quina fase. **Triage** és el principal: una peça a la pantalla, un commutador entre el
concepte i el model 3D giratori, tres botons: aprovar, rebutjar, tornar-ho a provar
amb una altra llavor. S’hi passa més de pressa del que es llegeix. **Review** mostra la
peça convertida: nombre de triangles respecte al límit, UV, si la malla és tancada,
la textura i el veredicte PASS, WARN o FAIL. D’aquí la peça es pot tornar a convertir o
empaquetar per pujar-la. Tornar a empaquetar no sobreescriu el nom, les descripcions, el preu ni les etiquetes
que has omplert a l’app.

Funciona a Android, iOS, macOS i al navegador. El servidor la serveix des del seu propi
origen, així que la versió web sempre està al dia.

## Decorat tot al voltant

El model surt d’una sola imatge, així que ningú n’ha vist la part del darrere, que queda
plana i sense ornaments. En les peces que tenen de debò simetria radial (un pastís,
una corona), es copia el sector frontal tot al voltant i se solda la costura. S’activa
a Composer o en una peça acabada en tornar-la a convertir, sense generar res més.
No serveix per a peces planes: es desfan en un mosaic de sectors.

## Categories

El que surt millor són coses que també existeixen **per si soles** a les dades d’entrenament:
motxilles, bosses de mà, diademes, barrets, pastissos, màscares, escuts, anells.
Tocats amb plomes i flors, bosses encoixinades amb monograma, corones
amb perles i àgates, màscares inspirades en cinc cultures, cues peludes de guineu i
os rentador, mascotes kawaii per a l’espatlla.

Les imatges queden bé gairebé sempre; amb els models no passa ni de lluny, i qui decideix
és el model. Les formes compactes amb volum (motxilla, pastís, anell) aguanten bé. Les estructures
fines i calades s’esquincen a la via ràpida, així que les diademes van directament pel camí lent.
I una entrada dibuixada té poques ombres, de manera que en surt relleu en lloc de volum: els animalons
pastel necessiten un prompt que forci un ombrejat suau.

La roba i els cabells són un os dur: el model només els coneix posats en una figura, així que amb el prompt
*«vestit de drac»* dibuixa un drac. Ajuda canviar a un model fotorealista i
formular-ho com una foto de producte: *«vestit sobre un maniquí invisible»*.

A més, Roblox tracta vestits, sabates i guants com a roba per capes amb malla de gàbia,
cosa que la fàbrica encara no sap fer. Per a dits i mans Roblox no té cap punt d’ancoratge.
