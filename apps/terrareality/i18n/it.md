---
tagline: Affittare casa, dalla ricerca sulla mappa all'affitto pagato — per proprietari, inquilini e gestore della piattaforma
---
TerraReality è una piattaforma per affitti a lungo termine di appartamenti e stanze. Parte da Praga e dintorni, ma nei dati è pronta fin dall'inizio per altri paesi dell'Europa centrale (giurisdizione del contratto, valuta, lingua). A differenza di un portale di annunci, non si ferma al contatto: accompagna proprietario e inquilino per tutta la locazione — ricerca, messaggi, candidatura, visita, contratto e firma, fino ai pagamenti e al loro controllo.

La piattaforma ha quattro volti. **Chi cerca** cerca sulla mappa o scrive semplicemente cosa vuole. **Il proprietario o amministratore** ha un pannello in stile e-shop: annunci, candidati, contratti, banca, portafoglio e fatturazione. **L'inquilino** ha il suo portale con contratto, pagamenti e codici QR. **Il gestore** ha un backoffice per approvazioni, moderazione e impostazioni. In più, un'app mobile per iOS e Android.

Gli screenshot vengono dall'ambiente di sviluppo con dati di prova: i nomi sono inventati, le foto degli appartamenti sono illustrative e i suggerimenti dell'IA sono stati generati in modalità offline, senza modello linguistico.

### Ricerca sulla mappa e in chat

La mappa va dalla regione al comune, al quartiere e fino alla via, e a ogni livello di zoom mostra quante offerte ci sono e dove. Accanto ci sono i filtri (tipo, prezzo, superficie, disposizione, arredamento, animali, trasporti) con il conteggio per ogni opzione. Chi non vuole cliccare può scrivere per esempio «2+kk fino a 25 000 a Praga 6 con cane e balcone»: dalla frase la piattaforma imposta i filtri e l'inquadratura della mappa e mostra come l'ha capita. La ricerca si può salvare e per le nuove offerte arriva una notifica.

### Annuncio con l'aiuto dell'IA — sempre con il consenso di una persona

Il proprietario inserisce l'indirizzo dal registro ufficiale degli indirizzi (RÚIAN), le caratteristiche, le foto e il testo. L'IA sa proporre caratteristiche dalla descrizione e dalle foto (ascensore, balcone, tipo di edificio…) e scrivere il testo dell'annuncio in ceco e in inglese. Ma una proposta non viene mai salvata da sola: il proprietario vede cosa suggerisce l'IA, spunta ciò che è corretto e solo allora viene applicato. Prima della pubblicazione l'annuncio viene approvato da una persona nel backoffice. A ogni annuncio il proprietario può aggiungere domande per i candidati (per esempio «Hai un animale domestico?»).

### Messaggi

Il candidato scrive al proprietario direttamente dall'annuncio; i messaggi arrivano in tempo reale, con conferma di lettura e allegati. Fino alla firma del contratto la piattaforma nasconde nel testo numeri di telefono ed e-mail, perché né gli accordi né i pagamenti si spostino altrove — e il candidato vede l'avviso «non pagare nulla prima della visita». Chi non è online riceve una notifica push o un'e-mail. Una conversazione sospetta si segnala con un clic.

### Candidature, coinquilini e scelta dell'inquilino

Il candidato presenta la candidatura da solo o per un gruppo di coinquilini: crea un gruppo, invita gli altri via e-mail, si accordano nella chat di gruppo e la candidatura arriva al proprietario solo quando tutti sono d'accordo. Il proprietario vede l'elenco dei candidati con le risposte alle sue domande, lo stato della verifica e un breve riepilogo dell'IA (anche qui solo una proposta). La piattaforma non raccoglie dati protetti come età, sesso o nazionalità. Quando il proprietario sceglie qualcuno, gli altri ricevono una cortese risposta automatica.

### Visite

