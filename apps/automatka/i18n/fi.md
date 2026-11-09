---
tagline: Lapsi painaa harrastuksessa ”Olen täällä”, ja sinä tiedät sen. Ilman sijainnin seurantaa
---
Automatka on vanhemmille, joiden lapset kulkevat jo itse harrastuksiinsa.
Perillä lapsi painaa yhtä isoa **Olen täällä** -painiketta, palvelin tarkistaa,
että hän todella on hallilla tai nuorisotalolla, ja vanhempi saa ilmoituksen.
Jos lapsi ei ole kirjautunut paikalle harrastuksen alkuun mennessä, siitäkin
tulee ilmoitus. Ei mitään muuta: ei karttaa eikä taustaseurantaa.

### Sijainti vain painikkeen painalluksella

Koordinaatit lähtevät puhelimesta vain sillä hetkellä, kun lapsi painaa
painiketta. Palvelin vertaa niitä harrastuspaikkaan, tallentaa vain ”oli /
ei ollut paikalla” ja hävittää koordinaatit. Vanhempi ei siis näe, mitä reittiä
lapsi kulki, vaan ainoastaan, että hän saapui, lähti ja on kotona.

### Lapselle

- **Olen täällä**, sitten **Lähden** ja **Olen kotona**. Isot painikkeet, ei
  valikkoa.
- **SOS**-painiketta pitää painaa kaksi sekuntia, ettei se laukea taskussa.
- Ilman verkkoa painallus tallentuu ja lähtee, kun puhelin saa taas yhteyden.
- Jos puhelin ei saa sijaintia, paikalle voi silti kirjautua. Vanhempi näkee
  silloin, ettei saapumista ole vahvistettu sijainnilla.
- Ei tiliä eikä salasanaa. Lapsen laite yhdistetään vanhemmalta saatavalla
  kuusinumeroisella koodilla tai QR-koodilla, ja vanhempi voi purkaa
  yhdistämisen milloin tahansa.

### Vanhemmille

Päivän näkymä näyttää jokaisen lapsen ja hänen harrastuksensa: odotetaan,
paikalla, lähti. Varoitus ”ei kirjautunut” katoaa heti, kun lapsi kirjautuu tai
vanhempi kuittaa sen. Toinen vanhempi tai mummo näkee saman. Palvelin osaa viedä
perheen tiedot ulos tai poistaa koko perheen tileineen; sovelluksessa ei vielä
ole siihen painiketta.

### Tilanne

Automatka on vaiheessa 0: testataan, että yhdistäminen, push-ilmoitukset,
offline-tila ja GPS halleissa toimivat oikeissa puhelimissa ja kelloissa.
Taustajärjestelmä sekä lapsen ja vanhempien näkymät ovat valmiina ja läpäisseet
testit paikallisella palvelimella. Paikkojen ja harrastusten hallinta
sovelluksessa, kutsut toiselle vanhemmalle ja kellosovellus tulevat vasta sen
jälkeen. Ladattavaa ei ole vielä.
