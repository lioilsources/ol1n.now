---
tagline: Un deck da DJ con playlist intelligente e modalità festa in cui gli ospiti scelgono la musica dal telefono
---
DJfy è un'app da DJ per smartphone che genera playlist in modo intelligente. Inserisci un artista e l'app gli costruisce intorno una selezione di brani in base a tempo e consigli. Poi li mixa sui deck con pitch, effetti e crossfader.

Integra **Last.fm** (consigli, scrobbling), **GetSongBPM** (dati BPM) e **SoundCloud** (streaming).

### Modalità festa

Alle feste di solito la musica la mette chi ha in mano il telefono, mentre gli altri gli urlano le richieste nell'orecchio. Con DJfy il telefono di chi ospita diventa la consolle e la cassa si limita a suonare. Gli ospiti scansionano un codice QR e aprono la festa nel browser. Niente app né account, basta un nome.

- **Gli ospiti propongono e votano.** Chiunque può cercare brani, aggiungerli alla coda e dare un pollice in su o in giù. Perché un solo ospite non occupi tutta la coda, ognuno può averci al massimo tre brani alla volta.
- **Coda intelligente.** L'ordine non dipende solo dai voti. L'app considera anche da quanto un brano è in attesa, se lo stesso artista è appena passato e se il tempo si sposa con il brano in riproduzione.
- **Mood lock.** Chi ospita imposta un intervallo di BPM, per esempio 110–130, e i brani fuori intervallo finiscono in fondo alla coda. Così la serata tiene il ritmo anche se qualcuno propone una ballata.
- **Auto-DJ.** I brani si susseguono con un crossfade fluido. Quando i tempi differiscono al massimo dell'8 %, l'app allinea i BPM durante il passaggio e poi torna alla velocità originale.
- **La festa non finisce.** Quando la coda si esaurisce, l'app aggiunge da sola un altro brano, simile agli ultimi suonati, e lo segna come Auto. I brani degli ospiti hanno sempre la precedenza e quelli bocciati con il veto non tornano. Puoi disattivarlo con l'interruttore accanto ad Auto-DJ.
- **Chi ospita ha l'ultima parola.** Può mettere il veto su un brano, nominare un co-DJ che può intervenire sulla coda o cacciare un ospite.
- **Audio ovunque.** Il telefono suona in cuffia, su una cassa via Bluetooth o via AirPlay, per esempio su un Sonos.

Il telefono di chi ospita regge tutta la festa. Un piccolo server in Go tra lui e gli ospiti si limita a inoltrare i messaggi e non salva nulla.

Realizzata con Flutter. Funziona su smartphone e macOS.
