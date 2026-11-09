---
tagline: Llogar un pis, de la cerca al mapa fins al lloguer pagat — per a propietaris, llogaters i l'operador
---
TerraReality és una plataforma de lloguer de llarga durada de pisos i habitacions. Comença a Praga i rodalia, però les dades estan preparades des del principi per a altres països de l'Europa central (jurisdicció del contracte, moneda, llengua). A diferència d'un portal d'anuncis, no s'acaba en el contacte: acompanya el propietari i el llogater durant tot el lloguer — cerca, missatges, sol·licitud, visita, contracte i signatura, fins als pagaments i el seu seguiment.

La plataforma té quatre cares. **Qui busca** cerca al mapa o simplement escriu què vol. **El propietari o administrador** té un panell a l'estil d'una botiga en línia: anuncis, interessats, contractes, banc, cartera i facturació. **El llogater** té el seu portal amb el contracte, els pagaments i els codis QR. **L'operador** té un backoffice per a aprovacions, moderació i configuració. A més, una app mòbil per a iOS i Android.

Les captures són de l'entorn de desenvolupament amb dades de prova: els noms són inventats, les fotos dels pisos són il·lustratives i els suggeriments de la IA es van generar en mode fora de línia, sense model de llenguatge.

### Cerca al mapa i per xat

El mapa va de la regió al municipi, al districte i fins al carrer, i a cada escala mostra quantes ofertes hi ha i on. Al costat hi ha els filtres (tipus, preu, superfície, distribució, equipament, mascotes, transport) amb el recompte de cada opció. Qui no vol fer clic pot escriure, per exemple, «2+kk fins a 25 000 a Praga 6 amb gos i balcó» — la plataforma ajusta els filtres i l'enquadrament del mapa a partir de la frase i mostra com l'ha entesa. La cerca es pot desar i les ofertes noves arriben amb un avís.

### Anunci amb ajuda de la IA — sempre amb el vistiplau d'una persona

