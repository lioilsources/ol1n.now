---
tagline: Rauhallinen keittiö ruuhkassa — kokit kuulevat tilaukset, salihenkilökunta näkee, monenko minuutin päästä mitäkin tulee
---
Ruuhkassa ravintolassa kuluu aikaa keittiön ja salin välillä. Bongit kasautuvat linjalle, tarjoilijat käyvät keittiössä kysymässä, milloin pöytä seitsemän on valmis, ja jo valmis ruoka jäähtyy passilla, koska kukaan ei huomannut sitä. Předávka ratkaisee tämän ilman, että kenenkään tarvitsee tuijottaa lisää näyttöjä: **kokit kuulevat tilaukset**, **tarjoilijat näkevät yhdeltä näytöltä, monenko minuutin päästä mitäkin tulee ja mihin pöytään**, ja valmis ruoka passilla pyytää itse muutaman minuutin päästä hakemaan sen.

Kaikki toimii ravintolassa yhdellä pienellä tietokoneella: ilman pilveä, ilman kuukausimaksua palvelimista ja tšekiksi. Jos internet katkeaa, palvelu jatkuu.

### Keittiö kuulee, ei tarvitse lukea

Kun tilaus tulee, passin kaiutin sanoo lyhyen lauseen, esimerkiksi ”Pöytä seitsemän: kaksi svíčkováa, yksi leike.” Lukusanat ja ruokien nimet taipuvat kieliopillisesti oikein tšekiksi (”jedna svíčková, dvě svíčkové, pět svíčkových”). Ääni syntyy suoraan ravintolassa, ja testeissä se oli valmis toistettavaksi 0,2 sekunnissa tapahtumasta. Kuulutukset eivät koskaan puhu päällekkäin: niillä on tärkeysjärjestys ja tauko välissä, eikä vanhaa tilausta, jonka näyttö jo näyttää, lueta turhaan. ”Vielä kerran” -painike toistaa viimeisimmän kuulutuksen.

### Jono, josta kokki ottaa

Jokaisella pisteellä (grilli, lämmin, kylmä, jälkiruoat) on oma jononsa tabletilla tai televisiolla. Kokki ottaa annoksen yhdellä napautuksella tai bump barin painikkeella. Näin järjestelmä tietää, kuka tekee mitä ja mistä lähtien, ja jos kukaan ei tartu tilaukseen kahteen minuuttiin, se ilmoittaa: ”Pöytä seitsemän, grilli, odottaa kokkia.”

### Sali tietää, milloin ja minne viedä

Salin näyttö näyttää pöydät, mitä niille on tulossa ja monenko minuutin päästä. Arvio ei hypi jatkuvasti (se muuttuu enintään kerran puolessa minuutissa), jotta sen mukaan voi suunnitella. Ylimpänä on aina se, mikä pitää hakea. Passilla ruoka ”vanhenee”: kolmen minuutin päästä kuuluu ”Pöytä seitsemän valmis, passilla kolme minuuttia”, ja kuulutus toistuu, kunnes joku vie sen.

### Arviot oppivat omasta keittiöstäsi

Aluksi keittiömestari syöttää kerran, kauanko mikäkin kestää. Sen jälkeen Předávka mittaa jokaisen annoksen ottamisesta valmistumiseen ja käyttää viiden mittauksen jälkeen tämän keittiön todellisia aikoja. Asiakkaan arvio ottaa näin huomioon, kuinka paljon jonossa on hänen edellään ja kuinka monta kokkia pisteellä tekee ruokaa yhtä aikaa.

### Toimii minkä tahansa kassan kanssa

Tilaukset voi ottaa bongitulostimelta: Předávka kytketään kassan ja tulostimen väliin, bongi tulostuu kuten ennenkin, ja se lukee siitä pöydän ja annokset. Se ei siis tarvitse integraatiota mihinkään tiettyyn kassajärjestelmään. Tilauksia voi syöttää myös suoraan tarjoilijan tabletilta.

### Ruokien kuvat

Ruokalistan tuotteella voi olla kuva tai emoji. Selainnäytöt näyttävät ne tilauspainikkeissa, keittiön korteissa, passilla ja salissa. Samaa järjestelmää voi käyttää myös kotona lasten ravintolaleikkinä: yksi keittiö, lasten ruokalista kuvilla, tietokone toimii sekä palvelimena että kaiuttimena, ja muut laitteet vain avaavat selaimen samassa Wi-Fi-verkossa.

Yksityiskohtainen kuvaus toiminnoista ja koko palvelun kulusta on sivulla [Näin se toimii](predavka-features.html) (tšekiksi), mukana kolme illan hetkeä: tyhjä jono, muutama pöytä ja ”emme ehdi!”.

### Tila

Předávka on valmis, toimiva prototyyppi: palvelin, ääni, tulostimen kuuntelu, jono, arviot, ruokalajit ja näytöt (sovellus Android TV:lle ja tableteille sekä selainversio) on rakennettu ja testattu simuloidussa palvelussa. **Sitä ei ole vielä käytetty oikeassa ravintolassa.** Seuraava vaihe on pilotti yhdessä keittiössä: äänen ymmärrettävyys liesituulettimen melussa, keittiön äänentoisto usealla kaiuttimella ja näyttöjen luettavuus oikeilla televisioilla.

Kuvakaappaukset ovat oikeista näytöistä. Niissä näkyvä tilanne syntyi simuloimalla palvelua: keksitty ruokalista ja pöydät, aika pysäytettynä tiettyyn illan hetkeen.
