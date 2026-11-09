---
tagline: Volej jednim potezom prsta — gdje rist susreće loptu, s koliko falša i u kojoj milisekundi
---
Fotball Simulator simulira jedan jedini pokret: volej. Lopta odskakuje pred tobom, svaki put drukčije, a ti je jednim potezom prsta šutiraš prema golu. Bez momčadi, bez utakmice, samo pitanje gdje i kada rist susreće loptu. Sve ostalo, let, falš, odskok i je li gol, iz toga proizlazi fizikom.

### Jedan potez, četiri odluke

Na dnu zaslona je velika lopta, a potez prstom preko nje kaže sve odjednom:

- **Gdje staviš prst**, tamo rist pogađa loptu. Ispod sredine lopta se diže, iznad sredine je zabiješ u tlo, sa strane dobiva rotaciju.
- **Luk poteza** je falš. Što više zakriviš potez, to više lopta skreće u letu.
- **Brzina poteza** je snaga udarca.
- **Trenutak kad pustiš prst** je trenutak kontakta. Volej ima svoj prozor: nakon odskoka lopta se diže, zastane i pada, a idealni trenutak je kad se spusti na visinu rista. Igra ga zna unaprijed, jer pri dobacivanju izračuna let lopte.

Odstupanje se mjeri u milisekundama. Do ±30 ms je PERFECT, zatim GOOD, LATE i EARLY. Kasno je kasno: rist pogađa loptu koja pada odozgo, ona dobiva topspin i završi u tlu ili ne doleti. Tko uopće ne pogodi, udari u zrak.

### Freeze-frame i let

U trenutku kontakta svijet na djelić sekunde stane. Na lopti svijetli točka gdje ju je rist pogodio, a strelica pokazuje kamo leti. Gore se pojavljuju brzina u km/h, rotacija u okretajima u sekundi i ocjena timinga s točnim odstupanjem. Zatim lopta leti, a za njom se vuče trag, pa se vidi kako skreće. Rezultat je GOL, PORED ili KRATKO, a malo zatim doskakuje sljedeća lopta.

Ako ti treba više vremena, uključi **slow-mo**: kad prst dotakne zaslon, igra se uspori da možeš dovršiti potez. Timing se ipak mjeri u vremenu igre, pa usporavanje ne pomaže varati.

### Fizika

Let lopte vlastiti je izračun, a ne fizika iz enginea: gravitacija, otpor zraka, Magnusov efekt (zato lopta koja se vrti skreće) i postupno slabljenje rotacije. Odskok s trave oduzima visinu, a rotacija se pritom pretvara u smjer. Kontakt računa s brzinom kojom je lopta doletjela, pa se slabo udarena lopta samo odbije umjesto da ostane visjeti u zraku. Rezultate čuvaju automatski testovi uspoređeni s neovisnom referentnom implementacijom istog modela u Pythonu.

Igra je nastala u Godotu 4.7, a na mobitel ide njezina prepisana verzija u Flutteru s istim konstantama i istim testovima. Scenu crta vlastita perspektivna projekcija, bez 3D enginea.

### Stanje

Prva faza je gotova: igriva petlja dobacivanje, udarac, freeze-frame, let i rezultat. Teren i gol zasad su jednostavni; nedostaju još noga koja zamahne, mreža koja se izboči pri golu i kamera koja će letjeti za loptom. Zatim dolazi fino podešavanje osjećaja igre, toplinska karta udaraca prema golu i statistike.

APK ispod je probna verzija (alfa). Na iPhoneu zasad samo preko TestFlighta za testere.
