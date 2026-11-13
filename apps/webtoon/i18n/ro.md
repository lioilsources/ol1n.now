---
tagline: Benzi desenate verticale, chiar și fără internet — povești gratuite, cărți-joc în care alegi tu și cadre care prind viață
visuals: {n} imagini — cadre din cinci povești pentru copii, o comparație între două stiluri și character sheets.
---
Toonfork (nume de lucru Webtoon) este un cititor de benzi desenate verticale care funcționează și fără internet. Imediat după instalare are 15 povești gratuite, fără cont și fără înregistrare. Poveștile se nasc pe un server GPU propriu: un model de limbaj scrie scenariul, un model de imagine desenează cadrele, iar baloanele cu text le adaugă abia cititorul, așa că textul se poate corecta fără a regenera imaginea.

Benzile gata făcute ale celor cinci povești pentru copii sunt pe subpagina Strips, iar bucla de joc cu o alegere la final de episod pe subpagina Gamebook.

### Cititor

O poveste este o singură bandă lungă de cadre cu baloane, gânduri, strigăte și efecte sonore, pe care o derulezi cu degetul mare de sus în jos. Unele cadre prind viață în bucle scurte: ploaie pe geam, lumină pe apă, vânt prin păr. La finalul episodului vezi ce s-a ales și butonul **Episodul următor**. După ultimul episod vine **Sfârșit** și o sugestie pentru următoarea poveste.

### Cărți-joc

Într-o carte-joc tu decizi acțiunea. La finalul fiecărei părți alegi ce urmează, iar povestea se ramifică. Aplicația ține minte unde ești, pe unde ai mers și ce finaluri ai găsit; harta drumului arată doar ce ai vizitat deja. Poți începe din nou sau te poți întoarce un pas. Cărțile-joc sunt gratuite: pentru copii **Sara and the Black Crown**, pentru adulți, de exemplu, drama de cameră dintr-un cabinet de psihologie **Learning to Be Silent**, **Metal Sky Above Us** sau **The Blooming Meadow That Turned Grey**. Dramele abordează teme grele, iar profilul pentru copii le ascunde.

În beta există un editor de ramuri: la orice alegere adaugi propria continuare, o compui din imaginile cărții-joc și scrii baloanele. Ramura o joci imediat și o poți trimite autorului prin partajare, fără niciun server.

### Pachete

Pachetele opționale adaugă până la 50 de povești: **Romantic** (povești de dragoste ușoare pentru adulți, fără scene explicite), **Pentru copii** și **Supereroi**. Pachetul se descarcă după cumpărare și se citește offline. O singură cumpărare deblochează tot, inclusiv pachetele care apar mai târziu.

### Profil și control parental

La prima pornire alegi profilul **Copii** sau **Adulți**. Profilul pentru copii ascunde poveștile romantice și dramele în bibliotecă și în magazin. Fiecare cumpărare și fiecare trecere la Adulți e păzită de un control parental cu o întrebare din tabla înmulțirii.

### 12 limbi

Poveștile, cărțile-joc și textele cititorului sunt în 12 limbi: cehă, engleză, germană, franceză, italiană, poloneză, portugheză braziliană, japoneză, coreeană, vietnameză, rusă și ucraineană. Limba baloanelor se schimbă din Setări.

### Confidențialitate

Fără cont, fără reclame, fără urmărire. Toonfork nu colectează date personale; ce ai cumpărat ține minte dispozitivul, iar cumpărăturile se pot restaura din Setări.

## Studio: cum se nasc poveștile

Cealaltă față a aceleiași aplicații este Studio pentru autor. Autorul construiește o lume: lore, personaje, locuri și un canon prin care trebuie să treacă fiecare poveste. În Studio se poate juca și interactiv: la finalul episodului, cititorul alege ce face personajul mai departe sau scrie asta cu propriile cuvinte, iar din alegere se naște episodul următor. Textul propriu trece mai întâi prin moderare; într-o lume pentru copii, aceasta e mai strictă și, la îndoială, preferă să refuze. Capturile de ecran de pe această pagină sunt din Studio.

### Editor de lume

Autorul are în aplicație fila **Creează**:

- **Bază:** titlu, sinopsis, ton, limbă, public (Pentru copii, De la 13 ani, Pentru adulți), vizibilitate și un stil grafic valabil pentru toată lumea.
- **Lore și canon:** regulile lumii, facțiuni, noduri canonice în ordine fixă și limite, adică ce nu are voie să se întâmple.
- **Personaje și locații:** o descriere cu propriile cuvinte. Pornind de la ea, un LLM propune taguri booru fixe pentru modelul de imagine. Tagurile pe care modelul nu le cunoaște sunt eliminate după vocabularul WD14, iar autorul le ajustează pe celelalte.
- **Character sheet:** patru variante ale personajului pe fundal alb. Cea care se potrivește cel mai bine cu tagurile devine imaginea de referință.
- **Prezentare generală:** campanii, unde s-au oprit cititorii, ce alegeri au făcut și cât de departe au ajuns în canon.

### Modele

- **Scenariu și moderare:** Qwen3.6-35B-A3B prin vLLM. Propune taguri pentru personaje și locații și scrie storyboardul episoadelor (6–8 cadre, 2–3 alegeri și un câmp pentru text propriu). Apoi un validator verifică personajele, locurile și regulile lumii.
- **Cadre:** SDXL prin ComfyUI. Implicit este NoobAI-XL eps 1.1, al doilea stil este Hassaku XL (Illustrious) 3.4. Doar aceste modele desenează personaje umane.
- **Cadre vii:** Wan 2.2 transformă un cadru gata făcut într-o buclă de 1–3 s, cel mult două cadre animate pe episod.
- **Verificarea conținutului:** taggerul WD14 (SmilingWolf/wd-swinv2-tagger-v3). Verifică fiecare cadru și, în funcție de public, îl respinge și îl redesenează cu un seed nou. Pentru copii respinge în plus hainele mulate și decoltate. Același tagger măsoară dacă personajul din cadru corespunde designului său.

Identitatea personajului o țin doar tagurile. IP-Adapter este pregătit, dar la prima măsurare mai degrabă strica imaginea. Modelul nu poate ține două personaje umane în același cadru: le încurcă părul și hainele. De aceea, poveștile pentru copii dau fiecărui personaj un cadru propriu.

### Stiluri

Un stil este un preset cu nume: checkpoint, sampler, număr de pași, CFG și taguri estetice. Autorul îl alege o singură dată pentru toată lumea. **clean_webtoon_noartist** are culori plate și linie curată, **hassaku_soft** umbrire moale și culori pastelate. În vizualuri, același episod apare în ambele stiluri, unul lângă altul.

### Stadiu

Toonfork este în alfa: versiunea pentru Android este pe Google Play, buildul pentru macOS se poate descărca de pe GitHub, iar App Store este în pregătire. Studio rulează doar cu propriul backend (Go cu o coadă de sarcini în Postgres) și nu este disponibil public. Imaginile și textele se nasc pe un server GPU propriu.

Capturile de ecran sunt din versiunea web a Studio, la lățime de telefon, cu un backend local. Episoadele 2 au acolo doar scenariu; cadrele încă așteaptă să fie desenate. Codul sursă este pe [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
