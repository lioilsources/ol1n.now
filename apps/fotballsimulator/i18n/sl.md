---
tagline: Volej z eno potezo prsta — kje nart zadene žogo, s koliko falše in v kateri milisekundi
---
Fotball Simulator simulira en sam gib: volej. Žoga odskoči pred teboj, vsakič drugače, ti pa jo z eno potezo prsta brcneš proti golu. Brez ekipe, brez tekme, samo vprašanje, kje in kdaj nart zadene žogo. Vse drugo, let, falša, odboj in ali bo gol, iz tega sledi s fiziko.

### Ena poteza, štiri odločitve

Na dnu zaslona je velika žoga in poteza s prstom čeznjo pove vse naenkrat:

- **Kamor položiš prst**, tam nart zadene žogo. Pod sredino se žoga dviga, nad sredino jo brcneš v tla, s strani dobi vrtenje.
- **Lok poteze** je falša. Bolj ko potezo ukriviš, bolj žoga v letu zavija.
- **Hitrost poteze** je moč strela.
- **Trenutek, ko spustiš prst**, je trenutek stika. Volej ima okno: po odboju se žoga dviga, ustavi in pada, idealni trenutek pa je, ko se spusti do višine narta. Igra ga pozna vnaprej, ker ob podaji preračuna let žoge.

Odstopanje se meri v milisekundah. Do ±30 ms je PERFECT, nato GOOD, LATE in EARLY. Prepozno je prepozno: nart zadene padajočo žogo od zgoraj, ta dobi topspin in konča v tleh ali ne doleti. Kdor sploh ne zadene, brcne v zrak.

### Freeze-frame in let

V trenutku stika se svet za delček sekunde ustavi. Na žogi sveti točka, kjer jo je nart zadel, puščica pa kaže, kam leti. Zgoraj se pokažejo hitrost v km/h, vrtenje v obratih na sekundo in ocena timinga z natančnim odstopanjem. Nato žoga poleti, za njo pa se vleče sled, tako da se vidi, kako zavija. Rezultat je GOL, MIMO ali PREKRATKO in kmalu priskaklja naslednja žoga.

Če potrebuješ več časa, vklopi **slow-mo**: ko se prst dotakne zaslona, se igra upočasni, da lahko potezo dokončaš. Timing pa se meri v času igre, zato upočasnitev ne pomaga pri goljufanju.

### Fizika

Let žoge je lasten izračun, ne fizika iz pogona: gravitacija, zračni upor, Magnusov učinek (zato vrteča se žoga zavija) in postopno upadanje vrtenja. Odboj od trave odvzame višino, vrtenje pa se pri tem prenese v smer. Stik upošteva hitrost, s katero je žoga priletela, zato se šibko brcnjena žoga le odbije, namesto da bi obvisela v zraku. Rezultate varujejo samodejni testi proti neodvisni referenčni implementaciji istega modela v Pythonu.

Igra je nastala v Godotu 4.7, na telefon pa gre njena predelava v Flutterju z enakimi konstantami in enakimi testi. Prizor riše lastna perspektivna projekcija, brez 3D-pogona.

### Stanje

Prva faza je končana: igralna zanka podaja, strel, freeze-frame, let in rezultat. Igrišče in gol sta zaenkrat preprosta; manjkajo še noga, ki zamahne, mreža, ki se ob golu napne, in kamera, ki bo letela za žogo. Nato pride uglaševanje občutka, toplotni zemljevid strelov na gol in statistika.

APK spodaj je preizkusna različica (alfa). Na iPhone zaenkrat le prek TestFlighta za preizkuševalce.
