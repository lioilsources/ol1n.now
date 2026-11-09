---
tagline: Asunnon vuokraus kartalta hausta maksettuun vuokraan — vuokranantajille, vuokralaisille ja ylläpitäjälle
---
TerraReality on alusta asuntojen ja huoneiden pitkäaikaiseen vuokraukseen. Se aloittaa Prahasta ja sen ympäristöstä, mutta tiedoiltaan se on alusta asti valmis muihinkin Keski-Euroopan maihin (sopimuksen lainkäyttöalue, valuutta, kieli). Toisin kuin ilmoitusportaali, se ei pääty yhteydenottoon: se kuljettaa vuokranantajan ja vuokralaisen koko vuokrasuhteen läpi — haku, viestit, hakemus, näyttö, sopimus ja allekirjoitus aina maksuihin ja niiden seurantaan asti.

Alustalla on neljä kasvoa. **Asunnonhakija** hakee kartalta tai kirjoittaa yksinkertaisesti, mitä haluaa. **Vuokranantajalla tai isännöitsijällä** on verkkokaupan tyylinen hallinta: ilmoitukset, hakijat, sopimukset, pankki, salkku ja laskutus. **Vuokralaisella** on oma vuokralaisportaali, jossa ovat sopimus, maksut ja QR-koodit. **Ylläpitäjällä** on backoffice hyväksyntöjä, moderointia ja asetuksia varten. Lisäksi mobiilisovellus iOS:lle ja Androidille.

Kuvakaappaukset ovat kehitysympäristöstä testidatalla: nimet ovat keksittyjä, asuntojen kuvat havainnollistavia ja tekoälyn ehdotukset on tuotettu offline-tilassa ilman kielimallia.

### Haku kartalla ja chatissa

Kartta etenee alueesta kunnan ja kaupunginosan kautta katutasolle asti ja näyttää jokaisella zoomaustasolla, montako tarjousta missäkin on. Vieressä ovat suodattimet (tyyppi, hinta, pinta-ala, huonejako, varustelu, lemmikit, liikenneyhteydet) ja jokaisen vaihtoehdon tulosmäärä. Jos et halua klikkailla, kirjoita esimerkiksi ”2+kk enintään 25 000 Praha 6:ssa koiran ja parvekkeen kanssa” — alusta asettaa lauseesta suodattimet ja kartan rajauksen ja näyttää, miten se lauseen ymmärsi. Haun voi tallentaa, ja uusista tarjouksista tulee ilmoitus.

### Ilmoitus tekoälyn avulla — aina ihmisen luvalla

Vuokranantaja syöttää osoitteen virallisesta osoiterekisteristä (RÚIAN) sekä ominaisuudet, kuvat ja tekstin. Tekoäly osaa ehdottaa kuvauksen ja kuvien perusteella ominaisuuksia (hissi, parveke, rakennustyyppi…) ja kirjoittaa ilmoitustekstin tšekiksi ja englanniksi. Ehdotus ei kuitenkaan koskaan tallennu itsestään: vuokranantaja näkee, mitä tekoäly ehdottaa, rastittaa paikkansapitävät kohdat, ja vasta sitten niitä käytetään. Ennen julkaisua ihminen hyväksyy ilmoituksen backofficessa. Jokaiseen ilmoitukseen vuokranantaja voi lisätä kysymyksiä hakijoille (esimerkiksi ”Onko sinulla lemmikkiä?”).

### Viestit

Hakija kirjoittaa vuokranantajalle suoraan ilmoituksesta; viestit kulkevat reaaliajassa, lukukuittausten ja liitteiden kera. Puhelinnumerot ja sähköpostiosoitteet alusta piilottaa tekstistä sopimuksen allekirjoitukseen asti, jotta sopiminen ja maksut eivät siirry sen ulkopuolelle — ja hakija näkee varoituksen ”älä maksa mitään ennen näyttöä”. Joka ei ole linjoilla, saa push-ilmoituksen tai sähköpostin. Epäilyttävän keskustelun voi ilmiantaa yhdellä klikkauksella.

