---
tagline: Una volée con un solo swipe: dove il collo del piede incontra il pallone, con quanto effetto e in quale millisecondo
---
Fotball Simulator simula un solo movimento: la volée. Il pallone rimbalza davanti a te, ogni volta in modo diverso, e con un solo swipe del dito lo calci verso la porta. Niente squadra, niente partita, solo la domanda di dove e quando il collo del piede incontra il pallone. Tutto il resto, il volo, l'effetto, il rimbalzo e se è gol, ne deriva tramite la fisica.

### Un gesto, quattro decisioni

In basso sullo schermo c'è un grande pallone, e uno swipe sopra dice tutto in una volta:

- **Dove appoggi il dito**, lì il collo del piede colpisce il pallone. Sotto il centro il pallone sale, sopra il centro lo calci a terra, di lato prende rotazione.
- **La curva dello swipe** è l'effetto. Più curvi il gesto, più il pallone gira in volo.
- **La velocità dello swipe** è la potenza del tiro.
- **Il momento in cui stacchi il dito** è l'istante del contatto. La volée ha una finestra: dopo il rimbalzo il pallone sale, si ferma e scende, e il momento ideale è quando cala all'altezza del collo del piede. Il gioco lo conosce in anticipo, perché calcola il volo del pallone al momento dell'alzata.

Lo scarto si misura in millisecondi. Entro ±30 ms è PERFECT, poi GOOD, LATE ed EARLY. Tardi è tardi: il collo del piede colpisce dall'alto il pallone che scende, questo prende topspin e finisce a terra o non arriva. Chi non lo prende affatto calcia l'aria.

### Freeze-frame e volo

Nell'istante del contatto il mondo si ferma per una frazione di secondo. Sul pallone si illumina il punto in cui il piede lo ha colpito e una freccia mostra dove va. In alto compaiono la velocità in km/h, la rotazione in giri al secondo e il giudizio sul timing con lo scarto esatto. Poi il pallone vola lasciandosi dietro una scia, così si vede come curva. Il risultato è GOL, FUORI o CORTO, e poco dopo arriva rimbalzando il pallone successivo.

Se ti serve più tempo, attiva lo **slow-mo**: appena il dito tocca lo schermo il gioco rallenta, così puoi completare lo swipe. Il timing però si misura nel tempo di gioco, quindi rallentare non aiuta a barare.

### Fisica

Il volo del pallone è un calcolo proprio, non la fisica di un motore: gravità, resistenza dell'aria, effetto Magnus (per questo un pallone che ruota curva) e graduale smorzamento della rotazione. Il rimbalzo sull'erba toglie altezza e la rotazione si trasforma in direzione. Il contatto tiene conto della velocità con cui è arrivato il pallone, così un pallone calciato piano rimbalza semplicemente invece di restare sospeso in aria. I risultati sono garantiti da test automatici contro un'implementazione di riferimento indipendente dello stesso modello in Python.

Il gioco è nato in Godot 4.7 e sul telefono arriva la sua riscrittura in Flutter, con le stesse costanti e gli stessi test. La scena è disegnata da una proiezione prospettica propria, senza motore 3D.

### Stato

La prima fase è completa: un ciclo giocabile di alzata, tiro, freeze-frame, volo e risultato. Il campo e la porta per ora sono semplici; mancano una gamba che carica il tiro, una rete che si gonfia al gol e una telecamera che segue il pallone. Poi arriveranno la messa a punto delle sensazioni, una heatmap dei tiri in porta e le statistiche.

L'APK qui sotto è una build di prova (alpha). Su iPhone per ora solo tramite TestFlight per i tester.
