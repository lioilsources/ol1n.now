---
tagline: Tekoälychat rooleilla, Kirjastonhoitaja ja Juristi, studio kuville, videolle, saduille, musiikille ja äänelle
---
Ol1nLLM on yksi sovellus oman palvelimesi päällä: se juttelee, hakee kirjastosta ja laeista, piirtää, herättää kuvan videoksi, tekee sadun, säveltää musiikkia ja lukee vastaukset ääneen nauhoitetulla äänellä.
Yksityiskohtainen opas kuvakaappauksineen on sivulla [Mitä sovellus osaa](ol1nllm-features.html).

### Chat

Keskustelu alkaa **roolin** valinnalla — kymmenen luonnetta viisivuotiaasta lapsesta isoisään sekä neljä avustajaa omine tietoineen. Vastaus kirjoittuu sitä mukaa kuin se syntyy, keskustelun voi **haaroittaa** ja roolia voi vaihtaa kesken kaiken.

- **Kirjastonhoitaja** vastaa filosofian ja pyhien tekstien alkukielisestä korpuksesta ja näyttää kohdat, joista se ammensi, tšekinkielisen käännöksen kera.
- **Juristi** vastaa Tšekin voimassa olevista laeista ja lainaa pykäliä.
- **Juristi – sopimukset** laatii sopimuksen mallipohjasta: kysyy kortti kerrallaan ja valvoo lain asettamia rajoja.
- **Leads** etsii yrityksiä ja laitoksia Tšekin sopimusrekisteristä.

### Image Studio

Kuva syntyy kierroksina, jotka muodostavat puun: teksti → kuva, sitten valitun version muokkauksia. Yhdeksäntoista mallia (FLUX, SDXL, anime-linjat), yli kolmesataa taiteellista **tyyliä** (kulttuurit ja aikakaudet, taiteilijat, tekniikat), **asentopohjia**, **LoRA**-malleja palvelimelta ja isoilla kirjaimilla kirjoitettu negatiivinen kehote.

- **Säilytä asento** ja **Säilytä kasvot** — uusi hahmo esikuvan asennossa, halutessa myös sen kasvoilla.
- **Tyylikartta** — satoja kuvia samasta aiheesta samankaltaisuuden mukaan järjestettynä; sormi liukuu mosaiikin yli, tyyli vaihtuu kuin animaatio, ja valittu otetaan käyttöön.
- **Inpaint** — maalaat alueen yli ja kerrot, mitä siihen pitää tulla.
- **Kampaaja** — uusi kampaus tai hiusväri ilman maskin piirtämistä.
- **Liikkeelle** — kuvasta lyhyt video: tansseja ja eleitä palvelimelta tai oma kuvaus liikkeestä.
- **3D** — tulostettava malli (STL) tai tanssiva hahmo luurankoineen.

### Story Studio

Valitset sadun kymmenestä käsikirjoituksesta, miehität roolit omilla kuvillasi, ja palvelin tekee siitä minuutin mittaisen animaatiovideon kertojineen, musiikkeineen ja tekstityksineen. Otokset voi tarkistaa ennen animointia ja epäonnistuneet piirrättää uudelleen.

### Music Studio

Anna studiolle musiikkinäyte — tiedostosta tai mikrofonilla nauhoitettuna — niin se tunnistaa siitä tyylilajin, tempon ja sävellajin. **Vibe** säveltää uuden kappaleen samassa hengessä, **Groove** sovittaa alkuperäisen uudelleen toiseen tyylilajiin.

### Voice Studio

Lyhyestä nauhoitteesta — jopa videon ääniraidasta — syntyy oma **ääni**. Mitä tahansa ääntä voi kokeilla millä tahansa lauseella ja liittää chatin rooliin. Vastauksen alla oleva kaiutin lukee sen sitten sen roolin äänellä.

### Historia

Keskustelut, istunnot, projektit ja sadut pysyvät puhelimessa. Pitkät tehtävät pyörivät palvelimella: sovelluksen voi sulkea, ja palatessasi se yhdistää niihin itsestään.

Rakennettu Flutterilla, toimii mobiilissa ja työpöydällä. Sovellus on asiakas omalle mallipalvelimellesi; ilman sitä se ei tuota mitään.
