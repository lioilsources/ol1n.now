---
tagline: Un mapa acústic de la teva sala amb el micròfon del mòbil
---
Fas sonar un senyal de prova pels altaveus, recorres la sala amb el mòbil i a
cada punt es mesura l'espectre. Mentrestant, el seguiment AR registra on ets.
El resultat és un mapa de calor sobre la planta: on retrunyen els greus, on
desapareixen, on posar els altaveus i on posar l'oient.

**No substitueix REW amb un micròfon calibrat.** És una eina relativa:
diferències entre punts d'una mateixa sala. L'SPL absolut d'un mòbil sense
calibrar no existeix, i l'app no l'afirma enlloc.

### Mesura

Sonòmetre SPL i RTA en trenta-una bandes de terç d'octava de 20 Hz a 20 kHz,
FFT 8192 amb finestra de Hann i mitjana energètica. Els senyals de prova
s'exporten a WAV: soroll rosa i escombrat logarítmic, canal esquerre i dret per
separat.

L'RTA té retenció de pics, traces de màxim i mínim i congelació; una captura
congelada es pot desar com a punt. Pots carregar un fitxer de calibratge del
micròfon (UMIK o REW) i un offset d'SPL, però mai no modifiquen les dades
desades.

Mesures un punt amb un toc, amb tres segons de mitjana, o deixes que l'app
mesuri contínuament cada mig metre. Amb els punts es crea un mapa de calor IDW
amb un control lliscant per les bandes i una recomanació del seient més pla.

A partir de l'escombrat logarítmic, la desconvolució de Farina calcula la
resposta a l'impuls: so directe, primera reflexió i resposta en freqüència amb
fase, amb finestra de gating ajustable i suavitzat d'1/3 a 1/24 d'octava. A
més, decaïment per octaves (EDT, T20, T30), C50 i C80, corba de Schroeder,
gràfic de l'impuls, ETC i espectrograma. Del mateix escombrat en surt també la
distorsió HD2 i HD3. Quan una reflexió arriba abans que l'impuls deixi de
ressonar, no es pot separar: l'app prefereix no retornar res abans que marcar
un lòbul lateral com a paret.

Pots comparar dos punts qualssevol, fins i tot entre sessions. S'exporta FRD
per a REW i VituixCAD, els impulsos i tota la sessió en JSON.

### Disseny del sistema

Amb LiDAR obté la geometria de la sala mitjançant RoomPlan, calcula els modes
per suma modal, fa un «subwoofer crawl» per programari, troba per reflex
especular els punts de primera reflexió i comprova els angles respecte a Dolby.
Amb tot això pot generar la configuració per a l'Integra DRX-8.4, incloses les
seves quinze bandes d'EQ.

A la posició d'escolta es mesura cada canal amb el seu propi escombrat. L'EQ
parteix de la mitjana dels punts al voltant de l'oient; una banda que varia
entre ells més de 6 dB rep només la meitat de la correcció. Es retalla amb
generositat, es realça ben poc i per sobre de la freqüència de Schroeder no es
toca res. La previsualització mostra l'abans, l'objectiu i la predicció del
després, i la corba objectiu es pot ajustar. Una segona mesura després
d'introduir l'EQ al receptor mostra què ha fet realment el seu filtre.

### El que l'app diu clarament

Un sol micròfon no pot localitzar una font, així que només es desa la posició
del mòbil, mai la seva orientació com a direcció del so. Quan el sistema
processa el senyal sense avisar —AGC, supressió de soroll, cancel·lació d'eco—,
la capa nativa informa del que ha permès realment: una mesura amb AGC no és una
mesura pitjor, és una mesura de l'AGC. Un micròfon Bluetooth es detecta i genera
un avís.

### El que falta a propòsit

Reproduir el senyal des del mòbil. L'altaveu del mòbil s'acaba cap als 500 Hz,
és a dir, per sobre de qualsevol mode que valgui la pena buscar: exportar un WAV
a un equip de debò és l'única opció amb sentit.

RoomPlan no existeix a Android. En comptes d'això, els plans verticals d'ARCore
s'encaixen en una capsa: veuen les parets que ha mirat la càmera, rarament les
cantonades i mai darrere dels mobles. N'hi ha prou per identificar un mode, no
per als punts de reflexió, i la geometria porta aquesta informació a sobre.

Correcció de fase, EQ paramètrica i diversos subwoofers. El receptor només
admet la distància i quinze bandes gràfiques; per a més cal un DSP extern
i l'exportació FRD a REW.
