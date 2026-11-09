---
tagline: Una cucina tranquilla nell'ora di punta: i cuochi sentono le comande, la sala vede tra quanti minuti arriva cosa
---
Nell'ora di punta, al ristorante si perde tempo tra la cucina e la sala. Le comande si accumulano sulla linea, i camerieri entrano in cucina per chiedere quando esce il tavolo sette, e i piatti già pronti si raffreddano al pass perché nessuno se n'è accorto. Předávka risolve tutto questo senza costringere nessuno a guardare altri schermi: **i cuochi sentono le comande**, **la sala vede su un unico display tra quanti minuti arriva cosa e a quale tavolo**, e il piatto pronto al pass, dopo qualche minuto, chiede da solo di essere ritirato.

Tutto gira nel ristorante su un solo piccolo computer: niente cloud, niente canone mensile per i server, e in ceco. Se cade internet, il servizio va avanti.

### La cucina ascolta, non deve leggere

Quando arriva una comanda, un altoparlante al pass dice una frase breve, per esempio «Tavolo sette: due svíčková, una cotoletta.» Numeri e nomi dei piatti sono declinati correttamente in ceco («jedna svíčková, dvě svíčkové, pět svíčkových»). La voce viene generata direttamente nel ristorante e nei test era pronta da riprodurre entro 0,2 s dall'evento. Gli annunci non si sovrappongono mai: hanno un ordine di importanza, una pausa tra l'uno e l'altro, e una comanda vecchia che il display mostra già non viene letta inutilmente. Il pulsante «Ancora una volta» ripete l'ultimo annuncio.

### Una coda da cui il cuoco prende

Ogni postazione (griglia, caldo, freddo, dessert) ha la sua coda su un tablet o un televisore. Il cuoco prende un piatto con un tocco o con un tasto del bump bar. Così il sistema sa chi cucina cosa e da quando, e se per due minuti nessuno prende in carico una comanda, si fa sentire: «Tavolo sette, griglia, aspetta un cuoco.»

### La sala sa quando e dove portare

Il display in sala mostra i tavoli, cosa sta arrivando e tra quanti minuti. La stima non cambia di continuo (al massimo una volta ogni mezzo minuto), così ci si può organizzare. In alto c'è sempre quello che va ritirato. Al pass il cibo «invecchia»: dopo tre minuti si sente «Tavolo sette pronto, da tre minuti al pass», e l'annuncio si ripete finché qualcuno non lo porta via.

### Le stime imparano dalla tua cucina

All'inizio lo chef inserisce una volta quanto dura ogni piatto. Poi Předávka misura ogni piatto dalla presa in carico a quando è pronto e, dopo cinque misurazioni, usa i tempi reali di quella cucina. La stima per il cliente tiene così conto di quanto c'è in coda prima di lui e di quanti cuochi lavorano contemporaneamente alla postazione.

### Funziona con qualsiasi cassa

Le comande si possono prendere dalla stampante delle comande: Předávka si inserisce tra la cassa e la stampante, la comanda si stampa come prima e lei ne legge tavolo e piatti. Non serve quindi nessuna integrazione con una cassa specifica. Le comande si possono anche inserire direttamente dal tablet di sala.

### Immagini dei piatti

Una voce del menu può avere un'immagine o un'emoji. I display nel browser le mostrano sui pulsanti dell'ordine, sulle schede in cucina, al pass e in sala. Lo stesso sistema si può avviare anche a casa come gioco del ristorante per bambini: una cucina, un menu per bambini con le immagini, un computer che fa da server e da altoparlante, e gli altri dispositivi aprono solo il browser sullo stesso Wi-Fi.

La descrizione dettagliata delle funzioni e di un servizio dall'inizio alla fine è nella pagina [Come funziona](predavka-features.html) (in ceco), con tre momenti della serata: coda vuota, qualche tavolo e «non ce la facciamo!».

### Stato

Předávka è un prototipo funzionante e completo: server, voce, ascolto della stampante, coda, stime, uscite delle portate e display (un'app per Android TV e tablet e una versione per browser) sono realizzati e testati in una simulazione del servizio. **Non è ancora stata usata in un vero ristorante.** Il prossimo passo è un pilota in una cucina: comprensibilità della voce nel rumore della cappa, sonorizzazione della cucina con più altoparlanti e leggibilità dei display su televisori veri.

Gli screenshot vengono da display reali. Quello che mostrano è stato ottenuto simulando un servizio: menu e tavoli inventati, con il tempo fermo in un dato momento della serata.
