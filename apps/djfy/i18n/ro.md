---
tagline: Un deck de DJ cu playlist inteligent și mod petrecere în care invitații aleg muzica de pe telefon
---
DJfy este o aplicație de DJ pentru mobil care generează inteligent playlisturi. Introduci un artist, iar aplicația adună piese în jurul lui după tempo și recomandări. Apoi le mixează pe deckuri cu pitch, efecte și crossfader.

Integrează **Last.fm** (recomandări, scrobbling), **GetSongBPM** (date BPM) și **SoundCloud** (streaming).

### Mod petrecere

La petreceri, de obicei pune muzică cine se nimerește lângă telefon, iar ceilalți îi strigă cererile în ureche. Cu DJfy, telefonul gazdei devine pupitrul de DJ, iar boxa doar cântă. Invitații scanează un cod QR și deschid petrecerea în browser. Nu au nevoie de aplicație sau cont, ajunge un nume.

- **Invitații propun și votează.** Oricine poate căuta piese, le poate adăuga în coadă și le poate da like sau dislike. Ca un singur invitat să nu ocupe toată coada, fiecare poate avea în ea cel mult trei piese odată.
- **Coadă inteligentă.** Ordinea nu depinde doar de voturi. Aplicația ține cont și de cât timp așteaptă o piesă, dacă același artist tocmai a cântat și dacă tempoul se potrivește cu piesa care rulează acum.
- **Mood lock.** Gazda setează un interval de BPM, de exemplu 110–130, iar piesele din afara lui ajung la coada listei. Așa seara își păstrează ritmul, chiar dacă cineva propune o baladă.
- **Auto-DJ.** Piesele se leagă una de alta cu un crossfade fluid. Când tempourile diferă cu cel mult 8 %, aplicația aliniază BPM-ul în timpul tranziției, apoi revine la viteza inițială.
- **Petrecerea nu se termină.** Când coada rămâne goală, aplicația adaugă singură o altă piesă, asemănătoare cu ultimele care au rulat, și o marchează cu Auto. Piesele invitaților au mereu prioritate, iar cele respinse prin veto nu mai revin. Poți dezactiva asta din comutatorul de lângă Auto-DJ.
- **Gazda are ultimul cuvânt.** Poate respinge o piesă prin veto, poate numi un co-DJ care are voie să umble la coadă sau poate da afară un invitat.
- **Sunet oriunde.** Telefonul cântă în căști, într-o boxă prin Bluetooth sau prin AirPlay, de exemplu pe un Sonos.

Telefonul gazdei ține toată petrecerea. Un mic server în Go dintre el și invitați doar transmite mesajele mai departe și nu salvează nimic.

Construită cu Flutter. Rulează pe mobil și pe macOS.
