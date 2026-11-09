---
tagline: Player bit-perfect pentru DAC USB — fișier, RAM, ASIO și nimic între ele
---
Elfton Player este un player de muzică locală pentru Windows 11 cu o singură
prioritate: în DAC-ul USB să ajungă exact eșantioanele care sunt în fișier.
Calea semnalului este **fișier → decodor → RAM → ASIO → DAC**. Fără volum,
fără egalizator, fără reeșantionare, fără streaming. Volumul se reglează
din convertor sau din amplificator.

### Ce știe să facă

- **Ieșire bit-perfect** prin ASIO sau WASAPI în mod exclusiv. Lângă piesă se vede
  tot lanțul (`FLAC 24/96k → 32-bit · bit-perfect`), iar punctul verde se stinge
  în clipa în care ceva intervine în semnal.
- **Redare din memorie.** Piesa este decodată integral în RAM, așa că discul nu
  lucrează în timpul redării; piesa următoare se încarcă dinainte și urmează **fără pauză**.
- **Buclă A-B precisă la nivel de eșantion**, cu ajustarea punctelor la milisecundă —
  pentru exersarea unui pasaj sau compararea a două locuri dintr-o înregistrare.
- **Bibliotecă pe foldere**: arborele de directoare exact cum îl ai pe disc, coperți,
  căutare, coadă, favorite, istoric, playlisturi M3U, albume într-un singur fișier
  cu CUE, versuri sincronizate din LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg și DSD** (nativ, DoP sau conversie în PCM).
- **Mono (L+R)/2** ca singura intervenție în semnal, mereu marcată vizibil.
- **Butoanele S și D** lasă să cânte o singură boxă și o amuțesc pe cealaltă. Cu mono
  pornit, ambele redau același lucru, așa că poți compara instant din fotoliu, de pe
  telefon, partea stângă și cea dreaptă a sistemului (cabluri, componente); fără mono
  se aude doar canalul stâng sau doar canalul drept al înregistrării.
- **Bara de derulare desenată ca volumul piesei**, pe toată lățimea ferestrei:
  un început liniștit se vede și se poate sări cu un clic.
- **Inimioară la fiecare piesă** și filtrul „doar favorite” direct în album.
- **Trei teme**: întunecată, neagră și luminoasă.
- **Telecomandă pe telefon**: Elfton Remote se asociază printr-un cod QR prin rețeaua
  de acasă și face tot ce face fereastra de pe calculator.

### Modul de redare

La cerere, în timpul redării schimbă planul de alimentare, dezactivează suspendarea
selectivă USB și parcarea nucleelor, iar la final readuce totul cum era. Sincer
vorbind: la un DAC USB asincron ceasul îl ține convertorul, așa că aceste ajustări
nu au un efect măsurabil asupra sunetului. Sunt opționale, fiecare este scrisă
în log și niciuna nu e necesară.

La fel stau lucrurile cu „ritualurile” preluate din playerul Bug head, care se
află în setări și sunt dezactivate implicit: blocarea muzicii în RAM, o pauză după
încărcarea piesei și pornirea unui program ajutător propriu (de exemplu
MinorityClean) odată cu playerul. MinorityClean nu este inclus.

### Stadiu

**Versiunea 0.2, pre-lansare.** Prima versiune a rulat pe Windows 11 la un
ascultător, prin ASIO (Behringer UMC204HD și SMSL D200): WAV 24/192 a ieșit
ca ASIO pe 32 de biți fără conversie și fără întreruperi, iar controlul de pe
telefon funcționează. Acesta este raportul playerului însuși despre calea
semnalului; încă nimeni nu a capturat ieșirea și nu a comparat-o bit cu bit.
Noutățile versiunii 0.2 sunt acoperite de teste, dar încă nu au rulat pe Windows.
Capturile de ecran sunt din prima versiune, dintr-un build de dezvoltare pentru
macOS cu o bibliotecă demonstrativă — bara cu profilul volumului și comutatorul
S/D nu apar încă pe ele.

Build-ul pentru Windows este un zip: dezarhivează-l și pornește `Elfton Player.exe`,
sau rulează `install.ps1` inclus, care adaugă o scurtătură în meniul Start. Nu se
mai instalează nimic altceva. Pentru ASIO trebuie să fie instalat driverul
convertorului; fără el, playerul oferă WASAPI. Telecomanda pentru telefon există
deocamdată doar pentru Android (APK); versiunea pentru iOS e gata în cod, dar nu
are un build public.

Motorul e scris în Go peste FFmpeg (LGPL, legat dinamic), interfața în Flutter.
