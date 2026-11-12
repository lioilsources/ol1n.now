---
tagline: Pystysarjakuvia myös ilman nettiä — ilmaisia tarinoita, pelikirjoja, joissa sinä valitset, ja ruutuja, jotka heräävät eloon
visuals: {n} kuvaa — ruutuja viidestä lastentarinasta, kahden tyylin vertailu ja character sheetit.
---
Toonfork (työnimeltään Webtoon) on pystysarjakuvien lukija, joka toimii myös ilman internetiä. Heti asennuksen jälkeen siinä on 15 ilmaista tarinaa, ilman tiliä ja ilman rekisteröitymistä. Tarinat syntyvät omalla GPU-palvelimella: kielimalli kirjoittaa käsikirjoituksen, kuvamalli piirtää ruudut, ja tekstikuplat lisää vasta lukija, joten tekstiä voi korjata ilman että kuvaa tarvitsee luoda uudelleen.

Viiden lastentarinan valmiit stripit ovat alasivulla Strips, ja pelisilmukka, jossa jakson lopussa valitaan, alasivulla Gamebook.

### Lukija

Tarina on yksi pitkä ruutunauha puhekuplineen, ajatuksineen, huudahduksineen ja ääniefekteineen, ja sitä vieritetään peukalolla ylhäältä alas. Valitut ruudut heräävät eloon lyhyinä silmukoina: sade ikkunassa, valo vedenpinnalla, tuuli hiuksissa. Jakson lopussa näet, mitä valittiin, ja painikkeen **Seuraava jakso**. Viimeisen jakson jälkeen tulee **Loppu** ja ehdotus seuraavasta tarinasta.

### Pelikirjat

Pelikirjassa juonesta päätät sinä. Jokaisen osan lopussa valitset, mitä seuraavaksi tapahtuu, ja tarina haarautuu. Sovellus muistaa, missä olet, mitä reittiä kuljit ja mitkä loput olet löytänyt; reittikartta näyttää vain sen, missä olet jo käynyt. Voit aloittaa alusta tai palata askeleen taaksepäin. Pelikirjat ovat ilmaisia: lapsille **Sara and the Black Crown**, aikuisille esimerkiksi psykologin vastaanotolle sijoittuva kamaridraama **Learning to Be Silent**, **Metal Sky Above Us** tai **The Blooming Meadow That Turned Grey**. Draamat käsittelevät vaikeita aiheita, ja lasten profiili piilottaa ne.

Betassa on haaraeditori: mihin tahansa valintaan lisäät oman jatkon, kokoat sen pelikirjan kuvista ja kirjoitat puhekuplat. Haaran voit pelata heti ja lähettää tekijälle jakamalla, ilman mitään palvelinta.

### Paketit

Valinnaiset paketit tuovat jopa 50 tarinaa lisää: **Romantiikka** (kevyitä rakkaustarinoita aikuisille, ei eksplisiittisiä kohtauksia), **Lapsille** ja **Supersankarit**. Paketti latautuu oston jälkeen ja on luettavissa offline-tilassa. Yksi osto avaa kaiken, myös myöhemmin ilmestyvät paketit.

### Profiili ja lapsilukko

Ensimmäisellä käynnistyskerralla valitset profiilin **Lapset** tai **Aikuiset**. Lasten profiili piilottaa romantiikan ja draamat sekä kirjastosta että kaupasta. Jokaista ostoa ja jokaista vaihtoa Aikuiset-profiiliin vartioi lapsilukko, jossa ratkaistaan kertotaulutehtävä.

### 12 kieltä

Tarinat, pelikirjat ja lukijan tekstit ovat saatavilla 12 kielellä: tšekki, englanti, saksa, ranska, italia, puola, Brasilian portugali, japani, korea, vietnam, venäjä ja ukraina. Puhekuplien kielen vaihdat Asetuksista.

### Yksityisyys

Ei tiliä, ei mainoksia, ei seurantaa. Toonfork ei kerää henkilötietoja; laite muistaa, mitä olet ostanut, ja ostot voi palauttaa Asetuksista.

## Studio: näin tarinat syntyvät

