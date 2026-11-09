---
tagline: Tovarna dodatkov za Roblox — od prompta do 3D-modela brez ročnega modeliranja
---
UGC Factory izdeluje dodatke za avatarje na Roblox Marketplace. Napišeš, kaj želiš —
*»okrašena samurajska čelada z neonskimi poudarki«* — in na drugi strani pade ven
teksturiran 3D-model, pripravljen za nalaganje. Nobenega ročnega modeliranja.

## Kako teče

Delo je razdeljeno med tri stroje. **DGX Spark** z GPU nariše koncept (Illustrious za predmete,
Juggernaut XL za tisto, kar se nosi na telesu — izbere se glede na kategorijo), odstrani ozadje in iz slike naredi
3D-model. **NAS** hrani čakalno vrsto, katalog in headless Blender, ki model spravi v
Robloxove omejitve — pod 4000 trikotnikov, UV, zapečena tekstura, pravilna pritrdilna
točka. **Telefon** je za razvrščanje.

Hitra steza (SF3D) zgradi model v sekundi in pol, zato se da preizkušati na
veliko. Počasnejši in finejši TRELLIS se zažene šele pri pakiranju kosa, ki je šel skozi
tvoje oko — drag izračun se porabi samo za tisto, kar res želiš prodajati.
Okrašeni kosi, kot so diademi in čelade, gredo naravnost skozi TRELLIS.

## Aplikacija

Mobilni odjemalec je jedro vsega. **Composer** pošlje serijo — kategorija × slog ×
različice, mirno petdeset kosov naenkrat. **Čakalna vrsta** v živo pokaže, kaj se ravno izdeluje in
v kateri fazi. **Triage** je glavno: en kos na zaslonu, preklop med
konceptom in vrtljivim 3D-modelom, trije gumbi — odobri, zavrni, poskusi
znova z drugim seedom. Skoznje greš hitreje, kot se da brati. **Review** pokaže
pretvorjen kos: število trikotnikov glede na omejitev, UV, zaprtost mreže,
teksturo in oceno PASS, WARN ali FAIL. Od tod lahko kos znova pretvoriš ali
zapakiraš za nalaganje. Ponovno pakiranje ne prepiše imena, opisov, cene in oznak,
vpisanih v aplikaciji.

Teče na Androidu, iOS, macOS in v brskalniku. Strežnik jo streže na svojem lastnem
originu, zato je spletna različica vedno aktualna.

## Okrašeno naokrog

Model nastane iz ene same slike, zato zadnje strani ni nihče videl in pride ven
ploska in neokrašena. Pri kosih, ki so res radialno simetrični (torta,
krona), se zato sprednji izsek prekopira naokrog, šiv pa se zvari. Vklopi se
v Composerju ali pri končanem kosu ob novi pretvorbi, brez dodatnega generiranja.
Za ploske kose ni primerno — razpade v krpanko izsekov.

## Kategorije

Najbolje se obnesejo stvari, ki tudi v učnih podatkih obstajajo **same zase**:
nahrbtniki, torbice, diademi, klobuki, torte, maske, ščiti, prstani.
Modistične stvaritve s perjem in rožami, prešite torbice z monogramom, krone
z biseri in ahati, maske po navdihu petih kultur, puhasti lisičji in rakunji
repi, kawaii ljubljenčki za na ramo.

Slike so videti dobro skoraj vedno — za modele to še zdaleč ne velja, odloča pa
prav model. Kompaktne oblike s prostornino (nahrbtnik, torta, prstan) dobro držijo. Tanke čipkaste
strukture se na hitri stezi trgajo, zato gredo diademi takoj po počasnejši poti.
Risan vhod pa ima malo senc, zato iz njega nastane relief namesto prostornine — pastelne
živalce potrebujejo prompt, ki izsili mehko senčenje.

Oblačila in lasje so trd oreh: model jih pozna le na postavi, zato iz prompta
*»zmajska obleka«* nariše zmaja. Pomaga preklop na fotorealističen model in
formulacija kot fotografija izdelka — *»obleka na nevidni lutki«*.

Obleke, čevlje in rokavice Roblox poleg tega obravnava kot layered clothing s cage meshem,
česar tovarna še ne zna. Za prste in roke Roblox pritrdilne točke sploh nima.
