---
tagline: DJ-pult okos lejátszási listával és partimóddal, amelyben a vendégek a telefonjukról választanak zenét
---
A DJfy egy mobilos DJ-alkalmazás, amely okosan generál lejátszási listákat. Beírsz egy előadót, és az alkalmazás tempó és ajánlások alapján dalokat válogat köré. Aztán decken keveri őket pitch-csel, effektekkel és crossfaderrel.

Integrálja a **Last.fm**-et (ajánlások, scrobbling), a **GetSongBPM**-et (BPM-adatok) és a **SoundCloud**-ot (streaming).

### Partimód

Bulikon általában az teszi a zenét, aki épp a telefonnál áll, a többiek pedig a fülébe kiabálják a kívánságaikat. A DJfy-jal a házigazda telefonja lesz a DJ-pult, a hangszóró pedig csak szól. A vendégek beolvasnak egy QR-kódot, és böngészőben nyitják meg a bulit. Nem kell nekik se alkalmazás, se fiók, elég egy név.

- **A vendégek javasolnak és szavaznak.** Bárki kereshet dalokat, felteheti őket a sorba, és adhat nekik felfelé vagy lefelé mutató hüvelykujjat. Hogy egy vendég ne foglalja el az egész sort, egyszerre legfeljebb három dala lehet benne.
- **Okos sor.** A sorrendet nem csak a szavazatok száma dönti el. Az alkalmazás azt is figyeli, mióta vár egy dal, nem szólt-e az előbb ugyanaz az előadó, és illik-e a tempója az éppen szóló dalhoz.
- **Mood lock.** A házigazda beállít egy BPM-tartományt, például 110–130-at, és az ezen kívül eső dalok a sor végére kerülnek. Így az este tartja a tempót, akkor is, ha valaki egy balladát javasol.
- **Auto-DJ.** A dalok sima crossfade-del folynak egymásba. Ha a tempók legfeljebb 8 %-kal térnek el, az alkalmazás az átmenet alatt összehangolja a BPM-et, majd visszatér az eredeti sebességhez.
- **A buli nem ér véget.** Ha kifogynak a dalok a sorból, az alkalmazás magától hozzáad egy újabbat, ami hasonlít az utoljára játszottakhoz, és Auto jelöléssel látja el. A vendégek dalai mindig elsőbbséget élveznek, a megvétózottak pedig nem térnek vissza. Az Auto-DJ melletti kapcsolóval kikapcsolható.
- **A házigazdáé az utolsó szó.** Megvétózhat egy dalt, kinevezhet egy társ-DJ-t, aki belenyúlhat a sorba, vagy kidobhat egy vendéget.
- **Hang bárhová.** A telefon szólhat fülhallgatóba, Bluetooth-on hangszóróba vagy AirPlayen például egy Sonosra.

A házigazda telefonja viszi az egész bulit. Egy kis Go-szerver közte és a vendégek között csak továbbítja az üzeneteket, és semmit sem tárol.

Flutterrel készült. Mobilon és macOS-en is fut.
