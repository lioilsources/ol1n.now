---
tagline: Fotografije s mjesta na kojem upravo stojiš
---
Dođeš negdje gdje si već bio. Been Here pokaže ti fotografije koje si tamo
snimio, po posjetima: lani, prije pet godina, onaj jedan vikend 2019.

Važan je trenutak dolaska, ne galerija. Zato se aplikacija zna javiti sama: oko
mjesta do kojih ti je stalo drži geofence, a kad se vratiš, stigne obavijest.

### Sve ostaje u mobitelu

Nema servera, nema računa, nema analitike trećih strana. Ni fotografije ni
njihove koordinate ne napuštaju mobitel. Aplikacija ne kopira tvoje fotografije —
drži samo indeks, dakle id-eve i metapodatke; izvor istine ostaje sustavska
knjižnica.

Van mogu samo dvije stvari, obje su zadano isključene i obje se mogu prebaciti u
postavkama: koordinata poslana sustavskom geokoderu da mjesto dobije ime i
pločice karte s OpenStreetMapa dok je karta otvorena.

### Mjesta gdje živiš ne smiju te buditi

Iz fotografija se grupiraju mjesta. Ono na kojem fotografiraš u previše različitih
dana samo se utiša — mjesto gdje živiš nije mjesto kamo putuješ. Radijus
pretraživanja oko sebe namjestiš klizačem.

Osim toga, obavijesti šute u krugu oko doma: zadano 25 km, a u postavkama od nule
do sto. Dom se ne postavlja: to je mjesto s fotografijama iz najviše različitih
dana. Postavke onda izračunaju zašto aplikacija šuti: koliko mjesta sustav
prati, koliko je udaljeno najbliže i kada je stigla posljednja obavijest.

### Karta

Karta je zadano isključena. Kad je uključiš, prikazuje fotografije kao točkice
oko mjesta na kojem stojiš. Dodirom točkice otvara se ta fotografija u posjetu
kojem pripada. Pomicanjem karte pogledaš drugamo, a zaslon se pomakne s njom.
Radijus se mijenja klizačem i gestom na karti.

Drugi klizač s dvije ručke određuje koliko stare točkice crtati: recimo
posljednjih 14 dana, ili od dva tjedna do dvije godine unatrag. Zadano su
posljednje dvije godine. Filtrira samo točkice, vremenska crta posjeta i dalje
pokazuje sve.

### Tada i sada

Kod stare fotografije možeš stati na isto mjesto i snimiti je ponovno. Dobiveni
par iscrtava se na platno, ne kao snimka zaslona — dijele se te dvije
fotografije, pa se i crtaju te dvije fotografije, obje na istoj visini i u punoj
rezoluciji.

Cilja na iOS 15+ i Android 8+.