### Hakemukset, kimppakämppä ja vuokralaisen valinta

Hakija jättää hakemuksen yksin tai kämppisporukan puolesta: luo ryhmän, kutsuu muut sähköpostilla, he sopivat asioista ryhmächatissa, ja hakemus lähtee vuokranantajalle vasta, kun kaikki hyväksyvät sen. Vuokranantaja näkee yhteenvedon hakijoista: vastaukset hänen kysymyksiinsä, tunnistautumisen tilan ja tekoälyn lyhyen tiivistelmän (taas vain ehdotus). Suojattuja tietoja, kuten ikää, sukupuolta tai kansallisuutta, alusta ei kerää. Kun vuokranantaja valitsee jonkun, muut saavat kohteliaan automaattisen vastauksen.

### Näytöt

Vuokranantaja ilmoittaa näyttöajat, joille on määritetty osallistujamäärä ja huomautus (”tavataan ulko-oven edessä”); hakijat varaavat, siirtävät tai peruvat ne suoraan hakemuksessa ja saavat muistutuksen.

### Digitaalinen sopimus ja allekirjoitus

Sopimus syntyy mallipohjasta (asunto määrä- tai toistaiseksi voimassa olevana, kämppisten yhteinen vuokrasopimus, huone) ja täytetään tarjouksen tiedoilla. Lomakkeesta muodostuu PDF, molemmat osapuolet allekirjoittavat sen verkossa ja jokainen tapahtuma — ehdotus, allekirjoitus, maksu, irtisanominen — kirjataan auditointiketjuun, jossa jokainen merkintä on sidottu edelliseen tiivisteellä. Historian jälkikäteistä muuttamista ei siis voi piilottaa; sopimussivu näyttää, että ketju on ehjä. Alusta hoitaa myös irtisanomisen ja vakuuden tilityksen.

Mallipohjissa on vesileima LUONNOS, kunnes juristi on tarkistanut ne, ja allekirjoitus on toistaiseksi yksinkertainen sähköinen allekirjoitus todisteineen (aika, IP-osoite, asiakirjan sormenjälki). Allekirjoitus Bank iD:n kautta on valmisteltu seuraavaksi vaiheeksi ja odottaa sopimusta Bank iD:n kanssa.

### Maksut — rahat menevät suoraan vuokranantajalle

Sopimuksesta syntyy maksukalenteri: vakuus, vuokra ja vastikeennakot, kämppisten kesken jaettuna osuuksien mukaan. Vuokralainen maksaa QR-koodilla pankkisovelluksessa tai kortilla Revolut Business -linkin kautta, joka vie vuokranantajan omalle kauppiastilille. Vuokranantaja voi yhdistää pankkitilinsä (vain lukuoikeus), ja saapuvat maksut kohdistuvat itsestään muuttuvan symbolin, erityissymbolin ja summan perusteella; mikä ei täsmää, jää ehdotukseksi käsin kohdistettavaksi. Eräpäivän jälkeen lähtee muistutuksia ja seitsemän päivän päästä eskalointi.

**TerraReality ei koskaan pidä hallussaan eikä välitä vuokralaisten rahoja.** Ei sulkutiliä, ei kryptovaluuttoja — maksut menevät suoraan vuokralaisen tililtä vuokranantajan tilille.

### Olemassa olevien vuokrasuhteiden siirto

Vuokranantajan, jonka asunnot on jo vuokrattu paperisella sopimuksella, ei tarvitse allekirjoittaa mitään uudelleen. Vuokrasuhde otetaan alustalle alustan ulkopuolella allekirjoitettuna, sopimuksen skannaus ladataan ja maksuja seurataan siirtopäivästä alkaen: vanhempi velka siirtyy avaavaan saldoon, hallussa oleva vakuus kirjataan ja myös nykyinen muuttuva symboli säilyy. Vuokralaiset eivät saa mitään, ennen kuin vuokranantaja kutsuu heidät vuokralaisportaaliin. Useita vuokrasuhteita voi tuoda kerralla taulukosta.

