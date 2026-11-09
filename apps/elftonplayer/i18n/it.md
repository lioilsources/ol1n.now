---
tagline: Lettore bit-perfect per DAC USB — file, RAM, ASIO e niente in mezzo
---
Elfton Player è un lettore di musica locale per Windows 11 con un'unica
priorità: che al DAC USB arrivino esattamente i campioni contenuti nel file.
Il percorso del segnale è **file → decoder → RAM → ASIO → DAC**. Niente controllo del
volume, niente equalizzatore, niente ricampionamento, niente streaming. Il volume lo
regoli sul convertitore o sull'amplificatore.

### Cosa fa

- **Uscita bit-perfect** tramite ASIO, oppure WASAPI in modalità esclusiva. Accanto al
  brano vedi l'intera catena (`FLAC 24/96k → 32-bit · bit-perfect`), e il pallino verde
  si spegne appena qualcosa interviene sul segnale.
- **Riproduzione dalla memoria.** Il brano viene decodificato per intero nella RAM, così
  il disco resta fermo durante l'ascolto; il brano successivo viene caricato in anticipo
  e parte **senza pause**.
- **Loop A-B preciso al campione**, con i punti spostabili al millisecondo — per
  esercitarsi su un passaggio o confrontare due punti di una registrazione.
- **Libreria per cartelle**: l'albero delle cartelle così come lo hai sul disco,
  copertine, ricerca, coda, preferiti, cronologia, playlist M3U, album in un unico file
  con CUE, testi sincronizzati da LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg e DSD** (nativo, DoP o convertito in PCM).
- **Mono (L+R)/2** come unico intervento sul segnale, sempre segnalato in modo visibile.
- **I pulsanti S e D** fanno suonare un solo diffusore e silenziano l'altro. Con il mono
  attivo suonano entrambi uguale, così dalla poltrona puoi confrontare subito col telefono
  il lato sinistro e quello destro del tuo impianto (cavi, componenti); senza mono senti
  solo il canale sinistro o solo quello destro della registrazione.
- **Una barra di avanzamento disegnata come volume del brano** per tutta la larghezza
  della finestra: un'introduzione silenziosa si vede e si salta con un clic.
- **Un cuore su ogni brano** e un filtro “solo preferiti” direttamente nell'album.
- **Tre temi**: scuro, nero e chiaro.
- **Telecomando sul telefono**: Elfton Remote si abbina con un codice QR tramite la rete
  di casa e fa tutto quello che fa la finestra sul computer.

### Modalità di riproduzione

Se vuoi, durante l'ascolto cambia la combinazione per il risparmio di energia, disattiva
la sospensione selettiva USB e il core parking, e alla fine rimette tutto com'era. Ad
essere onesti: con un DAC USB asincrono è il convertitore a gestire il clock, quindi
queste modifiche non hanno alcun effetto misurabile sul suono. Sono facoltative, ognuna
viene registrata nel log e nessuna è necessaria.

Lo stesso vale per i “rituali” presi dal lettore Bug head, che si trovano nelle
impostazioni e sono disattivati di default: bloccare la musica nella RAM, una pausa dopo
il caricamento del brano e l'avvio di un tuo programma ausiliario (per esempio
MinorityClean) insieme al lettore. MinorityClean non è incluso.

### Stato

**Versione 0.2, pre-release.** La prima versione ha girato su Windows 11 presso un
ascoltatore tramite ASIO (Behringer UMC204HD e SMSL D200): il WAV 24/192 è uscito come
ASIO a 32 bit senza conversioni e senza interruzioni, e il controllo dal telefono
funziona. È quanto riporta il lettore stesso sul percorso del segnale; nessuno ha ancora
catturato l'uscita e l'ha confrontata bit per bit. Le novità della 0.2 sono coperte da
test, ma non hanno ancora girato su Windows. Gli screenshot sono della prima versione, di
una build di sviluppo per macOS con una libreria di esempio — la barra del volume e il
selettore S/D non ci sono ancora.

La build per Windows è uno zip: estrailo e avvia `Elfton Player.exe`, oppure esegui
l'`install.ps1` incluso, che aggiunge un collegamento al menu Start. Non viene installato
nient'altro. Per ASIO deve essere installato il driver del convertitore; senza, il lettore
propone WASAPI. Il telecomando per il telefono per ora esiste solo per Android (APK); la
versione iOS è pronta nel codice, ma non ha una build pubblica.

Il motore è scritto in Go sopra FFmpeg (LGPL, linkato dinamicamente), l'interfaccia in
Flutter.
