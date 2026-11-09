---
tagline: Työaikaseuranta kohteittain, joka varmistaa paikan — eikä tallenna sijaintiasi
---
Rakennusyritykset ja huoltotiimit ilmoittavat tuntinsa yhä paperilla, WhatsAppissa ja Excelissä. Työnjohtaja ei voi tarkistaa, kuka oli missä, eikä työntekijä voi todistaa ylitöitään. PMTracker mittaa aikaa tietyllä työkohteella ja tietää jokaisesta merkinnästä, oliko ihminen todella paikalla.

### Sijainti vain kahdesti, ja sitten se hävitetään

Koordinaatit lähetetään **vain mittauksen alussa ja lopussa**. Palvelin tarkistaa, että piste on kohteen geoaidan sisällä, tallentaa yhden ainoan tiedon, ”oli paikalla / ei ollut paikalla”, ja hävittää koordinaatit. Ei liikkumiskarttaa, ei taustaseurantaa. Geoaidan ulkopuolisen työn voi sallia poikkeuksella, joka kirjataan auditointilokiin.

### Rooleja valvoo tietokanta, ei sovellus

Tiimin jäsen kirjaa aikaa kohteisiin, joihin hänet on määrätty. Esihenkilö hallinnoi lisäksi kohteita ja työvuoroja ja näkee raportit. Ylläpitäjä hallinnoi käyttäjiä. Oikeudet pannaan täytäntöön säännöillä suoraan tietokannassa, joten edes muokattu asiakasohjelma ei pääse niiden ohi.

### Tilanne

Tämä on MVP: tietomalli, roolit, geoaidan tarkistus sekä kirjautumisen, mittauksen, kohteiden, työvuorojen, raporttien ja ylläpidon näkymät ovat valmiina. Offline-tila katvealueilla oleville työmaille on valmisteltu mutta ei vielä käytössä, eikä sovellus ole vielä käytössä yhdessäkään yrityksessä. Kirjautumiseen tarvitset tilin työnantajaltasi.

### Beetatestaajille

Testiversio on toistaiseksi vain **Androidille**. Se toimii testiyrityksellä ”Stavby s.r.o.”, jossa on keksittyjä ihmisiä ja kaksi kohdetta: toimistojen remontti Prahan Venceslauksen aukiolla ja ilmastointi Brnon Vapaudenaukiolla. Tiedot voidaan poistaa milloin tahansa. Sovelluksessa ei ole rekisteröitymistä; tilin lähettää sinulle se, joka kutsui sinut testaamaan.

**Asennus**

1. Lataa APK puhelimeesi yllä olevan **Lataukset**-osion painikkeella (tai [GitHub Releases](https://github.com/lioilsources/PMTracker/releases) -sivulta).
2. Avaa ladattu tiedosto ja salli asennus tuntemattomista lähteistä, kun Android kysyy.
3. Google Play Protect saattaa varoittaa, ettei se tunne sovellusta. Se johtuu siitä, ettei sovellus tule Google Playsta; valitse silti asennus.
4. Käynnistä **PMTracker** ja kirjaudu viestissä saamallasi tilillä.

**Kokeile tiimin jäsenenä**

- Napauta **Výkaz** (Tuntikirjaus) -välilehdellä **Zahájit výkaz** (Aloita kirjaus), valitse kohde ja salli sijainnin käyttö. Kohteen paikalla ajan alle ilmestyy vihreä ”Na místě” (Paikalla).
- Kun et ole paikalla, sovellus pyytää syyn. Se on ok: kirjoita vaikkapa ”test”, niin merkintä tallentuu huomautuksella, että se tehtiin paikan ulkopuolella.
- Pysäytä mittaus hetken päästä **Ukončit výkaz** (Lopeta kirjaus) -painikkeella. ”Dnes celkem” (Tänään yhteensä) kasvaa.
- Avaa **Zakázky** (Kohteet) -välilehdellä kohteen tiedot: osoite, geoaidan koko, kuka on määrätty ja tehtävälista.

**Kokeile esihenkilönä**

- Näet lisäksi **Roster** (tiimisi) ja **Reporty** (Raportit) -näkymät, joissa on ihmisten tehty työaika kohteittain. Raporttiin lasketaan vain pysäytetyt mittaukset; jakson vaihdat oikeasta yläkulmasta.
- Tilin vaihdat kirjautumalla ulos (kuvake **Výkaz**-välilehden oikeassa yläkulmassa).

**Mitä ei vielä kannata odottaa**

- Ilman internetiä sovellus ei toimi, offline-tila tulee myöhemmin.
- Unohtunut mittaus ei pysähdy itsestään, pysäytä se käsin.
- iPhone-versiota testaajille ei vielä ole.

Lähetä virheet ja ideat sille, joka kutsui sinut: mitä teit, mitä tapahtui ja millä tilillä. Kuvakaappaus auttaa paljon.
