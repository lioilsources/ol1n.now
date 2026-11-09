---
tagline: Volley yhdellä pyyhkäisyllä — mihin jalkapöytä osuu palloon, kuinka paljon kierrettä ja millä millisekunnilla
---
Fotball Simulator simuloi yhtä ainoaa liikettä: volleyta. Pallo pomppii eteesi joka kerta eri tavalla, ja yhdellä sormen pyyhkäisyllä potkaiset sen kohti maalia. Ei joukkuetta, ei ottelua, vain kysymys siitä, mihin ja milloin jalkapöytä osuu palloon. Kaikki muu, lento, kierre, pomppu ja se, tuleeko maali, seuraa siitä fysiikan kautta.

### Yksi pyyhkäisy, neljä päätöstä

Ruudun alareunassa on iso pallo, ja sen yli tehty pyyhkäisy kertoo kaiken kerralla:

- **Mihin laitat sormen**, siihen jalkapöytä osuu. Keskikohdan alapuolelta pallo nousee, yläpuolelta potkaiset sen maahan, sivusta se saa kierrettä.
- **Pyyhkäisyn kaari** on kierre. Mitä enemmän kaarrat liikettä, sitä enemmän pallo kaartaa lennossa.
- **Pyyhkäisyn nopeus** on potkun voima.
- **Hetki, jolloin nostat sormen**, on osumahetki. Volleylla on ikkuna: pompun jälkeen pallo nousee, pysähtyy ja putoaa, ja ihanteellinen hetki on, kun se laskeutuu jalkapöydän korkeudelle. Peli tietää sen etukäteen, koska se laskee pallon lentoradan heittohetkellä.

Poikkeama mitataan millisekunteina. ±30 ms:n sisällä se on PERFECT, sitten GOOD, LATE ja EARLY. Myöhässä on myöhässä: jalkapöytä osuu putoavaan palloon ylhäältä, pallo saa yläkierrettä ja päätyy maahan tai jää lyhyeksi. Jos et osu lainkaan, potkaiset ilmaa.

### Freeze-frame ja lento

Osumahetkellä maailma pysähtyy sekunnin murto-osaksi. Pallossa hehkuu kohta, johon jalkapöytä osui, ja nuoli näyttää, minne pallo lentää. Ylhäällä näkyvät nopeus km/h, kierre kierroksina sekunnissa ja ajoituksen arvio tarkkoine poikkeamineen. Sitten pallo lentää jättäen jälkeensä vanan, joten näet, miten se kaartaa. Tulos on MAALI, OHI tai LYHYT, ja hetken päästä seuraava pallo pomppii paikalle.

Jos tarvitset lisää aikaa, laita **slow-mo** päälle: kun sormi koskettaa ruutua, peli hidastuu, jotta ehdit viedä pyyhkäisyn loppuun. Ajoitus mitataan kuitenkin peliajassa, joten hidastus ei auta huijaamaan.

### Fysiikka

Pallon lento on oma laskelma eikä pelimoottorin fysiikkaa: painovoima, ilmanvastus, Magnus-ilmiö (siksi pyörivä pallo kaartaa) ja vähitellen hiipuva kierre. Pomppu nurmesta vie korkeutta, ja kierre muuttuu siinä suunnaksi. Osuma ottaa huomioon nopeuden, jolla pallo saapui, joten heikosti potkaistu pallo vain kimpoaa pois sen sijaan, että jäisi leijumaan ilmaan. Tuloksia vahtivat automaattiset testit, joita verrataan saman mallin riippumattomaan Python-referenssitoteutukseen.

Peli tehtiin Godot 4.7:llä, ja puhelimeen tulee sen Flutter-uudelleenkirjoitus samoilla vakioilla ja samoilla testeillä. Näkymä piirretään omalla perspektiiviprojektiolla ilman 3D-moottoria.

### Tila

Ensimmäinen vaihe on valmis: pelattava silmukka heitosta, potkusta, freeze-framesta, lennosta ja tuloksesta. Kenttä ja maali ovat toistaiseksi yksinkertaisia; vielä puuttuvat jalka, joka heilahtaa, verkko, joka pullistuu maalista, ja kamera, joka seuraa palloa. Sen jälkeen vuorossa ovat pelituntuman hiominen, lämpökartta maalia kohti ammutuista laukauksista ja tilastot.

Alla oleva APK on testiversio (alfa). iPhonelle toistaiseksi vain TestFlightin kautta testaajille.
