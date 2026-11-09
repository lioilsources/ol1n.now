---
tagline: Xat d'IA amb rols, Bibliotecari i Advocat, un estudi per a imatges, vídeo, contes, música i veu
---
Ol1nLLM és una sola app sobre el teu propi servidor: xerra, cerca en una biblioteca i en les lleis, dibuixa, converteix una imatge en vídeo, roda un conte, compon música i llegeix les respostes amb una veu enregistrada.
Tens una guia detallada amb captures a la pàgina [Què sap fer l'app](ol1nllm-features.html).

### Xat

La conversa comença triant un **rol** — deu personalitats, des d'un nen de cinc anys fins a un avi, i quatre assistents amb dades pròpies. La resposta s'escriu sobre la marxa, la conversa es pot **ramificar** i el rol es pot canviar a mitja conversa.

- **Bibliotecari** respon a partir d'un corpus de filosofia i textos sagrats en les llengües originals i mostra els passatges d'on ha tret la resposta, amb traducció al txec.
- **Advocat** respon a partir de les lleis txeques vigents i cita els articles.
- **Advocat – contractes** redacta un contracte a partir d'una plantilla: pregunta targeta per targeta i vigila els límits legals.
- **Leads** cerca empreses i institucions al Registre de contractes txec.

### Image Studio

La imatge es crea per rondes que formen un arbre: text → imatge, i després retocs de la variant triada. Dinou models (FLUX, SDXL, línies anime), més de tres-cents **estils** artístics (cultures i èpoques, artistes, tècniques), plantilles de **postures**, **LoRA** del servidor i un prompt negatiu escrit en majúscules.

- **Mantén la postura** i **Mantén la cara** — un personatge nou en la postura de la referència i, si vols, també amb la seva cara.
- **Mapa d'estils** — centenars d'imatges del mateix tema ordenades per semblança; el dit llisca pel mosaic, l'estil canvia com una animació, i s'aplica el que triïs.
- **Inpaint** — pintes una zona i descrius què hi ha d'haver.
- **Perruquer** — un pentinat o un color de cabell nous sense dibuixar cap màscara.
- **Anima-ho** — un vídeo curt a partir d'una imatge: balls i gestos del servidor, o la teva pròpia descripció del moviment.
- **3D** — un model per imprimir (STL), o una figureta ballarina amb esquelet.

### Story Studio

Tries un conte d'entre deu guions, repartes els papers amb les teves imatges i el servidor en fa un vídeo animat d'un minut amb narrador, música i subtítols. Pots revisar els plans abans de l'animació i fer redibuixar els que no hagin sortit bé.

### Music Studio

Dona a l'estudi una mostra musical — d'un fitxer o enregistrada amb el micròfon — i en deduirà el gènere, el tempo i la tonalitat. **Vibe** compon una peça nova amb el mateix esperit, **Groove** fa un nou arranjament de l'original en un altre gènere.

### Voice Studio

D'un enregistrament curt — fins i tot de la pista d'àudio d'un vídeo — neix una **veu** pròpia. Qualsevol veu es pot provar amb qualsevol frase i assignar a un rol del xat. Aleshores, l'altaveu sota la resposta la llegeix amb la veu d'aquell rol.

### Historial

Les converses, sessions, projectes i contes es queden al mòbil. Les tasques llargues s'executen al servidor: pots tancar l'app i, quan hi tornis, s'hi reconnecta tota sola.

Feta amb Flutter, funciona al mòbil i a l'escriptori. L'app és un client del teu propi servidor de models; sense ell no genera res.
