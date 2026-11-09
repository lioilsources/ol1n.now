---
tagline: Bit-perfect-soitin USB-DAC:ille — tiedosto, RAM, ASIO eikä mitään siltä väliltä
---
Elfton Player on paikallisen musiikin soitin Windows 11:lle, ja sillä on vain yksi
tavoite: USB-DAC:lle päätyvät täsmälleen ne näytteet, jotka ovat tiedostossa.
Signaalitie on **tiedosto → dekooderi → RAM → ASIO → DAC**. Ei äänenvoimakkuuden säätöä,
ei taajuuskorjainta, ei uudelleennäytteistystä, ei suoratoistoa. Äänenvoimakkuus
säädetään muuntimesta tai vahvistimesta.

### Mitä se osaa

- **Bit-perfect-ulostulo** ASIOn kautta tai WASAPIlla yksinoikeustilassa. Kappaleen
  vieressä näkyy koko ketju (`FLAC 24/96k → 32-bit · bit-perfect`), ja vihreä
  piste sammuu heti, kun mikä tahansa puuttuu signaaliin.
- **Toisto muistista.** Koko kappale puretaan RAM-muistiin, joten levy lepää toiston
  aikana; seuraava kappale ladataan etukäteen ja jatkuu **ilman taukoa**.
- **Näytteen tarkkuudella toimiva A-B-silmukka**, jonka pisteitä voi siirtää
  millisekunti kerrallaan — kohdan harjoitteluun tai äänitteen kahden kohdan vertailuun.
- **Kansioihin perustuva kirjasto**: hakemistopuu juuri sellaisena kuin se on levylläsi,
  kansikuvat, haku, jono, suosikit, historia, M3U-soittolistat, yhden tiedoston albumit
  CUE:n kanssa, synkronoidut sanoitukset LRC:stä.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg ja DSD** (natiivisti, DoP tai muunnettuna PCM:ksi).
- **Mono (L+R)/2** ainoana signaaliin puuttuvana toimintona, aina näkyvästi merkittynä.
- **Painikkeet V ja O** soittavat vain yhtä kaiutinta ja mykistävät toisen. Kun mono on
  päällä, molemmat soittavat samaa, joten voit nojatuolista puhelimella heti verrata
  laitteistosi vasenta ja oikeaa puolta (kaapelit, komponentit); ilman monoa kuulet vain
  äänitteen vasemman tai vain oikean kanavan.
- **Kappaleen äänenvoimakkuutena piirretty kelauspalkki** koko ikkunan levyisenä: hiljainen
  intro näkyy ja sen voi ohittaa yhdellä klikkauksella.
- **Sydän jokaisessa kappaleessa** ja ”vain suosikit” -suodatin suoraan albumissa.
- **Kolme teemaa**: tumma, musta ja vaalea.
- **Kaukosäädin puhelimessa**: Elfton Remote yhdistetään QR-koodilla kotiverkon kautta,
  ja se osaa kaiken saman kuin tietokoneen ikkuna.

### Toistotila

Halutessasi se vaihtaa toiston ajaksi virrankäyttösuunnitelman, poistaa USB:n valikoivan
keskeytyksen ja ytimien pysäköinnin käytöstä ja palauttaa lopuksi kaiken ennalleen.
Rehellisesti sanottuna: asynkronisessa USB-DAC:ssa kelloa ohjaa muunnin, joten näillä
säädöillä ei ole mitattavaa vaikutusta ääneen. Ne ovat valinnaisia, jokainen kirjataan
lokiin, eikä yhtäkään niistä tarvita.

Sama pätee Bug head -soittimesta lainattuihin ”rituaaleihin”, jotka löytyvät
asetuksista ja ovat oletuksena pois päältä: musiikin lukitseminen RAM-muistiin, tauko
kappaleen latautumisen jälkeen ja oman apuohjelman (esimerkiksi MinorityClean)
käynnistäminen soittimen kanssa. MinorityClean ei sisälly mukaan.

### Tila

**Versio 0.2, esijulkaisu.** Ensimmäinen versio pyöri Windows 11:llä yhdellä
kuuntelijalla ASIOn kautta (Behringer UMC204HD ja SMSL D200): WAV 24/192 lähti ulos
32-bittisenä ASIOna ilman muunnosta ja ilman katkoja, ja ohjaus puhelimesta toimii. Tämä
on soittimen oma raportti signaalitiestä; kukaan ei ole vielä tallentanut ulostuloa ja
verrannut sitä bitti bitiltä. Version 0.2 uudet ominaisuudet on katettu testeillä, mutta
niitä ei ole vielä ajettu Windowsilla. Kuvakaappaukset ovat ensimmäisestä versiosta,
macOS:n kehitysversiosta esimerkkikirjastolla — äänenvoimakkuuspalkkia ja V/O-valitsinta
niissä ei vielä ole.

Windows-versio on zip: pura se ja käynnistä `Elfton Player.exe`, tai aja mukana tuleva
`install.ps1`, joka lisää pikakuvakkeen Käynnistä-valikkoon. Mitään muuta ei asenneta.
ASIOa varten muuntimen ajurin on oltava asennettuna; ilman sitä soitin tarjoaa WASAPIa.
Puhelimen kaukosäädin on toistaiseksi vain Androidille (APK); iOS-versio on valmis
koodissa, mutta sillä ei ole julkista käännöstä.

Moottori on kirjoitettu Go:lla FFmpegin päälle (LGPL, dynaamisesti linkitetty),
käyttöliittymä Flutterilla.
