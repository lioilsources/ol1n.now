---
tagline: Una mappa acustica della stanza dal microfono del telefono
---
Fai suonare un segnale di prova dalle casse, giri per la stanza con il telefono
e in ogni punto viene misurato lo spettro. Intanto il tracking AR segue dove ti
trovi. Il risultato è una heatmap sulla pianta: dove i bassi rimbombano, dove
spariscono, dove mettere le casse e dove l'ascoltatore.

**Non sostituisce REW con un microfono calibrato.** È uno strumento relativo:
differenze tra i punti di una stessa stanza. Un SPL assoluto da un telefono non
calibrato non esiste, e l'app non lo dichiara da nessuna parte.

### Misura

Fonometro SPL e RTA su trentuno bande a terzi d'ottava da 20 Hz a 20 kHz, FFT
8192 con finestra di Hann e media energetica. I segnali di prova si esportano in
WAV: rumore rosa e sweep logaritmico, canale sinistro e destro separati.

L'RTA ha peak hold, tracce di massimo e minimo e blocco; un'istantanea bloccata
si può salvare come punto. Si possono caricare un file di calibrazione del
microfono (UMIK o REW) e un offset SPL, ma non modificano mai i dati salvati.

Misuri un punto con un tocco, con tre secondi di media, oppure lasci che l'app
misuri di continuo ogni mezzo metro. Dai punti nasce una heatmap IDW con un
cursore sulle bande e il suggerimento del posto più lineare.

Dallo sweep logaritmico la deconvoluzione di Farina ricava la risposta
all'impulso: suono diretto, prima riflessione e risposta in frequenza con la
fase, con finestra di gating regolabile e smoothing da 1/3 a 1/24 d'ottava. In
più il decadimento per ottava (EDT, T20, T30), C50 e C80, la curva di Schroeder,
il grafico dell'impulso, ETC e spettrogramma. Dallo stesso sweep si ottiene
anche la distorsione HD2 e HD3. Quando una riflessione arriva prima che
l'impulso smetta di risuonare, non si può separare: l'app preferisce non
restituire nulla piuttosto che scambiare un lobo laterale per una parete.

Puoi confrontare due punti qualsiasi, anche tra sessioni diverse. Si esporta FRD
per REW e VituixCAD, gli impulsi e l'intera sessione in JSON.

### Progettare l'impianto

Con il LiDAR ricava la geometria della stanza tramite RoomPlan, calcola i modi
con la somma modale, esegue via software un «subwoofer crawl», trova i punti di
prima riflessione col metodo dello specchio e controlla gli angoli rispetto a
Dolby. Da tutto questo può generare le impostazioni per l'Integra DRX-8.4,
comprese le sue quindici bande di EQ.

Nel punto d'ascolto ogni canale viene misurato con il proprio sweep. L'EQ parte
dalla media dei punti intorno all'ascoltatore; una banda che tra loro varia di
più di 6 dB riceve solo metà della correzione. Si taglia senza problemi, si
alza appena e sopra la frequenza di Schroeder non si tocca nulla. L'anteprima
mostra il prima, l'obiettivo e il dopo previsto, e la curva obiettivo è
modificabile. Una seconda misura, dopo aver inserito l'EQ nel sintoamplificatore,
mostra cosa ha fatto davvero il suo filtro.

### Cosa l'app dice chiaramente

Un solo microfono non può localizzare una sorgente, quindi si salva solo la
posizione del telefono, mai il suo orientamento come direzione del suono. Quando
il sistema elabora il segnale di nascosto (AGC, soppressione del rumore,
cancellazione dell'eco), il livello nativo riporta cosa ha davvero attivato: una
misura attraverso l'AGC non è una misura peggiore, è una misura dell'AGC. Un
microfono Bluetooth viene rilevato e segnalato.

### Cosa manca di proposito

La riproduzione del segnale dal telefono. L'altoparlante del telefono si ferma
intorno ai 500 Hz, cioè sopra ogni modo che valga la pena cercare: esportare un
WAV su un impianto vero è l'unica strada sensata.

RoomPlan su Android non esiste. Al suo posto si racchiudono in un box i piani
verticali di ARCore: vedono le pareti che la fotocamera ha inquadrato, di rado
gli angoli, mai dietro i mobili. Basta per dare un nome a un modo, non per i
punti di riflessione, e la geometria porta con sé questa informazione.

Correzione di fase, EQ parametrico e più subwoofer. Il sintoamplificatore
accetta solo la distanza e quindici bande grafiche; per andare oltre serve un DSP
esterno e l'export FRD verso REW.
