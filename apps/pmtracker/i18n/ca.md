---
tagline: Control horari per obra que verifica el lloc — i no desa la teva ubicació
---
Les constructores i els equips de servei tècnic encara registren les hores en paper, per WhatsApp i a l'Excel. L'encarregat no té manera de comprovar qui era on, i el treballador no té manera de demostrar les hores extres. PMTracker mesura el temps en una obra concreta i sap, a cada registre, si la persona era realment al lloc.

### La ubicació només dues vegades, i després es descarta

Les coordenades s'envien **només en iniciar i en aturar** la mesura. El servidor comprova que el punt és dins la geotanca de l'obra, desa una sola dada, «hi era / no hi era», i descarta les coordenades. Sense mapa de moviments, sense seguiment en segon pla. La feina fora de la geotanca es pot permetre amb una excepció que queda anotada al registre d'auditoria.

### Els rols els controla la base de dades, no l'app

Un membre de l'equip registra temps a les obres a què està assignat. Un responsable, a més, gestiona les obres i l'assignació de personal i veu els informes. Un administrador gestiona els usuaris. Els permisos els imposen regles directament a la base de dades, de manera que ni tan sols un client modificat se'ls pot saltar.

### Estat

És un MVP: hi ha el model de dades, els rols, la verificació de la geotanca i les pantalles d'inici de sessió, mesura, obres, assignació, informes i administració. El mode sense connexió per a obres sense cobertura està preparat però encara no activat, i l'app encara no funciona a cap empresa. Per iniciar sessió necessites un compte de la teva empresa.

### Per als beta testers

De moment la versió de prova és només per a **Android**. Funciona amb una empresa de prova, «Stavby s.r.o.», amb persones inventades i dues obres: la reforma d'unes oficines a la plaça de Venceslau de Praga i la climatització a la plaça de la Llibertat de Brno. Les dades es poden esborrar en qualsevol moment. A l'app no hi ha registre: el compte te l'envia qui t'ha convidat a provar-la.

**Instal·lació**

1. Al mòbil, baixa l'APK amb el botó de la secció **Baixades** de dalt (o des de [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Obre el fitxer baixat i permet la instal·lació des d'orígens desconeguts quan Android t'ho demani.
3. Google Play Protect pot avisar que no coneix l'app. És perquè no ve de Google Play; tria instal·lar-la igualment.
4. Obre **PMTracker** i inicia sessió amb el compte que t'ha arribat al missatge.

**Què provar com a membre de l'equip**

- A la pestanya **Výkaz** (Full d'hores), toca **Zahájit výkaz** (Inicia el full), tria una obra i permet l'accés a la ubicació. Al lloc de l'obra apareixerà sota el temps un «Na místě» (Al lloc) en verd.
- Si no ets al lloc, l'app demana un motiu. No passa res: escriu, per exemple, «test» i el registre es desarà amb una nota que s'ha fet fora del lloc.
- Al cap d'una estona, atura la mesura amb el botó **Ukončit výkaz** (Tanca el full). «Dnes celkem» (Total d'avui) augmentarà.
- A la pestanya **Zakázky** (Obres), obre el detall: adreça, mida de la geotanca, qui hi està assignat i la llista de tasques.

**Què provar com a responsable**

- També veus **Roster** (el teu equip) i **Reporty** (Informes) amb el temps treballat per persona i obra. A l'informe només compten les mesures aturades; el període es canvia a dalt a la dreta.
- Per canviar de compte, tanca la sessió (icona a dalt a la dreta de la pestanya **Výkaz**).

**Què no cal esperar encara**

- Sense internet l'app no funciona; el mode sense connexió arribarà més endavant.
- Una mesura oblidada no s'atura sola; atura-la a mà.
- Encara no hi ha versió d'iPhone per als testers.

Envia errors o idees a qui t'ha convidat: què feies, què ha passat i amb quin compte. Una captura de pantalla ajuda molt.