### Salkku useassa kaupungissa ja vuokrasuhteiden riski

Vuokranantajille ja isännöitsijöille, joilla on useita asuntoja: yleiskuva kaikista vuokrasuhteista kunnittain, kuukauden laskutus ja todellisuudessa saapuneet maksut, kahdentoista kuukauden trendi, luettelo huomiota vaativista asioista (velka, eskalointi, irtisanominen, tyhjä asunto), tulojen keskittyminen ja rent roll vientinä CSV- ja Excel-muotoon. Jokaisella vuokrasuhteella on säännöistä laskettu riskipistemäärä (velka, vanhat maksamattomat erät, vakuuden kattavuus, lähestyvä sopimuksen päättyminen…). Pisteet ovat pelkkää tietoa eivätkä koskaan päätä kenestäkään; vuokralainen näkee, mistä ne lasketaan. Säännöt (muistutukset, eskalointi, vakuus, irtisanomisaika) voi asettaa kunnittain, ja sijoittaja voi saada vain luku -oikeuden, jossa vuokralaiset näkyvät vain nimikirjaimina.

### Näkyvyys ja laskutus

Vuokranantaja voi nostaa tai korostaa ilmoitustaan. Hän maksaa kortilla Stripen kautta, ALV:n sisältävä lasku muodostuu itsestään, tulee sähköpostilla ja on ladattavissa hallinnasta. Nostetut ilmoitukset on merkitty tuloksiin merkinnällä ”Nostettu”.

### Backoffice, moderointi ja DSA

Ylläpitäjällä on yleiskuva mittareista, hyväksyttävien ilmoitusten jono, ilmiannettujen keskustelujen ja ilmoitusten moderointi, tekoälyn uusien ominaisuusehdotusten jono, näkyvyyden hinnasto, sopimuspohjat, ominaisuuskytkimet ja auditointiloki. Kuka tahansa voi ilmiantaa ilmoituksen, myös ilman tiliä (EU:n digipalvelusäädöksen, DSA:n, mukaisesti); jokaisesta tapauksesta päättää ihminen ja perustelu lähtee sähköpostilla sekä ilmiantajalle että ilmoittajalle. Kirjautuminen ”käyttäjänä” tuen yhteydessä vaatii syyn ilmoittamisen ja kirjataan auditointiin.

### Mobiilisovellus

Flutter-sovellus iOS:lle ja Androidille kattaa sen, mitä vuokralainen tarvitsee puhelimessa: haku listana ja kartalla, ilmoituksen tiedot viestin, hakemuksen ja näyttövarauksen kera, omat näytöt, vuokrasuhde QR-maksun ja Revolut-linkin kanssa sekä suora avaus push-ilmoituksista. Kyseessä on ensimmäinen versio; testaajien buildit (TestFlight ja Google Playn sisäinen kanava) syntyvät testauksen valmistelussa.

### Ylläpito

Tuotantoympäristö on valmisteltu Hetznerille EU:ssa: erilliset sovellus- ja tietokantapalvelimet yksityisessä verkossa, automaattinen HTTPS, tietokannan varmuuskopiot palautuksella mihin tahansa hetkeen (enintään tunnin tietojen menetys) ja todennettu palautusharjoitus, valvonta hälytyksineen (käytettävyys 99,9 %, haun vasteaika alle 300 ms, varmuuskopioiden tila) sekä virheraportointi. Tekoäly toimii omalla GPU-palvelimella; kun tekoäly ei ole käytettävissä, kaikki toimii myös ilman sitä.

### Tila ja testaus

