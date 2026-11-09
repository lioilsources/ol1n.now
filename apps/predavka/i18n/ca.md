---
tagline: Una cuina tranquil·la a l'hora punta: els cuiners senten les comandes i la sala veu en quants minuts arriba cada cosa
---
A l'hora punta, un restaurant perd temps entre la cuina i la sala. Els tiquets s'amunteguen a la línia, els cambrers entren a la cuina a preguntar quan surt la taula set, i el menjar que ja està fet es refreda al pass perquè ningú no se n'ha adonat. Předávka ho resol sense haver de mirar més pantalles: **els cuiners senten les comandes**, **la sala veu en una sola pantalla en quants minuts arriba què i a quina taula**, i el plat acabat al pass avisa tot sol, al cap d'uns minuts, que cal recollir-lo.

Tot funciona al restaurant amb un sol ordinador petit: sense núvol, sense quota mensual per servidors i en txec. Si cau internet, el servei continua.

### La cuina escolta, no ha de llegir

Quan entra una comanda, un altaveu al pass diu una frase curta, per exemple: «Taula set: dues svíčková, una escalopa.» Els numerals i els noms dels plats van en txec gramaticalment correcte («jedna svíčková, dvě svíčkové, pět svíčkových»). La veu es genera al mateix restaurant i a les proves estava a punt per reproduir-se en 0,2 s des de l'esdeveniment. Els avisos no es trepitgen mai: tenen un ordre segons la importància, una pausa entre ells, i una comanda antiga que la pantalla ja mostra no es llegeix sense necessitat. El botó «Un altre cop» repeteix l'últim avís.

### Una cua d'on agafa el cuiner

Cada partida (graella, calent, fred, postres) té la seva cua en una tauleta o un televisor. El cuiner agafa un plat amb un toc o amb un botó del bump bar. Així el sistema sap qui cuina què i des de quan, i si durant dos minuts ningú no es fa càrrec d'una comanda, avisa: «Taula set, graella, espera cuiner.»

### La sala sap quan i on portar

La pantalla de sala mostra les taules, què hi va i en quants minuts. L'estimació no canvia a cada moment (com a molt un cop cada mig minut), perquè s'hi pugui planificar. A dalt sempre hi ha el que cal recollir. Al pass, el menjar «envelleix»: als tres minuts se sent «Taula set llesta, tres minuts al pass», i l'avís es repeteix fins que algú se l'endu.

### Les estimacions aprenen de la teva cuina

Al principi, el cap de cuina indica un sol cop quant triga cada cosa. Després, Předávka mesura cada plat des que s'agafa fins que està llest i, després de cinc mesures, fa servir els temps reals d'aquesta cuina. Així, l'estimació per al client té en compte quant hi ha a la cua davant seu i quants cuiners de la partida cuinen alhora.

### Funciona amb qualsevol TPV

Les comandes es poden agafar de la impressora de tiquets: Předávka es connecta entre el TPV i la impressora, el tiquet s'imprimeix com sempre i ella en llegeix la taula i els plats. Per això no necessita cap integració amb un TPV concret. Les comandes també es poden introduir directament des de la tauleta de sala.

### Imatges dels plats

Cada element del menú pot tenir una imatge o un emoji. Les pantalles al navegador els mostren als botons de comanda, a les targetes de la cuina, al pass i a la sala. El mateix sistema també es pot fer servir a casa com a joc de restaurant infantil: una cuina, un menú infantil amb imatges, un ordinador que fa de servidor i d'altaveu, i els altres dispositius només obren el navegador a la mateixa wifi.

La descripció detallada de les funcions i d'un servei sencer és a la pàgina [Com funciona](predavka-features.html) (en txec), amb tres moments de la nit: la cua buida, unes quantes taules i «no hi arribem!».

### Estat

Předávka és un prototip funcional acabat: el servidor, la veu, l'escolta de la impressora, la cua, les estimacions, els tempos dels plats i les pantalles (una app per a Android TV i tauletes i una versió per al navegador) estan construïts i provats en una simulació de servei. **Encara no ha funcionat en un restaurant real.** El pas següent és un pilot en una cuina: que la veu s'entengui amb el soroll de la campana extractora, sonoritzar la cuina amb diversos altaveus i la llegibilitat de les pantalles en televisors reals.

Les captures són de pantalles reals. El que mostren s'ha generat simulant un servei: menú i taules inventats, amb el temps aturat en un moment concret de la nit.