Il proprietario pubblica gli orari delle visite con capienza e una nota («ci vediamo davanti all'ingresso»); i candidati li prenotano, spostano o annullano direttamente nella candidatura e ricevono un promemoria.

### Contratto digitale e firma

Il contratto nasce da un modello (appartamento a tempo determinato o indeterminato, locazione congiunta di coinquilini, stanza) e si compila con i dati dell'offerta. Dal modulo si genera un PDF, entrambe le parti lo firmano online e ogni evento — proposta, firma, pagamento, disdetta — viene registrato in una catena di audit in cui ogni voce è collegata alla precedente tramite un hash. Una modifica successiva della cronologia non si può quindi nascondere; la pagina del contratto mostra che la catena è integra. La piattaforma gestisce anche la disdetta e la liquidazione della cauzione.

I modelli portano la filigrana BOZZA finché non li rivede un avvocato, e la firma è per ora una firma elettronica semplice con prove (ora, indirizzo IP, impronta del documento). La firma tramite Bank iD è pronta come passo successivo e attende il contratto con Bank iD.

### Pagamenti — i soldi vanno direttamente al proprietario

Dal contratto nasce un calendario dei pagamenti: cauzione, affitto e acconti spese, divisi per quote tra i coinquilini. L'inquilino paga con un codice QR nell'app della banca o con carta tramite un link Revolut Business che porta al conto commerciante del proprietario stesso. Il proprietario può collegare il conto bancario (sola lettura) e i pagamenti in entrata vengono abbinati da soli in base a simbolo variabile, simbolo specifico e importo; ciò che non torna resta come proposta da abbinare a mano. Dopo la scadenza partono i promemoria e dopo sette giorni l'escalation.

**TerraReality non detiene né inoltra mai i soldi degli inquilini.** Nessun deposito fiduciario, nessuna criptovaluta — i pagamenti vanno direttamente dal conto dell'inquilino a quello del proprietario.

### Subentro nelle locazioni esistenti

Il proprietario che ha già appartamenti affittati con un contratto cartaceo non deve firmare nulla di nuovo. Acquisisce la locazione come firmata fuori dalla piattaforma, carica la scansione del contratto e i pagamenti vengono seguiti dalla data del subentro: il debito pregresso va nel saldo iniziale, la cauzione versata viene registrata e resta anche il simbolo variabile di sempre. Agli inquilini non arriva nulla finché il proprietario non li invita nel portale inquilino. Più locazioni insieme si possono importare da un foglio di calcolo.

### Portafoglio su più città e rischio delle locazioni

Per proprietari e amministratori con più appartamenti: panoramica di tutte le locazioni per comune, l'importo mensile atteso e quello effettivamente incassato, l'andamento su dodici mesi, l'elenco di ciò che richiede attenzione (debito, escalation, disdetta, unità libera), la concentrazione dei ricavi e un rent roll esportabile in CSV ed Excel. Ogni locazione ha un punteggio di rischio calcolato da regole (debito, vecchi pagamenti non saldati, copertura della cauzione, fine del contratto vicina…). Il punteggio è solo informativo e non decide mai su nessuno; l'inquilino vede da cosa è calcolato. Le regole (promemoria, escalation, cauzione, preavviso) si impostano per comune e un investitore può avere un accesso in sola lettura in cui vede gli inquilini solo come iniziali.

### Promozione e fatturazione

Il proprietario può mettere in evidenza o far risaltare il suo annuncio. Paga con carta tramite Stripe, la fattura con IVA si emette da sola, arriva via e-mail ed è scaricabile nel pannello. Gli annunci promossi sono contrassegnati come «In evidenza» nei risultati.

### Backoffice, moderazione e DSA

Il gestore ha una panoramica delle metriche, la coda degli annunci da approvare, la moderazione di conversazioni e annunci segnalati, la coda delle proposte dell'IA per nuove caratteristiche, il listino della promozione, i modelli di contratto, gli interruttori delle funzioni e il registro di audit. Chiunque può segnalare un annuncio, anche senza account (secondo il regolamento europeo sui servizi digitali, DSA); ogni caso lo decide una persona e la motivazione va via e-mail sia a chi segnala sia all'inserzionista. L'accesso «come utente» per l'assistenza richiede di indicare un motivo e viene registrato nell'audit.

### App mobile

L'app Flutter per iOS e Android copre ciò che serve all'inquilino sul telefono: ricerca con elenco e mappa, dettaglio dell'annuncio con messaggio, candidatura e prenotazione della visita, le mie visite, la locazione con pagamento QR e link Revolut, e apertura diretta dalle notifiche push. È una prima versione; le build per i tester (TestFlight e traccia interna di Google Play) arriveranno con la preparazione dei test.

### Esercizio

L'ambiente di produzione è pronto per Hetzner nell'UE: server applicativo e server del database separati in una rete privata, HTTPS automatico, backup del database con ripristino a qualsiasi momento (al massimo un'ora di dati persa) e prova di ripristino verificata, monitoraggio con avvisi (disponibilità 99,9 %, risposta della ricerca sotto i 300 ms, stato dei backup) e segnalazione degli errori. L'IA gira su un nostro server GPU; quando l'IA non è disponibile, tutto funziona anche senza.

### Stato e test

**L'MVP dell'intera piattaforma è pronto.** Tutti i moduli sopra sono sviluppati e coperti da test automatici — unitari, di integrazione ed end-to-end, che nel browser percorrono scenari completi (annuncio, messaggi, candidatura di gruppo, contratto con firma e pagamento abbinato, portafoglio, promozione con fattura, segnalazione DSA, backoffice). È stato verificato anche il ripristino del database da backup.

Sono pronti anche i miglioramenti di sicurezza e di esercizio raccomandati nella revisione del codice e le notifiche push per candidature, contratti e pagamenti. Una beta chiusa gira su un nostro server con annunci di esempio per Praga e dintorni, contrassegnati come tali. Il rilascio in produzione su Hetzner attende account e accessi (vedi sotto).

I test con persone reali si svolgono in cinque fasi. Ognuna termina con un cancello in cui si decide insieme se andare avanti:

1. **T0 — preparazione (2 settimane).** Ambiente di test su Hetzner con la fascia «Ambiente di test», partner in sandbox (Stripe, Revolut, Bank iD), analytics di prodotto senza dati personali, un pulsante «Segnala un problema / un'idea» sul web e nell'app, registrazione solo su invito, dati di prova e build dell'app per i tester.
2. **T1 — test interni (1 settimana).** 5–8 persone del team e dintorni percorrono tutti gli scenari nel ruolo di proprietario e di chi cerca, su più dispositivi, incluse una simulazione di incidente e un ripristino da backup.
3. **T2 — test di usabilità moderati (2 settimane).** 12 partecipanti: proprietari privati, un amministratore con appartamenti in più città, cercatori cechi e stranieri e una coppia di coinquilini. Si misurano il completamento dei compiti e la soddisfazione (SUS ≥ 70).
4. **T3 — pilota chiuso a Praga (6 settimane).** 20 proprietari pilota con onboarding personale e 50–100 persone in cerca, solo su invito. Si osserva se gli annunci ricevono candidature, quanto velocemente rispondono i proprietari, quanti contratti si chiudono in digitale e quanto è affidabile il tutto; un rilascio a settimana.
5. **T4 — beta aperta a Praga (4 settimane).** Registrazione aperta a tutti con l'etichetta beta, senza campagna a pagamento — e alla fine la decisione sul lancio pubblico.

In tutto circa 15 settimane dall'inizio della preparazione.

**Cosa ci serve da voi:**

- account e accessi per l'esercizio: Hetzner, dominio e DNS, account sviluppatore Apple e Google, Stripe, Revolut Business, Bank iD e il fornitore del collegamento bancario;
- reclutamento dei tester, di 20 proprietari pilota e di persone in cerca, compensi per i partecipanti;
- revisione legale dei termini di servizio, dell'informativa privacy e dei modelli di contratto, i consensi dei tester e la decisione se nel pilota si firmano contratti reali direttamente sulla piattaforma;
- un penetration test prima del pilota, la conduzione delle interviste in T2 e il supporto di primo livello durante il pilota;
- la decisione a ogni cancello tra le fasi.