Saman sovelluksen toinen puoli on tekijän Studio. Tekijä rakentaa maailman: loren, hahmot, paikat ja kaanonin, jonka läpi jokaisen tarinan on kuljettava. Studiossa voi myös pelata interaktiivisesti: jakson lopussa lukija valitsee, mitä hahmo tekee seuraavaksi, tai kirjoittaa sen omin sanoin, ja valinnasta syntyy seuraava jakso. Oma teksti käy ensin läpi moderoinnin; lasten maailmassa se on tiukempi ja hylkää epäselvissä tapauksissa mieluummin. Tämän sivun kuvakaappaukset ovat Studiosta.

### Maailmaeditori

Tekijällä on sovelluksessa välilehti **Luo**:

- **Perusteet:** nimi, synopsis, sävy, kieli, yleisö (Lapsille, 13+, Aikuisille), näkyvyys ja koko maailmaa koskeva kuvitustyyli.
- **Lore ja kaanon:** maailman säännöt, ryhmittymät, kiinteässä järjestyksessä olevat kaanonin solmut ja rajat eli se, mitä ei saa tapahtua.
- **Hahmot ja paikat:** kuvaus omin sanoin. Sen pohjalta LLM ehdottaa kuvamallille kiinteät booru-tagit. Tagit, joita malli ei tunne, karsitaan WD14:n sanaston perusteella, ja tekijä viimeistelee loput.
- **Character sheet:** neljä hahmon versiota valkoisella taustalla. Tageja parhaiten vastaavasta tulee referenssikuva.
- **Yleiskatsaus:** kampanjat, mihin lukijat jäivät, mitä he valitsivat ja kuinka pitkälle he pääsivät kaanonissa.

### Mallit

- **Käsikirjoitus ja moderointi:** Qwen3.6-35B-A3B vLLM:n kautta. Se ehdottaa tageja hahmoille ja paikoille ja kirjoittaa jaksoille kuvakäsikirjoituksen (6–8 ruutua, 2–3 valintaa ja kenttä omalle tekstille). Sen jälkeen validaattori tarkistaa hahmot, paikat ja maailman säännöt.
- **Ruudut:** SDXL ComfyUI:n kautta. Oletuksena on NoobAI-XL eps 1.1, toinen tyyli on Hassaku XL (Illustrious) 3.4. Ihmishahmoja piirtävät vain nämä mallit.
- **Elävät ruudut:** Wan 2.2 tekee valmiista ruudusta 1–3 sekunnin silmukan, enintään kaksi liikkuvaa ruutua jaksoa kohden.
- **Sisällön tarkistus:** WD14-taggeri (SmilingWolf/wd-swinv2-tagger-v3). Se tarkistaa jokaisen ruudun ja yleisöstä riippuen hylkää sen ja piirtää uudelleen uudella seedillä. Lapsille se hylkää lisäksi tiukat ja paljastavat vaatteet. Sama taggeri mittaa, vastaako ruudun hahmo omaa suunnitelmaansa.

Hahmon identiteetin pitävät yllä pelkät tagit. IP-Adapter on valmiina, mutta ensimmäisessä mittauksessa se lähinnä rikkoi kuvan. Malli ei pysty pitämään kahta ihmishahmoa samassa otoksessa, vaan vaihtaa heidän hiuksensa ja vaatteensa keskenään. Siksi lastentarinoissa jokainen hahmo saa oman ruutunsa.

### Tyylit

Tyyli on nimetty esiasetus: checkpoint, sampler, askelmäärä, CFG ja esteettiset tagit. Tekijä valitsee sen kerran koko maailmalle. **clean_webtoon_noartist** tarkoittaa tasaisia värejä ja puhdasta viivaa, **hassaku_soft** pehmeää varjostusta ja pastellisävyjä. Visuaaleissa sama jakso on molemmilla tyyleillä rinnakkain.

### Tilanne

Toonfork on alfavaiheessa: Android-versio on Google Playssa, macOS-buildin voi ladata GitHubista ja App Store on valmisteilla. Studio toimii vain omaa backendiaan vasten (Go ja tehtäväjono Postgresissa) eikä ole julkisesti saatavilla. Kuvat ja tekstit syntyvät omalla GPU-palvelimella.

Kuvakaappaukset ovat Studion verkkoversiosta puhelimen levyisenä paikallista backendia vasten. Niissä jaksoilla 2 on vasta käsikirjoitus, ruudut odottavat yhä piirtämistä. Lähdekoodi on osoitteessa [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
