---
tagline: Pokončni stripi tudi brez interneta — brezplačne zgodbe, igralne knjige, v katerih izbiraš ti, in sličice, ki oživijo
visuals: {n} slik — sličice iz petih otroških zgodb, primerjava dveh slogov in character sheeti.
---
Toonfork (z delovnim imenom Webtoon) je bralnik pokončnih stripov, ki deluje tudi brez interneta. Takoj po namestitvi je v njem 15 brezplačnih zgodb, brez računa in brez registracije. Zgodbe nastajajo na lastnem strežniku GPU: jezikovni model napiše scenarij, slikovni model nariše sličice, oblačke z besedilom pa doda šele bralnik, zato se besedilo lahko popravi brez ponovnega generiranja slike.

Dokončani stripi petih otroških zgodb so na podstrani Strips, igralna zanka z izbiro na koncu epizode pa na podstrani Gamebook.

### Bralnik

Zgodba je en dolg trak sličic z oblački, mislimi, vzkliki in zvočnimi učinki, ki ga s palcem drsiš od zgoraj navzdol. Izbrane sličice oživijo v kratkih zankah: dež na oknu, svetloba na gladini, veter v laseh. Na koncu epizode vidiš, kaj je bilo izbrano, in gumb **Naslednja epizoda**. Po zadnji epizodi pride **Konec** in predlog naslednje zgodbe.

### Igralne knjige

V igralni knjigi o dogajanju odločaš sam. Na koncu vsakega dela izbereš, kaj sledi, in zgodba se razveji. Aplikacija si zapomni, kje si, kod si hodil in katere konce si našel; zemljevid poti pokaže le tisto, kar si že obiskal. Lahko začneš znova ali se vrneš korak nazaj. Igralne knjige so brezplačne: za otroke **Sara and the Black Crown**, za odrasle na primer komorna drama v psihološki svetovalnici **Learning to Be Silent**, **Metal Sky Above Us** ali **The Blooming Meadow That Turned Grey**. Drame odpirajo težke teme in otroški profil jih skrije.

V beti je urejevalnik vej: kateri koli izbiri dodaš svoje nadaljevanje, ga sestaviš iz slik igralne knjige in napišeš oblačke. Vejo takoj zaigraš in jo lahko pošlješ avtorju prek deljenja, brez strežnika.

### Paketi

Izbirni paketi dodajo do 50 zgodb: **Romantika** (lahkotne ljubezenske zgodbe za odrasle, brez eksplicitnih prizorov), **Za otroke** in **Superjunaki**. Paket se po nakupu prenese in bere brez povezave. En nakup odklene vse, tudi pakete, ki izidejo pozneje.

### Profil in starševsko zaklepanje

Ob prvem zagonu izbereš profil **Otroci** ali **Odrasli**. Otroški profil skrije romantiko in drame v knjižnici in v trgovini. Vsak nakup in vsak preklop na Odrasle varuje starševsko zaklepanje z računom iz poštevanke.

### 12 jezikov

Zgodbe, igralne knjige in besedila bralnika so v 12 jezikih: češčini, angleščini, nemščini, francoščini, italijanščini, poljščini, brazilski portugalščini, japonščini, korejščini, vietnamščini, ruščini in ukrajinščini. Jezik oblačkov preklopiš v Nastavitvah.

### Zasebnost

Brez računa, brez oglasov, brez analitike tretjih oseb. Toonfork ne zbira osebnih podatkov. Na lastni strežnik razvijalca gre le anonimna statistika uporabe brez identifikatorjev, ki jo lahko izklopiš v Nastavitvah, otroški profil pa ne pošilja ničesar. Kaj si kupil, si zapomni naprava, nakupe pa lahko obnoviš v Nastavitvah.

## Studio: kako nastajajo zgodbe

Druga podoba iste aplikacije je Studio za avtorja. Avtor zgradi svet: lore, like, kraje in kanon, skozi katerega mora iti vsaka zgodba. V Studiu se da igrati tudi interaktivno: bralec na koncu epizode izbere, kaj bo lik storil naprej, ali to napiše s svojimi besedami, in iz izbire nastane naslednja epizoda. Lastno besedilo gre najprej skozi moderiranje; v otroškem svetu je strožje in ob dvomu raje zavrne. Posnetki zaslona na tej strani so iz Studia.

### Urejevalnik sveta

Avtor ima v aplikaciji zavihek **Ustvarjaj**:

- **Osnova:** naslov, sinopsis, ton, jezik, občinstvo (Za otroke, Od 13 let, Za odrasle), vidnost in likovni slog, ki velja za ves svet.
- **Lore in kanon:** pravila sveta, frakcije, kanonska vozlišča v stalnem vrstnem redu in omejitve, torej kaj se ne sme zgoditi.
- **Liki in lokacije:** opis s svojimi besedami. Iz njega LLM predlaga stalne oznake booru za slikovni model. Oznake, ki jih model ne pozna, se izločijo po slovarju WD14, avtor pa ostale dodela.
- **Character sheet:** štiri različice lika na belem ozadju. Tista, ki se najbolj ujema z oznakami, postane referenčna slika.
- **Pregled:** kampanje, kje so se bralci ustavili, katere izbire so izbirali in kako daleč so prišli v kanonu.

### Modeli

- **Scenarij in moderiranje:** Qwen3.6-35B-A3B prek vLLM. Za like in lokacije predlaga oznake, za epizode napiše storyboard (6–8 sličic, 2–3 izbire in polje za lastno besedilo). Nato validator preveri like, kraje in pravila sveta.
- **Sličice:** SDXL prek ComfyUI. Privzet je NoobAI-XL eps 1.1, drugi slog je Hassaku XL (Illustrious) 3.4. Človeške like rišejo le ti modeli.
- **Žive sličice:** Wan 2.2 iz dokončane sličice naredi zanko 1–3 s, največ dve gibljivi sličici na epizodo.
- **Preverjanje vsebine:** označevalnik WD14 (SmilingWolf/wd-swinv2-tagger-v3). Preveri vsako sličico in jo glede na občinstvo zavrže ter nariše znova z novim seedom. Za otroke dodatno zavrne oprijeta in razgaljajoča oblačila. Isti označevalnik meri, ali lik na sličici ustreza svoji zasnovi.

Identiteto lika držijo same oznake. IP-Adapter je pripravljen, a je v prvem merjenju sliko prej kvaril. Model ne zmore dveh človeških likov v istem kadru, zamenjuje jima lase in oblačila. Zato otroške zgodbe vsakemu liku dajo svojo sličico.

### Slogi

Slog je poimenovan preset: checkpoint, sampler, število korakov, CFG in estetske oznake. Avtor ga izbere enkrat za ves svet. **clean_webtoon_noartist** ima ploske barve in čisto linijo, **hassaku_soft** mehko senčenje in pastelne barve. V vizualih je ista epizoda v obeh slogih druga ob drugi.

### Stanje

Toonfork je v različici alfa: različica za Android je na Google Play, gradnja za macOS je na voljo za prenos na GitHubu, App Store se pripravlja. Studio teče le z lastnim zaledjem (Go z vrsto opravil v Postgresu) in ni javno dostopen. Slike in besedila nastajajo na lastnem strežniku GPU.

Posnetki zaslona so iz spletne različice Studia v širini telefona z lokalnim zaledjem. Epizode 2 imajo na njih le scenarij, sličice še čakajo na risanje. Izvorna koda je na [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
