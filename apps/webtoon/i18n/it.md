---
tagline: Fumetti in verticale anche senza internet — storie gratis, librogame dove scegli tu e vignette che prendono vita
visuals: {n} immagini — vignette di cinque storie per bambini, il confronto tra due stili e character sheet.
---
Toonfork (nome provvisorio Webtoon) è un lettore di fumetti in verticale che funziona anche senza internet. Appena installato contiene 15 storie gratis, senza account e senza registrazione. Le storie nascono su un nostro server GPU: un modello linguistico scrive la sceneggiatura, un modello di immagini disegna le vignette e i balloon con il testo li aggiunge solo il lettore, così il testo si può correggere senza rigenerare l'immagine.

Le strisce finite di cinque storie per bambini sono nella sottopagina Strips, il ciclo di gioco con una scelta a fine episodio nella sottopagina Gamebook.

### Lettore

Una storia è un'unica lunga striscia di vignette con balloon, pensieri, urla ed effetti sonori, che scorri col pollice dall'alto in basso. Alcune vignette prendono vita in brevi loop: la pioggia sul vetro, la luce sull'acqua, il vento tra i capelli. A fine episodio vedi cosa è stato scelto e il pulsante **Episodio successivo**. Dopo l'ultimo episodio arriva **Fine** con il suggerimento di un'altra storia.

### Librogame

In un librogame la trama la decidi tu. Alla fine di ogni parte scegli come continuare e la storia si dirama. L'app ricorda dove sei, che strada hai fatto e quali finali hai trovato; la mappa del percorso mostra solo ciò che hai già visitato. Puoi ricominciare o tornare indietro di un passo. I librogame sono gratis: per i bambini **Sara e la corona nera**, per gli adulti per esempio il dramma da camera nello studio di uno psicologo **Imparare a tacere**, **Cielo di metallo sopra di noi** o **Il prato fiorito diventato grigio**. I drammi affrontano temi difficili e il profilo Bambini li nasconde.

In beta c'è l'editor dei rami: a qualsiasi scelta aggiungi un tuo seguito, lo componi con le immagini del librogame e scrivi i balloon. Il ramo lo giochi subito e puoi mandarlo all'autore con la condivisione, nessun server.

### Pacchetti

Pacchetti opzionali aggiungono fino a 50 storie: **Romantico** (storie d'amore leggere per adulti, senza scene esplicite), **Per bambini** e **Supereroi**. Dopo l'acquisto il pacchetto si scarica e si legge offline. Un solo acquisto sblocca tutto, compresi i pacchetti che usciranno in futuro.

### Profilo e controllo genitori

Al primo avvio scegli il profilo **Bambini** o **Adulti**. Il profilo Bambini nasconde le storie romantiche e i drammi in libreria e nello store. Ogni acquisto e ogni passaggio ad Adulti è protetto da un controllo per i genitori con una domanda sulle tabelline.

### 12 lingue

Storie, librogame e testi del lettore sono in 12 lingue: ceco, inglese, tedesco, francese, italiano, polacco, portoghese brasiliano, giapponese, coreano, vietnamita, russo e ucraino. La lingua dei balloon si cambia nelle Impostazioni.

### Privacy

Niente account, niente pubblicità, niente tracciamento. Toonfork non raccoglie dati personali; quello che hai comprato lo ricorda il dispositivo e gli acquisti si ripristinano nelle Impostazioni.

## Studio: come nascono le storie

L'altra faccia della stessa app è lo Studio per l'autore. L'autore costruisce un mondo: lore, personaggi, luoghi e un canone che ogni storia deve attraversare. Nello Studio si può anche giocare in modo interattivo: a fine episodio il lettore sceglie cosa farà il personaggio, oppure lo scrive con parole sue, e dalla scelta nasce l'episodio successivo. Il testo libero passa prima dalla moderazione; in un mondo per bambini è più severa e nel dubbio preferisce rifiutare. Gli screenshot di questa pagina vengono dallo Studio.

### Editor del mondo

Nell'app l'autore ha la scheda **Crea**:

- **Base:** titolo, sinossi, tono, lingua, pubblico (Per bambini, Dai 13 anni, Per adulti), visibilità e uno stile grafico che vale per tutto il mondo.
- **Lore e canone:** regole del mondo, fazioni, nodi canonici in ordine fisso e paletti, cioè ciò che non deve succedere.
- **Personaggi e luoghi:** una descrizione con parole proprie. Da lì un LLM propone tag booru fissi per il modello di immagini. I tag che il modello non conosce vengono scartati in base al vocabolario WD14 e l'autore rifinisce il resto.
- **Character sheet:** quattro varianti del personaggio su sfondo bianco. Quella che corrisponde meglio ai tag diventa l'immagine di riferimento.
- **Panoramica:** campagne, dove si sono fermati i lettori, quali scelte hanno fatto e fin dove sono arrivati nel canone.

### Modelli

- **Sceneggiatura e moderazione:** Qwen3.6-35B-A3B tramite vLLM. Propone i tag per personaggi e luoghi e scrive lo storyboard degli episodi (6–8 vignette, 2–3 scelte e un campo per il testo libero). Poi un validatore controlla personaggi, luoghi e regole del mondo.
- **Vignette:** SDXL tramite ComfyUI. Quello predefinito è NoobAI-XL eps 1.1, il secondo stile è Hassaku XL (Illustrious) 3.4. Solo questi modelli disegnano personaggi umani.
- **Vignette vive:** Wan 2.2 trasforma una vignetta finita in un loop di 1–3 s, al massimo due vignette animate per episodio.
- **Controllo dei contenuti:** il tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Controlla ogni vignetta e, a seconda del pubblico, la scarta e la ridisegna con un nuovo seed. Per i bambini rifiuta anche abiti aderenti e scollati. Lo stesso tagger misura se il personaggio nella vignetta corrisponde al suo design.

L'identità del personaggio la reggono i soli tag. IP-Adapter è pronto, ma nella prima misurazione rovinava piuttosto l'immagine. Il modello non tiene due personaggi umani nella stessa inquadratura: scambia loro capelli e vestiti. Per questo le storie per bambini danno a ogni personaggio una vignetta tutta sua.

### Stili

Uno stile è un preset con un nome: checkpoint, sampler, numero di passi, CFG e tag estetici. L'autore lo sceglie una volta per tutto il mondo. **clean_webtoon_noartist** ha colori piatti e linea pulita, **hassaku_soft** ombreggiature morbide e colori pastello. Nei visual lo stesso episodio è affiancato nei due stili.

### Stato

Toonfork è in alfa: le build per macOS e Android si scaricano da GitHub, App Store e Google Play sono in preparazione. Lo Studio gira solo sul proprio backend (Go con una coda di lavori in Postgres) e non è accessibile pubblicamente. Immagini e testi nascono su un nostro server GPU.

Gli screenshot vengono dalla versione web dello Studio in larghezza telefono, su un backend locale. L'episodio 2 ha solo la sceneggiatura, le vignette aspettano ancora di essere disegnate. Il codice sorgente è su [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
