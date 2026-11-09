---
tagline: Închirierea unei locuințe, de la căutarea pe hartă până la chiria plătită — pentru proprietari, chiriași și operator
---
TerraReality este o platformă pentru închirieri pe termen lung de apartamente și camere. Pornește din Praga și împrejurimi, dar datele sunt pregătite de la început și pentru alte țări din Europa Centrală (jurisdicția contractului, monedă, limbă). Spre deosebire de un portal de anunțuri, nu se oprește la contact: îi însoțește pe proprietar și pe chiriaș pe toată durata închirierii — căutare, mesaje, cerere, vizionare, contract și semnare, până la plăți și urmărirea lor.

Platforma are patru fețe. **Cine caută** caută pe hartă sau scrie pur și simplu ce vrea. **Proprietarul sau administratorul** are o zonă de administrare în stil de magazin online: anunțuri, solicitanți, contracte, bancă, portofoliu și facturare. **Chiriașul** are portalul său cu contractul, plățile și codurile QR. **Operatorul** are un backoffice pentru aprobări, moderare și setări. În plus, o aplicație mobilă pentru iOS și Android.

Capturile de ecran sunt din mediul de dezvoltare cu date de test: numele sunt inventate, fotografiile apartamentelor sunt ilustrative, iar sugestiile AI au fost generate în modul offline, fără model de limbaj.

### Căutare pe hartă și prin chat

Harta merge de la regiune, prin localitate și cartier, până la stradă și la fiecare nivel de zoom arată câte oferte sunt și unde. Alături sunt filtrele (tip, preț, suprafață, compartimentare, dotări, animale de companie, transport) cu numărul de rezultate pentru fiecare opțiune. Cine nu vrea să dea clic scrie, de exemplu, „2+kk până la 25 000 în Praga 6 cu câine și balcon” — platforma setează din frază filtrele și zona de pe hartă și arată cum a înțeles-o. Căutarea se poate salva, iar pentru ofertele noi vine o notificare.

### Anunț cu ajutorul AI — mereu cu acordul unui om

Proprietarul introduce adresa din registrul oficial al adreselor (RÚIAN), caracteristicile, fotografiile și textul. AI poate propune caracteristici pe baza descrierii și a fotografiilor (lift, balcon, tip de construcție…) și poate scrie textul anunțului în cehă și în engleză. Dar o propunere nu se salvează niciodată singură: proprietarul vede ce sugerează AI, bifează ce e corect și abia apoi se aplică. Înainte de publicare, anunțul este aprobat de un om în backoffice. La fiecare anunț proprietarul poate adăuga întrebări pentru solicitanți (de exemplu, „Ai un animal de companie?”).

### Mesaje

Solicitantul îi scrie proprietarului direct din anunț; mesajele sosesc în timp real, cu confirmare de citire și atașamente. Până la semnarea contractului, platforma ascunde din text numerele de telefon și adresele de e-mail, ca nici înțelegerea, nici plățile să nu se mute în afara ei — iar solicitantul vede avertismentul „nu plăti nimic înainte de vizionare”. Cine nu e online primește o notificare push sau un e-mail. O conversație suspectă se poate raporta cu un clic.

### Cereri, colegi de apartament și alegerea chiriașului

Solicitantul depune cererea singur sau pentru un grup de colegi de apartament: creează un grup, îi invită pe ceilalți prin e-mail, se înțeleg în chatul de grup, iar cererea ajunge la proprietar abia când toți sunt de acord. Proprietarul vede o listă a solicitanților cu răspunsurile la întrebările sale, starea verificării și un scurt rezumat de la AI (tot doar o propunere). Platforma nu colectează date protejate precum vârsta, sexul sau naționalitatea. Când proprietarul alege pe cineva, ceilalți primesc un răspuns automat politicos.

### Vizionări

Proprietarul anunță intervale de vizionare cu un număr de locuri și o notă („ne întâlnim în fața intrării”); solicitanții le rezervă, le mută sau le anulează direct din cerere și primesc un memento.

### Contract digital și semnătură