El propietari introdueix l'adreça del registre oficial d'adreces (RÚIAN), les característiques, les fotos i el text. La IA pot proposar característiques a partir de la descripció i les fotos (ascensor, balcó, tipus d'edifici…) i redactar el text de l'anunci en txec i en anglès. Però una proposta no es desa mai sola: el propietari veu què suggereix la IA, marca el que és correcte i només llavors s'aplica. Abans de publicar-se, una persona aprova l'anunci al backoffice. A cada anunci el propietari pot afegir preguntes per als interessats (per exemple, «Tens mascota?»).

### Missatges

L'interessat escriu al propietari directament des de l'anunci; els missatges arriben en temps real, amb confirmació de lectura i adjunts. Fins a la signatura del contracte, la plataforma amaga els números de telèfon i els correus del text perquè ni l'acord ni els pagaments en surtin — i l'interessat veu l'avís «no paguis res abans de la visita». Qui no està connectat rep una notificació push o un correu. Una conversa sospitosa es pot denunciar amb un clic.

### Sol·licituds, pis compartit i elecció del llogater

L'interessat presenta la sol·licitud sol o en nom d'un grup de companys de pis: crea un grup, convida els altres per correu, es posen d'acord al xat del grup i la sol·licitud arriba al propietari només quan tothom hi està d'acord. El propietari veu un resum dels interessats amb les respostes a les seves preguntes, l'estat de verificació i un breu resum de la IA (de nou, només una proposta). La plataforma no recull dades protegides com l'edat, el sexe o la nacionalitat. Quan el propietari tria algú, els altres reben una resposta automàtica amable.

### Visites

El propietari publica horaris de visita amb aforament i una nota («ens veiem davant del portal»); els interessats els reserven, canvien o cancel·len directament a la sol·licitud i reben un recordatori.

### Contracte digital i signatura

El contracte es crea a partir d'una plantilla (pis de durada determinada o indefinida, lloguer conjunt de companys de pis, habitació) i s'emplena amb les dades de l'oferta. Del formulari en surt un PDF, les dues parts el signen en línia i cada esdeveniment — proposta, signatura, pagament, rescissió — queda registrat en una cadena d'auditoria en què cada registre està enllaçat a l'anterior amb un hash. Així, una modificació posterior de l'historial no es pot amagar; la pàgina del contracte mostra que la cadena és intacta. La plataforma també gestiona la rescissió i la liquidació de la fiança.

Les plantilles porten la marca d'aigua ESBORRANY fins que les revisi un advocat, i la signatura és de moment una signatura electrònica simple amb registre de proves (hora, adreça IP, empremta del document). La signatura amb Bank iD està preparada com a pas següent i espera el contracte amb Bank iD.

### Pagaments — els diners van directament al propietari

Del contracte en surt un calendari de pagaments: fiança, lloguer i bestretes de despeses, repartits per quotes entre companys de pis. El llogater paga amb un codi QR a l'app del banc o amb targeta mitjançant un enllaç de Revolut Business que porta al compte de comerciant propi del propietari. El propietari pot connectar el compte bancari (només lectura) i els pagaments entrants es concilien sols segons el símbol variable, el símbol específic i l'import; el que no quadra queda com a proposta per conciliar a mà. Després del venciment arriben recordatoris i, al cap de set dies, una escalada.

**TerraReality mai no guarda ni reenvia els diners dels llogaters.** Sense dipòsit en garantia, sense criptomonedes — els pagaments van directament del compte del llogater al del propietari.

### Traspàs de lloguers existents

El propietari que ja té pisos llogats amb un contracte en paper no ha de tornar a signar res. Incorpora el lloguer com a signat fora de la plataforma, puja l'escaneig del contracte i els pagaments se segueixen des de la data del traspàs: el deute anterior passa al saldo inicial, la fiança dipositada queda registrada i també es manté el símbol variable de sempre. Els llogaters no reben res fins que el propietari els convida al portal del llogater. Es poden importar diversos lloguers alhora des d'un full de càlcul.

### Cartera en diverses ciutats i risc dels lloguers

Per a propietaris i administradors amb diversos pisos: resum de tots els lloguers per municipi, el que s'espera cobrar cada mes i el que ha entrat de veritat, la tendència de dotze mesos, la llista del que requereix atenció (deute, escalada, rescissió, unitat buida), la concentració d'ingressos i un rent roll exportable a CSV i Excel. Cada lloguer té una puntuació de risc calculada a partir de regles (deute, pagaments antics pendents, cobertura de la fiança, final de contracte proper…). La puntuació és només informativa i mai no decideix sobre ningú; el llogater veu d'on surt. Les regles (recordatoris, escalada, fiança, termini de preavís) es poden configurar per municipi, i un inversor pot tenir accés només de lectura en què veu els llogaters només amb les inicials.

### Promoció i facturació

El propietari pot destacar o ressaltar l'anunci. Paga amb targeta a través de Stripe, la factura amb IVA s'emet sola, arriba per correu i es pot descarregar al panell. Els anuncis destacats apareixen marcats com a «Destacat» als resultats.

### Backoffice, moderació i DSA

L'operador té un resum de mètriques, una cua d'anuncis per aprovar, la moderació de converses i anuncis denunciats, una cua de propostes de la IA per a noves característiques, la tarifa de promoció, les plantilles de contracte, interruptors de funcions i un registre d'auditoria. Qualsevol pot denunciar un anunci, fins i tot sense compte (segons el Reglament europeu de serveis digitals, DSA); cada cas el decideix una persona i la justificació s'envia per correu tant a qui denuncia com a l'anunciant. Iniciar sessió «com a usuari» durant el suport exigeix indicar un motiu i queda registrat a l'auditoria.

### App mòbil

L'app Flutter per a iOS i Android cobreix el que el llogater necessita al mòbil: cerca amb llista i mapa, detall de l'anunci amb missatge, sol·licitud i reserva de visita, les meves visites, el lloguer amb pagament per QR i enllaç de Revolut, i obertura directa des de les notificacions push. És una primera versió; les compilacions per als testers (TestFlight i el canal intern de Google Play) arribaran amb la preparació de les proves.

### Operació

L'entorn de producció està preparat per a Hetzner a la UE: servidors d'aplicació i de base de dades separats en una xarxa privada, HTTPS automàtic, còpies de seguretat de la base de dades amb recuperació a qualsevol moment (com a màxim una hora de dades perdudes) i una prova de restauració verificada, monitoratge amb alertes (disponibilitat del 99,9 %, resposta de la cerca per sota de 300 ms, estat de les còpies) i informes d'errors. La IA funciona en un servidor GPU propi; quan la IA no està disponible, tot funciona igualment sense.

### Estat i proves

**L'MVP de tota la plataforma està acabat.** Tots els mòduls anteriors estan programats i coberts per proves automàtiques — unitàries, d'integració i end-to-end, que recorren al navegador escenaris complets (anunci, missatges, sol·licitud en grup, contracte amb signatura i pagament conciliat, cartera, promoció amb factura, denúncia segons la DSA, backoffice). També s'ha verificat la restauració de la base de dades a partir d'una còpia de seguretat.

També estan enllestides les millores de seguretat i d'operació recomanades a la revisió del codi i les notificacions push per a sol·licituds, contractes i pagaments. Una beta tancada funciona en un servidor propi amb anuncis de mostra per a Praga i rodalia, marcats com a tals. El desplegament en producció a Hetzner espera els comptes i els accessos (vegeu més avall).

Les proves amb persones reals es fan en cinc fases. Cadascuna acaba en una porta on es decideix conjuntament si se segueix endavant:

1. **T0 — preparació (2 setmanes).** Entorn de proves a Hetzner amb la franja «Entorn de proves», socis en mode sandbox (Stripe, Revolut, Bank iD), analítica de producte sense dades personals, un botó «Informa d'un problema / idea» al web i a l'app, registre només per invitació, dades de prova i compilacions de l'app per als testers.
2. **T1 — proves internes (1 setmana).** 5–8 persones de l'equip i el seu entorn recorren tots els escenaris com a propietari i com a persona que busca, en diversos dispositius, incloent-hi un simulacre d'incident i una restauració des d'una còpia de seguretat.
3. **T2 — proves d'usabilitat moderades (2 setmanes).** 12 participants: propietaris particulars, un administrador amb pisos a diverses ciutats, persones que busquen pis txeques i estrangeres i una parella de companys de pis. Es mesura l'èxit de les tasques i la satisfacció (SUS ≥ 70).
4. **T3 — pilot tancat a Praga (6 setmanes).** 20 propietaris pilot amb incorporació personalitzada i 50–100 persones que busquen pis, només per invitació. S'observa si els anuncis reben sol·licituds, com de ràpid responen els propietaris, quants contractes es tanquen digitalment i com de fiable funciona tot; una versió per setmana.
5. **T4 — beta oberta a Praga (4 setmanes).** Registre obert a tothom amb l'etiqueta beta, sense campanya de pagament — i al final, la decisió sobre el llançament públic.

En total, unes 15 setmanes des de l'inici de la preparació.

**Què necessitem de vosaltres:**

- comptes i accessos per a l'operació: Hetzner, domini i DNS, comptes de desenvolupador d'Apple i Google, Stripe, Revolut Business, Bank iD i el proveïdor de connexió bancària;
- reclutament de testers, 20 propietaris pilot i persones que busquen pis, recompenses per als participants;
- revisió jurídica de les condicions d'ús, la política de privacitat i les plantilles de contracte, els consentiments dels testers i la decisió de si al pilot se signen contractes reals directament a la plataforma;
- una prova de penetració abans del pilot, la conducció de les entrevistes al T2 i el suport de primera línia durant el pilot;
- la decisió a cada porta entre fases.
