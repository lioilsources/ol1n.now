---
tagline: DJ-deck, jossa on älykäs soittolista ja juhlatila, jossa vieraat valitsevat musiikin puhelimestaan
---
DJfy on mobiili-DJ-sovellus, joka luo älykkäitä soittolistoja. Kirjoitat artistin nimen, ja sovellus kokoaa sen ympärille kappaleita tempon ja suositusten perusteella. Sitten se miksaa ne dekeillä pitchin, efektien ja crossfaderin avulla.

Se hyödyntää palveluja **Last.fm** (suositukset, scrobblaus), **GetSongBPM** (BPM-tiedot) ja **SoundCloud** (suoratoisto).

### Juhlatila

Bileissä musiikkia soittaa yleensä se, joka sattuu olemaan puhelimen ääressä, ja muut huutavat toiveitaan hänen korvaansa. DJfy:ssä isännän puhelimesta tulee DJ-pöytä, ja kaiutin vain soittaa. Vieraat skannaavat QR-koodin ja avaavat bileet selaimessa. Sovellusta tai tiliä ei tarvita, pelkkä nimi riittää.

- **Vieraat ehdottavat ja äänestävät.** Kuka tahansa voi hakea kappaleita, lisätä niitä jonoon ja antaa peukun ylös tai alas. Jotta yksi vieras ei valtaisi koko jonoa, kullakin voi olla siinä kerralla enintään kolme kappaletta.
- **Älykäs jono.** Järjestystä ei ratkaise pelkkä äänimäärä. Sovellus ottaa huomioon myös sen, kuinka kauan kappale on odottanut, soiko sama artisti juuri äsken ja sopiiko tempo parhaillaan soivaan kappaleeseen.
- **Mood lock.** Isäntä asettaa BPM-alueen, esimerkiksi 110–130, ja sen ulkopuoliset kappaleet siirtyvät jonon loppuun. Näin ilta pitää tempon, vaikka joku ehdottaisi balladia.
- **Auto-DJ.** Kappaleet vaihtuvat sulavalla crossfadella. Kun tempot eroavat enintään 8 %, sovellus sovittaa BPM:t yhteen siirtymän ajaksi ja palaa sitten alkuperäiseen nopeuteen.
- **Bileet eivät lopu.** Kun jonosta loppuvat kappaleet, sovellus lisää itse uuden, viimeksi soineiden kaltaisen kappaleen ja merkitsee sen tunnuksella Auto. Vieraiden kappaleet menevät aina edelle, eivätkä veto-oikeudella poistetut palaa. Toiminnon voi kytkeä pois Auto-DJ:n vieressä olevalla kytkimellä.
- **Isännällä on viimeinen sana.** Hän voi käyttää veto-oikeutta kappaleeseen, nimetä apu-DJ:n, joka saa muokata jonoa, tai heittää vieraan ulos.
- **Ääni minne vain.** Puhelin soittaa kuulokkeisiin, Bluetooth-kaiuttimeen tai AirPlayn kautta esimerkiksi Sonosiin.

Isännän puhelin pyörittää koko bileitä. Pieni Go-palvelin sen ja vieraiden välissä vain välittää viestejä eikä tallenna mitään.

Tehty Flutterilla. Toimii mobiilissa ja macOS:ssä.
