---
tagline: Tehdas Roblox-asusteille — promptista 3D-malliksi ilman käsin mallintamista
---
UGC Factory valmistaa avatar-asusteita Roblox Marketplaceen. Kirjoitat, mitä haluat —
*”koristeellinen samuraikypärä neonkorostein”* — ja toisesta päästä tulee ulos
teksturoitu 3D-malli valmiina lähetettäväksi. Ei käsin mallintamista.

## Miten se pyörii

Työ on jaettu kolmelle koneelle. GPU:lla varustettu **DGX Spark** piirtää konseptin (esineille Illustrious,
päälle puettaville Juggernaut XL — valinta kategorian mukaan), poistaa taustan ja tekee kuvasta
3D-mallin. **NAS** pitää jonoa, katalogia ja headless Blenderiä, joka sovittaa mallin
Robloxin rajoihin — alle 4 000 kolmiota, UV:t, paistettu tekstuuri, oikea
kiinnityspiste. **Puhelin** on lajittelua varten.

Nopea kaista (SF3D) rakentaa mallin puolessatoista sekunnissa, joten kokeilla voi
isosti. Hitaampi ja tarkempi TRELLIS käynnistyy vasta, kun paketoidaan kappale, joka on läpäissyt
silmäsi — kallis laskenta käytetään vain siihen, mitä oikeasti haluat myydä.
Koristeelliset kappaleet, kuten tiarat ja kypärät, menevät suoraan TRELLISin läpi.

## Sovellus

Mobiiliasiakas on koko homman ydin. **Composer** lähettää erän — kategoria × tyyli ×
variantit, vaikka viisikymmentä kappaletta kerralla. **Jono** näyttää livenä, mitä juuri valmistetaan ja
missä vaiheessa. **Triage** on pääasia: yksi kappale ruudulla, kytkin
konseptin ja pyöritettävän 3D-mallin välillä, kolme painiketta — hyväksy, hylkää, yritä
uudelleen toisella seedillä. Sen läpi pääsee nopeammin kuin ehtii lukea. **Review** näyttää
muunnetun kappaleen: kolmioiden määrän suhteessa rajaan, UV:t, meshin umpinaisuuden,
tekstuurin ja tuomion PASS, WARN tai FAIL. Sieltä kappaleen voi muuntaa uudelleen tai
paketoida lähetettäväksi. Uudelleenpaketointi ei kirjoita yli sovelluksessa täytettyä nimeä, kuvauksia, hintaa
eikä tageja.

Toimii Androidilla, iOS:llä, macOS:llä ja selaimessa. Palvelin tarjoilee sen omasta
originistaan, joten verkkoversio on aina ajan tasalla.

## Koristeltu ympäri

Malli syntyy yhdestä kuvasta, joten takapuolta ei ole kukaan nähnyt, ja siitä tulee
litteä ja koristelematon. Aidosti säteittäisesti symmetrisissä kappaleissa (kakku,
kruunu) etusektori kopioidaan siksi ympäri ja sauma hitsataan. Sen saa päälle
Composerissa tai valmiissa kappaleessa uuden muunnoksen yhteydessä, ilman lisägenerointia.
Litteään kappaleeseen se ei sovi — se hajoaa sektorien tilkkutäkiksi.

## Kategoriat

Parhaiten onnistuvat asiat, jotka ovat koulutusdatassakin olemassa **sellaisinaan**:
reput, käsilaukut, tiarat, hatut, kakut, naamiot, kilvet, sormukset.
Modistiluomukset höyhenin ja kukin, tikatut monogrammilaukut, kruunut
helmin ja akaatein, viiden kulttuurin innoittamat naamiot, pörröiset kettu- ja
pesukarhunhännät, kawaii-lemmikit olalle.

Kuvat näyttävät hyviltä lähes aina — malleista sitä ei voi läheskään sanoa, ja ratkaisee
nimenomaan malli. Tiiviit, tilavuutta omaavat muodot (reppu, kakku, sormus) pysyvät hyvin koossa. Ohuet pitsimäiset
rakenteet repeilevät nopealla kaistalla, joten tiarat menevät suoraan hitaampaa reittiä.
Piirretyssä syötteessä on vähän varjoja, joten siitä syntyy reliefi tilavuuden sijaan — pastelliset
eläimet tarvitsevat siksi promptin, joka pakottaa pehmeän varjostuksen.

Vaatteet ja hiukset ovat kova pähkinä: malli tuntee ne vain hahmon päällä, joten promptista
*”lohikäärmemekko”* se piirtää lohikäärmeen. Auttaa vaihtaa fotorealistiseen malliin ja
muotoilla se tuotekuvaksi — *”mekko näkymättömällä mallinukella”*.

Mekot, kengät ja hanskat Roblox käsittelee lisäksi layered clothingina cage meshin kanssa,
mitä tehdas ei vielä osaa. Sormille ja käsille Robloxilla ei ole kiinnityspistettä lainkaan.
