---
tagline: Còmics verticals fins i tot sense internet — històries gratuïtes, llibres-joc on tries tu i vinyetes que cobren vida
visuals: {n} imatges — vinyetes de cinc històries infantils, una comparació de dos estils i character sheets.
---
Toonfork (nom provisional Webtoon) és un lector de còmics verticals que funciona també sense internet. Només instal·lar-lo ja porta 15 històries gratuïtes, sense compte i sense registre. Les històries es creen en un servidor GPU propi: un model de llenguatge escriu el guió, un model d'imatge dibuixa les vinyetes i els globus amb el text els afegeix només el lector, de manera que el text es pot corregir sense tornar a generar la imatge.

Les tires acabades de cinc històries infantils són a la subpàgina Strips, i el bucle de joc amb una tria al final de l'episodi, a la subpàgina Gamebook.

### Lector

Una història és una sola tira llarga de vinyetes amb globus, pensaments, crits i efectes de so que fas lliscar amb el polze de dalt a baix. Algunes vinyetes cobren vida en bucles curts: pluja a la finestra, llum sobre l'aigua, vent als cabells. Al final de l'episodi veus què s'ha triat i el botó **Episodi següent**. Després de l'últim episodi arriba **Fi** i un suggeriment per a la història següent.

### Llibres-joc

En un llibre-joc, la trama la decideixes tu. Al final de cada part tries com continua i la història es ramifica. L'app recorda on ets, per on has anat i quins finals has trobat; el mapa del recorregut només mostra el que ja has visitat. Pots tornar a començar o fer un pas enrere. Els llibres-joc són gratuïts: per als infants **Sara and the Black Crown**, per als adults, per exemple, el drama de cambra en una consulta de psicologia **Learning to Be Silent**, **Metal Sky Above Us** o **The Blooming Meadow That Turned Grey**. Els drames tracten temes difícils i el perfil infantil els amaga.

En beta hi ha un editor de branques: a qualsevol tria hi afegeixes la teva pròpia continuació, la muntes amb les imatges del llibre-joc i escrius els globus. La branca la jugues de seguida i la pots enviar a l'autor des de Compartir, sense cap servidor.

### Paquets

Els paquets opcionals afegeixen fins a 50 històries: **Romàntica** (històries d'amor lleugeres per a adults, sense escenes explícites), **Per a infants** i **Superherois**. El paquet es baixa després de la compra i es llegeix sense connexió. Una sola compra ho desbloqueja tot, inclosos els paquets que surtin més endavant.

### Perfil i control parental

El primer cop que l'obres tries el perfil **Infants** o **Adults**. El perfil infantil amaga la romàntica i els drames a la biblioteca i a la botiga. Cada compra i cada canvi a Adults està protegit per un control parental amb una pregunta de la taula de multiplicar.

### 12 idiomes

Les històries, els llibres-joc i els textos del lector estan en 12 idiomes: txec, anglès, alemany, francès, italià, polonès, portuguès del Brasil, japonès, coreà, vietnamita, rus i ucraïnès. L'idioma dels globus es canvia a Configuració.

### Privadesa

Sense compte, sense anuncis, sense seguiment. Toonfork no recull dades personals; el que has comprat ho recorda el dispositiu, i les compres es poden restaurar a Configuració.

## Studio: així neixen les històries

L'altra cara de la mateixa app és l'Studio per a l'autor. L'autor construeix un món: lore, personatges, llocs i un cànon pel qual ha de passar cada història. A l'Studio també es pot jugar de manera interactiva: al final de l'episodi, el lector tria què farà el personatge, o ho escriu amb les seves paraules, i de la tria neix l'episodi següent. El text lliure passa primer per moderació; en un món infantil és més estricta i, en cas de dubte, prefereix rebutjar. Les captures d'aquesta pàgina són de l'Studio.

### Editor de mons

L'autor té a l'app la pestanya **Crea**:

- **Bàsic:** títol, sinopsi, to, idioma, públic (Per a infants, A partir de 13 anys, Per a adults), visibilitat i un estil artístic que val per a tot el món.
- **Lore i cànon:** regles del món, faccions, nodes canònics en ordre fix i límits, és a dir, el que no pot passar.
- **Personatges i llocs:** una descripció amb paraules pròpies. A partir d'aquí un LLM proposa tags booru fixos per al model d'imatge. Els tags que el model no coneix es descarten segons el vocabulari de WD14, i l'autor ajusta la resta.
- **Character sheet:** quatre variants del personatge sobre fons blanc. La que s'ajusta millor als tags esdevé la imatge de referència.
- **Resum:** campanyes, on s'han aturat els lectors, quines opcions han triat i fins on han arribat en el cànon.

### Models

- **Guió i moderació:** Qwen3.6-35B-A3B via vLLM. Proposa tags per a personatges i llocs i escriu l'storyboard dels episodis (6–8 vinyetes, 2–3 opcions i un camp de text lliure). Després un validador comprova personatges, llocs i regles del món.
- **Vinyetes:** SDXL via ComfyUI. El predeterminat és NoobAI-XL eps 1.1, el segon estil és Hassaku XL (Illustrious) 3.4. Només aquests models dibuixen personatges humans.
- **Vinyetes vives:** Wan 2.2 converteix una vinyeta acabada en un bucle d'1–3 s, com a màxim dues vinyetes animades per episodi.
- **Control de contingut:** el tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Revisa cada vinyeta i, segons el públic, la descarta i la torna a dibuixar amb una nova seed. Per als infants, a més, rebutja la roba cenyida i reveladora. El mateix tagger mesura si el personatge de la vinyeta correspon al seu disseny.

La identitat del personatge la mantenen només els tags. IP-Adapter està preparat, però en la primera mesura més aviat espatllava la imatge. El model no aguanta dos personatges humans en un mateix pla: els intercanvia els cabells i la roba. Per això les històries infantils donen a cada personatge la seva pròpia vinyeta.

### Estils

Un estil és un preset amb nom: checkpoint, sampler, nombre de passos, CFG i tags estètics. L'autor el tria una vegada per a tot el món. **clean_webtoon_noartist** té colors plans i línia neta; **hassaku_soft**, ombrejat suau i colors pastel. Als visuals hi ha el mateix episodi en tots dos estils, un al costat de l'altre.

### Estat

Toonfork és en alfa: la versió per a Android és a Google Play, la build per a macOS es pot baixar de GitHub i l'App Store està en preparació. L'Studio només funciona amb el seu propi backend (Go amb una cua de tasques a Postgres) i no és accessible públicament. Les imatges i els textos es creen en un servidor GPU propi.

Les captures són de la versió web de l'Studio amb amplada de mòbil contra un backend local. L'episodi 2 hi té només guió; les vinyetes encara esperen ser dibuixades. El codi font és a [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