Contractul se creează dintr-un șablon (apartament pe durată determinată sau nedeterminată, închiriere comună a colegilor de apartament, cameră) și se completează cu datele din ofertă. Din formular se generează un PDF, ambele părți îl semnează online, iar fiecare eveniment — propunere, semnătură, plată, reziliere — se înregistrează într-un lanț de audit în care fiecare înregistrare e legată de cea anterioară printr-un hash. O modificare ulterioară a istoricului nu poate fi astfel ascunsă; pagina contractului arată că lanțul este intact. Platforma se ocupă și de reziliere și de decontarea garanției.

Șabloanele au filigranul CIORNĂ până când le revizuiește un jurist, iar semnătura este deocamdată o semnătură electronică simplă cu evidență (ora, adresa IP, amprenta documentului). Semnarea prin Bank iD este pregătită ca pas următor și așteaptă contractul cu Bank iD.

### Plăți — banii merg direct la proprietar

Din contract rezultă un calendar de plăți: garanție, chirie și avansuri pentru utilități, împărțite pe cote între colegii de apartament. Chiriașul plătește cu un cod QR în aplicația băncii sau cu cardul printr-un link Revolut Business care duce în contul de comerciant al proprietarului. Proprietarul își poate conecta contul bancar (doar citire), iar plățile primite se potrivesc singure după simbolul variabil, simbolul specific și sumă; ce nu se potrivește rămâne ca propunere de potrivire manuală. După scadență pleacă mementouri, iar după șapte zile o escaladare.

**TerraReality nu reține și nu transferă niciodată banii chiriașilor.** Fără cont escrow, fără criptomonede — plățile merg direct din contul chiriașului în contul proprietarului.

### Preluarea închirierilor existente

Proprietarul care are deja apartamente închiriate cu contract pe hârtie nu trebuie să semneze nimic din nou. Preia închirierea ca semnată în afara platformei, încarcă o scanare a contractului, iar plățile se urmăresc de la data preluării: datoria mai veche intră în soldul inițial, garanția deținută se înregistrează și rămâne și simbolul variabil folosit până acum. Chiriașii nu primesc nimic până când proprietarul nu îi invită în portalul chiriașului. Mai multe închirieri deodată se pot importa dintr-un tabel.

### Portofoliu în mai multe orașe și riscul închirierilor

Pentru proprietari și administratori cu mai multe locuințe: o privire de ansamblu asupra tuturor închirierilor pe localități, suma lunară așteptată și ce a intrat efectiv, tendința pe douăsprezece luni, lista cu ce necesită atenție (datorie, escaladare, reziliere, unitate liberă), concentrarea veniturilor și un rent roll cu export în CSV și Excel. Fiecare închiriere are un scor de risc calculat din reguli (datorie, plăți vechi neachitate, acoperirea prin garanție, sfârșitul apropiat al contractului…). Scorul e doar informativ și nu decide niciodată în privința nimănui; chiriașul vede din ce se calculează. Regulile (mementouri, escaladare, garanție, termen de preaviz) se pot seta pe localități, iar un investitor poate primi acces doar pentru citire, în care vede chiriașii doar ca inițiale.

### Promovare și facturare

Proprietarul își poate promova sau evidenția anunțul. Plătește cu cardul prin Stripe, factura cu TVA se emite singură, vine pe e-mail și se poate descărca din zona de administrare. Anunțurile promovate sunt marcate „Promovat” în rezultate.

### Backoffice, moderare și DSA

Operatorul are o privire de ansamblu asupra indicatorilor, o coadă de anunțuri de aprobat, moderarea conversațiilor și anunțurilor raportate, o coadă de propuneri AI pentru caracteristici noi, lista de prețuri pentru promovare, șabloanele de contract, comutatoare de funcții și un jurnal de audit. Oricine poate raporta un anunț, chiar și fără cont (conform Regulamentului european privind serviciile digitale, DSA); fiecare caz îl decide un om, iar motivarea se trimite pe e-mail atât celui care a raportat, cât și celui care a publicat anunțul. Autentificarea „ca utilizator” în cadrul asistenței cere precizarea unui motiv și se înregistrează în audit.

### Aplicația mobilă

