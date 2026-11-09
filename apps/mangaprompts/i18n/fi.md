---
tagline: Telegram-botti palikoista koottuun mangaan, kuvien uudelleentyylittelyyn, uuteen kampaukseen ja kuvien animointiin
---
TsumikiMangaBot (ennen MangaPrompts) kokoaa promptit tekoälykuvien generointiin LEGO-tyyliin — valitset rakennuspalikoita noin kahdellakymmenelläviidellä akselilla (väline, taideperinne, pään tyyli, mangatyyli, historiallinen aikakausi), ja niistä syntyy valmis prompti. Siihen se ei jää: prompti lähtee suoraan generointiin ja kuva tulee takaisin sinulle.

### Lisää kortteja

Kokoajan lisäksi Mini Appissa on korttivalitsin:

- **Kuvan restyle** — lataat kuvan, valitset tyylin ja saat saman ihmisen samassa asennossa siinä tyylissä. Valokuva / kuvitus -kytkimellä valitset välineen, ja tyylejä on yli yhdeksänkymmentä kuudessa ryhmässä (suositut, taidemaalarit, taideperinteet alueittain).
- **Kokeile kampausta** — piirtää muotokuvaan uudelleen vain hiukset, halutessasi myös uudella värillä. Jokaisella kampauksella on esikatselu samoilla kasvoilla, joten vertaat vain hiuksia.
- **Herätä kuva eloon** — kuvasta ja valitsemastasi kohtauksesta syntyy lyhyt video, joka tulee chattiin.

### Näin pääset alkuun

Mitään ei asenneta, se toimii Telegram Mini Appina:

1. Avaa Telegramissa [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — tai etsi se haulla nimellä **Tsumiki**.
2. Kirjoita `/start`. Botti vastaa painikkeella **🎨 Open Tsumiki**.
3. Napauta sitä, kokoa palikat ja käynnistä generointi.

Valmis kuva näkyy suoraan sovelluksessa **ja tulee samalla chattiin**, joten se jää historiaan ja voit välittää sen heti eteenpäin. Jos ohitat `/start`-komennon ja avaat sovelluksen suoraan, generointi toimii silti — kuva ei vain tule chattiin, koska Telegram ei anna botin kirjoittaa ensin.

### Mitä se maksaa

**Kolme ilmaista generointia joka 24. tunti.** Sen jälkeen 1 krediitti = 1 kuva, ja krediittejä ostetaan **Telegram Starsilla** suoraan sovelluksessa — 10 krediittiä 25 ⭐, 50 krediittiä 100 ⭐, 250 krediittiä 400 ⭐. Restyle ja kampaus maksavat saman kuin kuva, kampaus vasta kun analyysi on hyväksynyt kuvan. Animaatiolla on oma laskurinsa: yksi päivässä ilmaiseksi, seuraavat 10 ⭐. Jos generointi epäonnistuu, krediitti palautetaan. Maksuongelmissa auttaa komento `/paysupport`, ja hoidan palautukset 48 tunnin sisällä.

### Mitä konepellin alla on

Mini App on Flutter webiä Cloudflare Pagesissa. Prompti kulkee siitä kotona NAS:lla pyörivään backendiin (FastAPI + aiogram) ja sieltä **ComfyUI**:hin — valitun mallipohjan mukaan valitaan workflow (FLUX, Pony, Juggernaut XL Lightning tai WAI Illustrious). Restyle pitää kasvot PuLID:llä tai InstantID:llä ja asennon depth ControlNetillä, animaatio pyörii Wan 2.2:lla. Krediitit ja maksut ovat SQLitessä backendin puolella.

### Natiivisovellukset

Alla olevat buildit macOS:lle, Windowsille, Linuxille, Androidille ja iOS:lle ovat täysi promptinkokoaja, ja niissä on lisäksi **Repose**-tila, jota Telegramissa ei ole: lataat kasvot, valitset asennon, ja sovellus luo kuvan tästä ihmisestä tuossa asennossa uskollisin kasvoin (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose ottaa kuitenkin yhteyden suoraan ComfyUI:hin, joten natiivisovelluksen täytyy päästä siihen käsiksi.

Tehty Flutterilla.
