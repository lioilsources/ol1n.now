---
tagline: O hartă acustică a camerei tale din microfonul telefonului
---
Pornești un semnal de test din boxe, treci cu telefonul prin cameră și în fiecare
punct se măsoară spectrul. Între timp, urmărirea AR reține unde stai. Rezultatul
este o hartă termică pe planul camerei: unde basul bubuie, unde dispare, unde să
pui boxele și unde ascultătorul.

**Nu înlocuiește REW cu un microfon calibrat.** Este un instrument relativ —
diferențe între locuri din aceeași cameră. SPL absolut de pe un telefon
necalibrat nu există, iar aplicația nu pretinde asta nicăieri.

### Măsurare

Sonometru SPL și RTA în treizeci și una de benzi de o treime de octavă, de la
20 Hz la 20 kHz, FFT 8192 cu fereastră Hann și mediere energetică. Semnalele de
test se exportă în WAV — zgomot roz și sweep logaritmic, canalul stâng și cel
drept separat.

RTA-ul are peak hold, urme de maxim și minim și înghețare; o captură înghețată
poate fi salvată ca punct. Poți încărca un fișier de calibrare a microfonului
(UMIK sau REW) și un offset SPL, dar ele nu modifică niciodată datele salvate.

Măsori un punct cu o atingere, cu trei secunde de mediere, sau lași aplicația să
măsoare continuu la fiecare jumătate de metru. Din puncte rezultă o hartă termică
IDW, cu un glisor prin benzi și o recomandare pentru locul cel mai liniar.

Din sweep-ul logaritmic, deconvoluția Farina calculează răspunsul la impuls:
sunetul direct, prima reflexie și răspunsul în frecvență cu tot cu fază, cu
fereastră de gating reglabilă și netezire de la 1/3 la 1/24 de octavă. În plus,
decăderea pe octave (EDT, T20, T30), C50 și C80, curba Schroeder, graficul
impulsului, ETC și spectrograma. Din același sweep rezultă și distorsiunile HD2
și HD3. Când o reflexie sosește mai devreme decât încetează impulsul să sune, nu
poate fi separată — aplicația preferă să nu returneze nimic decât să numească
un lob lateral perete.

Oricare două puncte pot fi comparate, chiar și între sesiuni. Se exportă FRD
pentru REW și VituixCAD, impulsurile și întreaga sesiune în JSON.

### Proiectarea sistemului

Cu LiDAR preia geometria camerei prin RoomPlan, calculează modurile prin sumare
modală, face software un „subwoofer crawl”, găsește prin oglindire punctele
primelor reflexii și verifică unghiurile față de Dolby. Pe baza lor poate genera
setările pentru Integra DRX-8.4, inclusiv cele cincisprezece benzi de EQ.

În poziția de ascultare, fiecare canal e măsurat cu propriul sweep. EQ-ul pleacă
de la media punctelor din jurul ascultătorului; o bandă care diferă între ele cu
mai mult de 6 dB primește doar jumătate din corecție. Se taie generos, se ridică
abia și peste frecvența Schroeder nu se atinge nimic. Previzualizarea arată
înainte, ținta și estimarea după, iar curba țintă poate fi ajustată. O a doua
măsurare, după ce introduci EQ-ul în receiver, arată ce a făcut cu adevărat
filtrul lui.

### Ce spune aplicația deschis

Un singur microfon nu poate localiza o sursă, așa că se salvează doar poziția
telefonului, niciodată orientarea lui ca direcție a sunetului. Când sistemul
prelucrează semnalul pe tăcute — AGC, suprimarea zgomotului, anularea ecoului —,
stratul nativ raportează ce a activat de fapt: o măsurare prin AGC nu e o
măsurare mai proastă, e o măsurare a AGC-ului. Un microfon Bluetooth este
detectat și semnalat cu un avertisment.

### Ce lipsește intenționat

Redarea semnalului de pe telefon. Difuzorul telefonului se oprește pe la 500 Hz,
adică deasupra oricărui mod care ar merita căutat — exportul WAV către un sistem
serios e singura cale care are sens.

RoomPlan nu există pe Android. În locul lui, planurile verticale din ARCore sunt
încadrate într-o cutie: văd pereții spre care s-a uitat camera, rareori colțurile,
niciodată în spatele mobilei. Ajunge pentru a numi un mod, nu și pentru punctele
de reflexie — iar geometria poartă cu ea această informație despre sine.

Corecția de fază, EQ-ul parametric și mai multe subwoofere. Receiverul acceptă
doar distanța și cincisprezece benzi grafice; pentru mai mult e nevoie de un DSP
extern și de exportul FRD în REW.