**Koko alustan MVP on valmis.** Kaikki yllä kuvatut moduulit on toteutettu ja katettu automaattisilla testeillä — yksikkö-, integraatio- ja end-to-end-testeillä, jotka klikkaavat selaimessa läpi kokonaisia skenaarioita (ilmoitus, viestit, ryhmähakemus, sopimus allekirjoituksineen ja kohdistettuine maksuineen, salkku, näkyvyys laskuineen, DSA-ilmianto, backoffice). Myös tietokannan palautus varmuuskopiosta on todennettu.

Valmiina ovat myös koodikatselmoinnissa suositellut tietoturva- ja ylläpitoparannukset sekä push-ilmoitukset hakemuksista, sopimuksista ja maksuista. Suljettu beta pyörii omalla palvelimella Prahaa ja sen ympäristöä koskevilla esimerkki-ilmoituksilla, jotka on siinä merkitty sellaisiksi. Tuotantoon vienti Hetznerille odottaa tilejä ja käyttöoikeuksia (ks. alla).

Testaus oikeiden ihmisten kanssa etenee viidessä vaiheessa. Jokainen päättyy porttiin, jossa päätetään yhdessä, jatketaanko:

1. **T0 — valmistelu (2 viikkoa).** Testiympäristö Hetznerillä ”Testiympäristö”-palkilla, kumppanit hiekkalaatikkotilassa (Stripe, Revolut, Bank iD), tuoteanalytiikka ilman henkilötietoja, ”Ilmoita ongelmasta / ideasta” -painike verkossa ja sovelluksessa, rekisteröityminen vain kutsulla, testidata ja sovelluksen buildit testaajille.
2. **T1 — sisäinen testaus (1 viikko).** 5–8 ihmistä tiimistä ja sen lähipiiristä käy läpi kaikki skenaariot sekä vuokranantajana että hakijana useilla laitteilla, mukaan lukien häiriöharjoitus ja palautus varmuuskopiosta.
3. **T2 — moderoidut käytettävyystestit (2 viikkoa).** 12 osallistujaa: yksityisiä vuokranantajia, isännöitsijä, jolla on asuntoja useassa kaupungissa, tšekkiläisiä ja ulkomaisia asunnonhakijoita sekä kämppispari. Mitataan tehtävien onnistumista ja tyytyväisyyttä (SUS ≥ 70).
4. **T3 — suljettu pilotti Prahassa (6 viikkoa).** 20 pilottivuokranantajaa henkilökohtaisella perehdytyksellä ja 50–100 hakijaa, vain kutsulla. Seurataan, saavatko ilmoitukset hakemuksia, kuinka nopeasti vuokranantajat vastaavat, montako sopimusta viedään loppuun digitaalisesti ja kuinka luotettavasti kaikki toimii; julkaisu kerran viikossa.
5. **T4 — avoin beta Prahassa (4 viikkoa).** Rekisteröityminen kaikille beta-merkinnällä, ilman maksettua kampanjaa — ja lopuksi päätös julkisesta julkaisusta.

Kaikkiaan noin 15 viikkoa valmistelun alusta.

**Mitä tarvitsemme teiltä:**

- tilit ja käyttöoikeudet ylläpitoa varten: Hetzner, verkkotunnus ja DNS, Applen ja Googlen kehittäjätilit, Stripe, Revolut Business, Bank iD ja pankkiyhteyden tarjoaja;
- testaajien, 20 pilottivuokranantajan ja hakijoiden rekrytointi, palkkiot osallistujille;
- käyttöehtojen, tietosuojaselosteen ja sopimuspohjien juridinen tarkistus, testaajien suostumukset ja päätös siitä, allekirjoitetaanko pilotissa oikeita sopimuksia suoraan alustalla;
- tunkeutumistestaus ennen pilottia, T2:n haastattelujen vetäminen ja ensilinjan tuki pilotin aikana;
- päätös jokaisessa vaiheiden välisessä portissa.
