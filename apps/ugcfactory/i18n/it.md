---
tagline: Una fabbrica di accessori per Roblox: dal prompt al modello 3D senza modellare a mano
---
UGC Factory produce accessori per avatar del Roblox Marketplace. Scrivi quello che vuoi —
*«un elmo da samurai decorato con accenti al neon»* — e dall’altra parte esce un
modello 3D texturizzato pronto da caricare. Niente modellazione a mano.

## Come funziona

Il lavoro è diviso tra tre macchine. Un **DGX Spark** con GPU disegna il concept (Illustrious per gli oggetti,
Juggernaut XL per ciò che si indossa — scelto in base alla categoria), rimuove lo sfondo e trasforma l’immagine
in un modello 3D. Un **NAS** tiene la coda, il catalogo e un Blender headless che porta il modello nei
limiti di Roblox — sotto i 4.000 triangoli, UV, texture bakata, il punto di aggancio
giusto. Il **telefono** serve a smistare.

La corsia veloce (SF3D) costruisce un modello in un secondo e mezzo, quindi si può sperimentare in
grande. TRELLIS, più lento e più fine, parte solo quando si impacchetta un pezzo che è passato
sotto il tuo occhio — il calcolo costoso si spende solo per ciò che vuoi davvero vendere.
I pezzi decorati come diademi ed elmi passano direttamente da TRELLIS.

## L’app

Il client mobile è il cuore di tutto. **Composer** lancia un lotto — categoria × stile ×
varianti, anche cinquanta pezzi alla volta. **Coda** mostra in diretta cosa si sta producendo e
in quale fase. **Triage** è la parte principale: un pezzo sullo schermo, un interruttore tra il
concept e il modello 3D ruotabile, tre pulsanti — approva, scarta, riprova
con un altro seed. Si scorre più in fretta di quanto si legga. **Review** mostra il
pezzo convertito: numero di triangoli rispetto al limite, UV, chiusura della mesh,
texture e verdetto PASS, WARN o FAIL. Da qui il pezzo si può riconvertire o
impacchettare per il caricamento. Il nuovo impacchettamento non sovrascrive nome, descrizioni, prezzo e tag
compilati nell’app.

Funziona su Android, iOS, macOS e nel browser. Il server la serve dalla propria
origine, quindi la versione web è sempre aggiornata.

## Decorato tutto intorno

Il modello nasce da una sola immagine, quindi il retro non l’ha visto nessuno e viene
piatto e spoglio. Per i pezzi davvero a simmetria radiale (una torta,
una corona) si copia quindi lo spicchio frontale tutto intorno e si salda la cucitura. Si attiva
nel Composer o su un pezzo finito durante una nuova conversione, senza generare altro.
Non va bene per i pezzi piatti — si sfaldano in un patchwork di spicchi.

## Categorie

Riescono meglio le cose che esistono **da sole** anche nei dati di addestramento:
zaini, borsette, diademi, cappelli, torte, maschere, scudi, anelli.
Creazioni da modista con piume e fiori, borse trapuntate con monogramma, corone
con perle e agate, maschere ispirate a cinque culture, code pelose di volpe e
procione, cuccioli kawaii da spalla.

Le immagini vengono bene quasi sempre — per i modelli non è affatto così, ed è il modello
che conta. Le forme compatte e piene (zaino, torta, anello) reggono bene. Le strutture
sottili e traforate si strappano sulla corsia veloce, quindi i diademi prendono subito la strada lenta.
E un input disegnato ha poche ombre, per cui ne esce un rilievo invece di un volume — gli animaletti
pastello hanno bisogno di un prompt che imponga un’ombreggiatura morbida.

Vestiti e capelli sono un osso duro: il modello li conosce solo addosso a una figura, quindi dal prompt
*«abito drago»* disegna un drago. Aiuta passare a un modello fotorealistico e
formularlo come una foto prodotto — *«abito su un manichino invisibile»*.

Inoltre Roblox gestisce abiti, scarpe e guanti come layered clothing con una cage mesh,
che la fabbrica ancora non sa fare. Per dita e mani Roblox non ha proprio alcun punto di aggancio.
