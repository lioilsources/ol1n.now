---
tagline: Reproductor bit-perfect per a DAC USB — fitxer, RAM, ASIO i res entremig
---
Elfton Player és un reproductor de música local per a Windows 11 amb una sola
prioritat: que al DAC USB hi arribin exactament les mostres que hi ha al fitxer.
El camí del senyal és **fitxer → descodificador → RAM → ASIO → DAC**. Sense control de
volum, sense equalitzador, sense remostreig, sense streaming. El volum l'ajustes al
convertidor o a l'amplificador.

### Què fa

- **Sortida bit-perfect** per ASIO, o WASAPI en mode exclusiu. Al costat de la pista es
  veu tota la cadena (`FLAC 24/96k → 32-bit · bit-perfect`), i el punt verd s'apaga tan
  bon punt qualsevol cosa intervé en el senyal.
- **Reproducció des de la memòria.** La pista sencera es descodifica a la RAM, de manera
  que el disc no treballa mentre sona; la pista següent es carrega per endavant i enllaça
  **sense pauses**.
- **Bucle A-B amb precisió de mostra** i ajust dels punts al mil·lisegon — per practicar
  un passatge o comparar dos moments d'un enregistrament.
- **Biblioteca per carpetes**: l'arbre de directoris tal com el tens al disc, caràtules,
  cerca, cua, preferits, historial, llistes M3U, àlbums en un sol fitxer amb CUE,
  lletres sincronitzades a partir de LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg i DSD** (natiu, DoP o convertit a PCM).
- **Mono (L+R)/2** com a única intervenció en el senyal, sempre indicat de manera visible.
- **Els botons E i D** fan sonar només un altaveu i silencien l'altre. Amb el mono
  activat, tots dos sonen igual, així que des de la butaca pots comparar a l'instant amb el
  mòbil el costat esquerre i el dret del teu equip (cables, components); sense mono sona
  només el canal esquerre o només el dret de l'enregistrament.
- **Una barra de progrés dibuixada amb el volum de la pista** a tota l'amplada de la
  finestra: una introducció silenciosa es veu i se salta amb un clic.
- **Un cor a cada pista** i un filtre «només preferits» dins del mateix àlbum.
- **Tres temes**: fosc, negre i clar.
- **Comandament al mòbil**: Elfton Remote s'aparella amb un codi QR a través de la teva
  xarxa domèstica i fa el mateix que la finestra de l'ordinador.

### Mode de reproducció

Si vols, durant la reproducció canvia el pla d'energia, desactiva la suspensió selectiva
d'USB i l'aparcament de nuclis, i en acabar ho deixa tot com estava. Sent sincers: amb un
DAC USB asíncron el rellotge el porta el convertidor, així que aquests ajustos no tenen
cap efecte mesurable en el so. Són opcionals, cadascun queda registrat al log i cap no és
necessari.

El mateix val per als «rituals» presos del reproductor Bug head, que són a la
configuració i vénen desactivats per defecte: bloquejar la música a la RAM, una pausa
després de carregar la pista i engegar el teu propi programa auxiliar (per exemple,
MinorityClean) juntament amb el reproductor. MinorityClean no hi és inclòs.

### Estat

**Versió 0.2, prellançament.** La primera versió va funcionar a Windows 11 amb un
oient a través d'ASIO (Behringer UMC204HD i SMSL D200): el WAV 24/192 va sortir com a ASIO
de 32 bits sense conversió i sense talls, i el control des del mòbil funciona. És el que
informa el mateix reproductor sobre el camí del senyal; encara ningú no n'ha capturat la
sortida ni l'ha comparada bit a bit. Les novetats de la 0.2 estan cobertes per tests,
però encara no s'han executat a Windows. Les captures de pantalla són de la primera
versió, d'una compilació de desenvolupament per a macOS amb una biblioteca d'exemple — la
barra de volum i el selector E/D encara no hi surten.

La versió per a Windows és un zip: descomprimeix-lo i executa `Elfton Player.exe`, o
llança l'`install.ps1` inclòs, que afegeix una drecera al menú Inici. No s'instal·la res
més. Per a ASIO cal tenir instal·lat el controlador del convertidor; sense ell, el
reproductor ofereix WASAPI. El comandament per al mòbil de moment només existeix per a
Android (APK); la versió per a iOS està acabada al codi, però no té cap compilació pública.

El motor està escrit en Go sobre FFmpeg (LGPL, enllaçat dinàmicament), i la interfície en
Flutter.