Aplicația Flutter pentru iOS și Android acoperă ce îi trebuie chiriașului pe telefon: căutare cu listă și hartă, detaliul anunțului cu mesaj, cerere și rezervarea vizionării, vizionările mele, închirierea cu plată prin QR și link Revolut, plus deschidere directă din notificările push. Este o primă versiune; build-urile pentru testeri (TestFlight și canalul intern Google Play) vor apărea odată cu pregătirea testării.

### Operare

Mediul de producție este pregătit pentru Hetzner în UE: server de aplicație și server de bază de date separate într-o rețea privată, HTTPS automat, backupuri ale bazei de date cu restaurare la orice moment (pierdere de maximum o oră de date) și un test de restaurare verificat, monitorizare cu alerte (disponibilitate 99,9 %, răspunsul căutării sub 300 ms, starea backupurilor) și raportarea erorilor. AI rulează pe un server GPU propriu; când AI nu este disponibilă, totul funcționează și fără ea.

### Stadiu și testare

**MVP-ul întregii platforme este gata.** Toate modulele de mai sus sunt implementate și acoperite de teste automate — unitare, de integrare și end-to-end, care parcurg în browser scenarii complete (anunț, mesaje, cerere de grup, contract cu semnătură și plată potrivită, portofoliu, promovare cu factură, raportare conform DSA, backoffice). A fost verificată și restaurarea bazei de date dintr-un backup.

Sunt gata și îmbunătățirile de securitate și operare recomandate la revizuirea codului, precum și notificările push pentru cereri, contracte și plăți. O beta închisă rulează pe un server propriu cu anunțuri demonstrative pentru Praga și împrejurimi, marcate ca atare. Lansarea în producție pe Hetzner așteaptă conturile și accesele (vezi mai jos).

Testarea cu oameni reali are cinci etape. Fiecare se încheie cu o poartă la care se decide împreună dacă se merge mai departe:

1. **T0 — pregătire (2 săptămâni).** Mediu de test pe Hetzner cu banda „Mediu de test”, parteneri în sandbox (Stripe, Revolut, Bank iD), analiză de produs fără date personale, un buton „Raportează o problemă / o idee” pe web și în aplicație, înregistrare doar pe bază de invitație, date de test și build-uri ale aplicației pentru testeri.
2. **T1 — testare internă (1 săptămână).** 5–8 oameni din echipă și din jurul ei parcurg toate scenariile în rolul de proprietar și de persoană care caută, pe mai multe dispozitive, inclusiv un exercițiu de incident și o restaurare din backup.
3. **T2 — teste de utilizabilitate moderate (2 săptămâni).** 12 participanți: proprietari privați, un administrator cu locuințe în mai multe orașe, persoane care caută locuință, cehi și străini, și o pereche de colegi de apartament. Se măsoară reușita sarcinilor și satisfacția (SUS ≥ 70).
4. **T3 — pilot închis în Praga (6 săptămâni).** 20 de proprietari-pilot cu onboarding personal și 50–100 de persoane care caută, doar pe bază de invitație. Se urmărește dacă anunțurile primesc cereri, cât de repede răspund proprietarii, câte contracte se finalizează digital și cât de fiabil merge totul; o versiune pe săptămână.
5. **T4 — beta deschisă în Praga (4 săptămâni).** Înregistrare deschisă tuturor, cu eticheta beta, fără campanie plătită — iar la final, decizia privind lansarea publică.

În total, aproximativ 15 săptămâni de la începutul pregătirii.

**De ce avem nevoie de la voi:**

- conturi și accese pentru operare: Hetzner, domeniu și DNS, conturi de dezvoltator Apple și Google, Stripe, Revolut Business, Bank iD și furnizorul de conectare bancară;
- recrutarea testerilor, a 20 de proprietari-pilot și a persoanelor care caută, recompense pentru participanți;
- revizuirea juridică a termenilor și condițiilor, a politicii de confidențialitate și a șabloanelor de contract, acordurile testerilor și decizia dacă în pilot se semnează contracte reale direct pe platformă;
- un test de penetrare înainte de pilot, conducerea interviurilor din T2 și suportul de prim nivel în timpul pilotului;
- decizia la fiecare poartă dintre etape.
