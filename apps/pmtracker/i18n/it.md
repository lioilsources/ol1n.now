---
tagline: Presenze sui cantieri che verificano il luogo — senza salvare la posizione
---
Le imprese edili e le squadre di assistenza tecnica registrano ancora le ore su carta, via WhatsApp e in Excel. Il caposquadra non ha modo di verificare chi era dove, e l'operaio non ha modo di dimostrare gli straordinari. PMTracker misura il tempo su una commessa specifica e sa, per ogni registrazione, se la persona era davvero sul posto.

### La posizione solo due volte, poi viene cancellata

Le coordinate vengono inviate **solo all'avvio e all'arresto** della misurazione. Il server verifica che il punto sia dentro il geofence della commessa, salva un solo dato, «sul posto / non sul posto», e cancella le coordinate. Nessuna mappa degli spostamenti, nessun tracciamento in background. Il lavoro fuori dal geofence si può consentire con un'eccezione che finisce nel registro di audit.

### I ruoli li controlla il database, non l'app

Un membro del team registra il tempo sulle commesse a cui è assegnato. Un responsabile in più gestisce le commesse e la pianificazione delle persone e vede i report. Un amministratore gestisce gli utenti. I permessi sono imposti da regole direttamente nel database, quindi non li aggira nemmeno un client modificato.

### Stato

È un MVP: ci sono il modello dei dati, i ruoli, la verifica del geofence e le schermate di accesso, misurazione, commesse, pianificazione, report e amministrazione. La modalità offline per i cantieri senza segnale è pronta ma non ancora attiva, e l'app non è ancora in uso presso nessuna azienda. Per accedere ti serve un account fornito dal tuo datore di lavoro.

### Per i beta tester

Per ora la versione di prova è solo per **Android**. Funziona con un'azienda di prova, «Stavby s.r.o.», con persone inventate e due commesse: la ristrutturazione di uffici in piazza San Venceslao a Praga e un impianto di climatizzazione in piazza della Libertà a Brno. I dati possono essere cancellati in qualsiasi momento. Nell'app non c'è registrazione: l'account te lo manda chi ti ha invitato a provarla.

**Installazione**

1. Sul telefono scarica l'APK con il pulsante nella sezione **Download** qui sopra (oppure da [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Apri il file scaricato e consenti l'installazione da origini sconosciute quando Android lo chiede.
3. Google Play Protect potrebbe avvisare che non conosce l'app. È perché non arriva da Google Play; scegli di installarla comunque.
4. Avvia **PMTracker** e accedi con l'account che hai ricevuto nel messaggio.

**Cosa provare come membro del team**

- Nella scheda **Výkaz** (Foglio ore) tocca **Zahájit výkaz** (Avvia foglio ore), scegli una commessa e consenti l'accesso alla posizione. Sul luogo della commessa, sotto il tempo compare un «Na místě» (Sul posto) verde.
- Se non sei sul posto, l'app chiede un motivo. Va bene così: scrivi per esempio «test» e la registrazione viene salvata con una nota che è stata fatta fuori dal luogo.
- Dopo un po' ferma la misurazione con il pulsante **Ukončit výkaz** (Chiudi foglio ore). «Dnes celkem» (Totale di oggi) aumenta.
- Nella scheda **Zakázky** (Commesse) apri il dettaglio: indirizzo, dimensione del geofence, chi è assegnato e la checklist delle attività.

**Cosa provare come responsabile**

- In più vedi **Roster** (il tuo team) e **Reporty** (Report) con il tempo lavorato dalle persone per commessa. Nel report contano solo le misurazioni fermate; il periodo si cambia in alto a destra.
- Per cambiare account esci (icona in alto a destra nella scheda **Výkaz**).

**Cosa non aspettarti ancora**

- Senza internet l'app non funziona; la modalità offline arriverà più avanti.
- Una misurazione dimenticata non si ferma da sola; fermala a mano.
- Non c'è ancora una versione per iPhone per i tester.

Manda errori o idee a chi ti ha invitato: cosa stavi facendo, cosa è successo e con quale account. Uno screenshot aiuta molto.
