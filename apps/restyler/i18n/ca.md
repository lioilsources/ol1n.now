---
tagline: Un selfie, barba nova, ulleres o pentinat, i després tot un fotomaton de tu en estils diferents
---
Restyler és un fotomaton al mòbil. Et fas un selfie, et proves una barba nova,
unes ulleres o un pentinat, i l'app passa aquest nou look per diversos estils:
Vermeer, Van Gogh, anime, còmic, cinema negre. El resultat és una graella o
una tira com les del fotomaton de l'estació, només que en lloc de quatre
ganyotes iguals, a cada fotograma ets en un món diferent i continues sent
clarament tu.

### Pas a pas

L'assistent segueix l'ordre **barba → ulleres → cabells → estils**. Cada pas
es pot saltar amb el botó **Deixar**, així que n'hi ha prou amb canviar el
color dels cabells o enviar el selfie original directament als estils.

- **Barba:** 21 talls, des de la barba de tres dies i la barba completa fins
  a la garibaldi, o un afaitat net.
- **Ulleres:** 26 muntures, graduades i de sol, amb tria d'acabat.
- **Cabells:** 35 pentinats per a dones i homes i 16 colors. També pots
  deixar el pentinat i canviar només el color.
- **Estils:** 4, 6 o 8 fotogrames de 300 estils que recorren èpoques, pintors
  i mitjans. Cada estil pot ser pintura o foto. Si no vols triar, agafa una
  barreja ja feta: Galeria, Pop i còmic, Viatge per les èpoques, Àsia, Petjada
  txeca.

Cada opció té previsualització, així veus què tries abans que es renderitzi
res.

### Fotomaton

Els fotogrames acabats es col·loquen en una graella o en una tira amb peus de
foto. La tira es pot desar a Fotos o compartir a l'instant. Cada projecte es
queda al mòbil i s'obre fins i tot sense internet.

### Què s'executa al mòbil

Gairebé tot. La detecció de la cara, els cabells, els ulls i la barba la fa un
model directament al mòbil, igual que les màscares, l'estimació del color dels
cabells, els prompts i el muntatge de la tira. Al servidor només hi va una
foto amb les màscares i tornen les imatges acabades. El render es fa en un
servidor GPU propi, no al núvol d'altri. L'app no té comptes, anuncis ni
pagaments. A banda d'aquesta foto, al servidor propi del desenvolupador només
hi arriben estadístiques d'ús anònimes, sense identificadors, i les pots
desactivar a Configuració.

Restyler encara és en proves tancades: a l'iPhone a través de TestFlight, a
Android a través de Firebase.
