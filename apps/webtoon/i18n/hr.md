---
tagline: Okomiti stripovi i bez interneta — besplatne priče, igraće knjige u kojima biraš ti i kadrovi koji oživljavaju
visuals: {n} slika — kadrovi iz pet dječjih priča, usporedba dvaju stilova i character sheetovi.
---
Toonfork (radnog naziva Webtoon) čitač je okomitih stripova koji radi i bez interneta. Odmah nakon instalacije u njemu je 15 besplatnih priča, bez računa i bez registracije. Priče nastaju na vlastitom GPU poslužitelju: jezični model piše scenarij, slikovni model crta kadrove, a oblačiće s tekstom dodaje tek čitač, pa se tekst može ispraviti bez ponovnog generiranja slike.

Gotovi stripovi pet dječjih priča nalaze se na podstranici Strips, a petlja igre s izborom na kraju epizode na podstranici Gamebook.

### Čitač

Priča je jedna duga traka kadrova s oblačićima, mislima, uzvicima i zvučnim efektima koju palcem pomičeš odozgo prema dolje. Odabrani kadrovi oživljavaju u kratkim petljama: kiša na prozoru, svjetlo na vodi, vjetar u kosi. Na kraju epizode vidiš što je odabrano i gumb **Sljedeća epizoda**. Nakon posljednje epizode dolazi **Kraj** i prijedlog sljedeće priče.

### Igraće knjige

U igraćoj knjizi o radnji odlučuješ ti. Na kraju svakog dijela biraš što dalje i priča se grana. Aplikacija pamti gdje si, kojim si putem išao i koje si završetke pronašao; karta puta pokazuje samo ono što si već posjetio. Možeš početi ispočetka ili se vratiti korak unatrag. Igraće knjige su besplatne: za djecu **Sara and the Black Crown**, za odrasle primjerice komorna drama u psihološkom savjetovalištu **Learning to Be Silent**, **Metal Sky Above Us** ili **The Blooming Meadow That Turned Grey**. Drame otvaraju teške teme, a dječji ih profil skriva.

U beti je uređivač grana: bilo kojem izboru dodaješ vlastiti nastavak, slažeš ga od slika igraće knjige i pišeš oblačiće. Granu odmah odigraš i možeš je poslati autoru dijeljenjem, bez ikakvog poslužitelja.

### Paketi

Neobavezni paketi dodaju do 50 priča: **Romantika** (lagane ljubavne priče za odrasle, bez eksplicitnih scena), **Za djecu** i **Superjunaci**. Paket se nakon kupnje preuzme i čita offline. Jedna kupnja otključava sve, uključujući pakete koji izađu kasnije.

### Profil i roditeljska zaštita

Pri prvom pokretanju biraš profil **Djeca** ili **Odrasli**. Dječji profil skriva romantiku i drame u knjižnici i u trgovini. Svaku kupnju i svaki prelazak na Odrasle čuva roditeljska zaštita sa zadatkom iz tablice množenja.

### 12 jezika

Priče, igraće knjige i tekstovi čitača dostupni su na 12 jezika: češkom, engleskom, njemačkom, francuskom, talijanskom, poljskom, brazilskom portugalskom, japanskom, korejskom, vijetnamskom, ruskom i ukrajinskom. Jezik oblačića mijenjaš u Postavkama.

### Privatnost

Bez računa, bez oglasa, bez analitike trećih strana. Toonfork ne prikuplja osobne podatke. Na vlastiti poslužitelj razvijatelja šalje se samo anonimna statistika korištenja bez identifikatora, možeš je isključiti u Postavkama, a dječji profil ne šalje ništa. Što si kupio, pamti uređaj, a kupnje se mogu vratiti u Postavkama.

## Studio: kako nastaju priče

Drugo lice iste aplikacije je Studio za autora. Autor gradi svijet: lore, likove, mjesta i kanon kroz koji mora proći svaka priča. U Studiju se može igrati i interaktivno: na kraju epizode čitatelj bira što će lik učiniti dalje ili to napiše vlastitim riječima, a iz izbora nastaje sljedeća epizoda. Vlastiti tekst najprije prolazi moderaciju; u dječjem svijetu ona je stroža i u slučaju sumnje radije odbije. Snimke zaslona na ovoj stranici su iz Studija.

### Uređivač svijeta

Autor u aplikaciji ima karticu **Stvaraj**:

- **Osnova:** naslov, sinopsis, ton, jezik, publika (Za djecu, Od 13 godina, Za odrasle), vidljivost i likovni stil koji vrijedi za cijeli svijet.
- **Lore i kanon:** pravila svijeta, frakcije, kanonski čvorovi u stalnom redoslijedu i granice, dakle ono što se ne smije dogoditi.
- **Likovi i lokacije:** opis vlastitim riječima. Iz njega LLM predlaže stalne booru tagove za slikovni model. Tagovi koje model ne poznaje odbacuju se prema rječniku WD14, a autor dotjeruje ostatak.
- **Character sheet:** četiri varijante lika na bijeloj pozadini. Ona koja najbolje odgovara tagovima postaje referentna slika.
- **Pregled:** kampanje, gdje su čitatelji stali, koje su izbore birali i koliko su daleko stigli u kanonu.

### Modeli

- **Scenarij i moderacija:** Qwen3.6-35B-A3B preko vLLM-a. Za likove i lokacije predlaže tagove, za epizode piše storyboard (6–8 kadrova, 2–3 izbora i polje za vlastiti tekst). Zatim validator provjerava likove, mjesta i pravila svijeta.
- **Kadrovi:** SDXL preko ComfyUI-ja. Zadani je NoobAI-XL eps 1.1, drugi stil je Hassaku XL (Illustrious) 3.4. Ljudske likove crtaju samo ovi modeli.
- **Živi kadrovi:** Wan 2.2 od gotovog kadra napravi petlju od 1–3 s, najviše dva pokretna kadra po epizodi.
- **Provjera sadržaja:** tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Provjerava svaki kadar i ovisno o publici ga odbacuje i ponovno crta s novim seedom. Za djecu dodatno odbija usku i otkrivajuću odjeću. Isti tagger mjeri odgovara li lik u kadru svojem dizajnu.

Identitet lika drže sami tagovi. IP-Adapter je pripremljen, ali je u prvom mjerenju sliku prije kvario. Model ne zadržava dva ljudska lika u istom kadru, zamjenjuje im kosu i odjeću. Zato dječje priče svakom liku daju vlastiti kadar.

### Stilovi

Stil je imenovani preset: checkpoint, sampler, broj koraka, CFG i estetski tagovi. Autor ga bira jednom za cijeli svijet. **clean_webtoon_noartist** ima ravne boje i čistu liniju, **hassaku_soft** meko sjenčanje i pastelne boje. U vizualima je ista epizoda u oba stila jedna uz drugu.

### Stanje

Toonfork je u alfa verziji: verzija za Android je na Google Playu, build za macOS može se preuzeti s GitHuba, a App Store je u pripremi. Studio radi samo s vlastitim backendom (Go s redom poslova u Postgresu) i nije javno dostupan. Slike i tekstovi nastaju na vlastitom GPU poslužitelju.

Snimke zaslona su iz web verzije Studija u širini telefona, s lokalnim backendom. Epizode 2 na njima imaju samo scenarij, kadrovi još čekaju crtanje. Izvorni kod je na [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
