---
tagline: Tvornica dodataka za Roblox — od prompta do 3D modela bez ručnog modeliranja
---
UGC Factory izrađuje dodatke za avatare na Roblox Marketplaceu. Napišeš što želiš —
*„ukrašena samurajska kaciga s neonskim detaljima”* — a s druge strane izađe
teksturirani 3D model spreman za učitavanje. Bez ručnog modeliranja.

## Kako radi

Posao je podijeljen na tri stroja. **DGX Spark** s GPU-om crta koncept (Illustrious za predmete,
Juggernaut XL za ono što se nosi na tijelu — bira se prema kategoriji), uklanja pozadinu i od slike radi
3D model. **NAS** drži red čekanja, katalog i headless Blender koji model svodi u
Robloxova ograničenja — ispod 4000 trokuta, UV, zapečena tekstura, ispravna točka
pričvršćivanja. **Mobitel** služi za razvrstavanje.

Brza staza (SF3D) složi model za sekundu i pol, pa se može isprobavati na
veliko. Sporiji i finiji TRELLIS pokreće se tek pri pakiranju komada koji je prošao
tvoje oko — skupo računanje troši se samo na ono što stvarno želiš prodavati.
Ukrašeni komadi poput dijadema i kaciga idu ravno kroz TRELLIS.

## Aplikacija

Mobilni klijent je srž cijele stvari. **Composer** šalje seriju — kategorija × stil ×
varijante, slobodno pedeset komada odjednom. **Red čekanja** uživo pokazuje što se upravo izrađuje i
u kojoj fazi. **Triage** je ono glavno: jedan komad na zaslonu, prekidač između
koncepta i 3D modela koji se okreće, tri gumba — odobri, odbij, pokušaj
ponovno s drugim seedom. Prolazi se brže nego što se čita. **Review** prikazuje
konvertirani komad: broj trokuta u odnosu na ograničenje, UV, zatvorenost mesha,
teksturu i presudu PASS, WARN ili FAIL. Odatle se komad može ponovno konvertirati ili
zapakirati za učitavanje. Ponovno pakiranje ne prepisuje ime, opise, cijenu i oznake
upisane u aplikaciji.

Radi na Androidu, iOS-u, macOS-u i u pregledniku. Poslužitelj je servira na vlastitom
originu, pa je web-verzija uvijek ažurna.

## Ukrašeno uokolo

Model nastaje iz jedne slike, pa stražnju stranu nitko nije vidio i ona ispadne
ravna i neukrašena. Kod komada koji su doista radijalno simetrični (torta,
kruna) zato se prednji isječak kopira uokolo, a šav se zavari. Uključuje se
u Composeru ili kod gotovog komada pri novoj konverziji, bez dodatnog generiranja.
Za ravan komad ne valja — raspadne se u krpež isječaka.

## Kategorije

Najbolje ispadaju stvari koje i u podacima za treniranje postoje **same za sebe**:
ruksačići, torbice, dijademe, šeširi, torte, maske, štitovi, prstenje.
Modističke kreacije s perjem i cvijećem, prošivene torbice s monogramom, krune
s biserima i ahatima, maske inspirirane s pet kultura, čupavi lisičji i rakunski
repovi, kawaii ljubimci za rame.

Slike izgledaju dobro gotovo uvijek — za modele to ni izdaleka ne vrijedi, a odlučuje
upravo model. Kompaktni oblici s volumenom (ruksak, torta, prsten) dobro drže. Tanke čipkaste
strukture na brzoj stazi se kidaju, pa dijademe idu ravno sporijim putem.
A crtani ulaz ima malo sjena, pa iz njega nastaje reljef umjesto volumena — pastelne
životinjice zato trebaju prompt koji iznudi meko sjenčanje.

Odjeća i kosa su tvrd orah: model ih poznaje samo na figuri, pa iz prompta
*„zmajska haljina”* nacrta zmaja. Pomaže prebaciti na fotorealistični model i
formulirati to kao fotografiju proizvoda — *„haljina na nevidljivoj lutki”*.

Haljine, cipele i rukavice Roblox usto rješava kao layered clothing s cage meshom,
što tvornica zasad ne zna. Za prste i šake Roblox uopće nema točku pričvršćivanja.
