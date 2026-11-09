---
tagline: Bit-perfect reproduktor za USB DAC — datoteka, RAM, ASIO i ništa između
---
Elfton Player je reproduktor lokalne glazbe za Windows 11 s jednim jedinim
prioritetom: da do USB DAC-a stignu točno oni uzorci koji su u datoteci.
Put signala je **datoteka → dekoder → RAM → ASIO → DAC**. Bez glasnoće,
bez ekvilajzera, bez preuzorkovanja, bez streaminga. Glasnoća se namješta
na pretvaraču ili pojačalu.

### Što zna

- **Bit-perfect izlaz** preko ASIO-a ili WASAPI-ja u ekskluzivnom načinu. Uz pjesmu
  se vidi cijeli lanac (`FLAC 24/96k → 32-bit · bit-perfect`), a zelena točka se
  ugasi u trenutku kad bilo što zadre u signal.
- **Reprodukcija iz memorije.** Pjesma se cijela dekodira u RAM, pa disk tijekom
  sviranja ne radi; sljedeća pjesma učitava se unaprijed i nastavlja se **bez pauze**.
- **A-B petlja precizna na uzorak** s pomicanjem točaka po milisekundama — za
  vježbanje dionice ili uspoređivanje dvaju mjesta u snimci.
- **Biblioteka po mapama**: stablo direktorija točno kakvo imaš na disku, omoti,
  pretraživanje, red čekanja, favoriti, povijest, M3U playliste, albumi u jednoj
  datoteci s CUE, sinkronizirani tekstovi iz LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg i DSD** (nativno, DoP ili pretvorba u PCM).
- **Mono (L+R)/2** kao jedini zahvat u signal, uvijek vidljivo označen.
- **Tipke L i D** puštaju samo jedan zvučnik, a drugi utišaju. S uključenim monom
  oba sviraju isto, pa iz fotelje telefonom odmah usporediš lijevu i desnu stranu
  sustava (kabeli, komponente); bez mona svira samo lijevi ili samo desni kanal snimke.
- **Klizač iscrtan kao glasnoća pjesme** preko cijele širine prozora: tihi uvod
  se vidi i može se preskočiti jednim klikom.
- **Srce uz pjesmu** i filtar „samo favoriti” izravno u albumu.
- **Tri izgleda**: tamni, crni i svijetli.
- **Daljinski na telefonu**: Elfton Remote uparuje se QR kodom preko kućne mreže
  i može sve što i prozor na računalu.

### Način reprodukcije

Na zahtjev tijekom sviranja prebaci plan napajanja, isključi selektivnu obustavu
USB-a i parkiranje jezgri, a nakon završetka sve vrati. Iskreno: kod asinkronog
USB DAC-a takt drži pretvarač, pa ove prilagodbe nemaju mjerljiv utjecaj na zvuk.
Neobavezne su, svaka se zapisuje u log i nijedna nije potrebna.

Isto vrijedi za „rituale” preuzete iz reproduktora Bug head, koji su u postavkama
i zadano isključeni: zaključavanje glazbe u RAM-u, pauza nakon učitavanja pjesme
i pokretanje vlastitog pomoćnog programa (na primjer MinorityClean) zajedno
s reproduktorom. MinorityClean nije uključen.

### Stanje

**Verzija 0.2, predizdanje.** Prva verzija radila je na Windows 11 kod jednog
slušatelja preko ASIO-a (Behringer UMC204HD i SMSL D200): WAV 24/192 izlazio je
kao 32-bitni ASIO bez pretvorbe i bez ispada, a upravljanje s telefona radi.
To je izvještaj samog reproduktora o putu signala; izlaz još nitko nije snimio
i usporedio bit po bit. Novosti verzije 0.2 pokrivene su testovima, ali na
Windowsima još nisu pokrenute. Snimke zaslona su iz prve verzije, iz razvojnog
builda za macOS s oglednom bibliotekom — trake s krivuljom glasnoće i preklopnika
L/D na njima još nema.

Windows build je zip: raspakiraj ga i pokreni `Elfton Player.exe` ili pokreni
priloženi `install.ps1`, koji dodaje prečac u izbornik Start. Ništa se drugo ne
instalira. Za ASIO mora biti instaliran upravljački program pretvarača; bez njega
reproduktor nudi WASAPI. Daljinski za telefon zasad postoji samo za Android (APK);
verzija za iOS gotova je u kodu, ali nema javni build.

Audio jezgra napisana je u Go-u nad FFmpegom (LGPL, dinamički povezan), sučelje u Flutteru.
