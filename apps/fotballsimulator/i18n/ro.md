---
tagline: Un voleu dintr-o singură glisare a degetului — unde întâlnește șiretul mingea, cu cât efect și în ce milisecundă
---
Fotball Simulator simulează o singură mișcare: voleul. Mingea sare în fața ta, de fiecare dată altfel, iar cu o singură glisare a degetului o trimiți spre poartă. Fără echipă, fără meci, doar întrebarea unde și când șiretul întâlnește mingea. Tot restul, zborul, efectul, ricoșeul și dacă e gol, decurge de aici prin fizică.

### O glisare, patru decizii

Jos pe ecran e o minge mare, iar o glisare peste ea spune totul deodată:

- **Unde pui degetul**, acolo lovește șiretul mingea. Sub centru mingea urcă, deasupra centrului o bagi în pământ, din lateral primește rotație.
- **Arcul glisării** este efectul. Cu cât curbezi mai mult gestul, cu atât mingea se curbează mai tare în zbor.
- **Viteza glisării** este forța șutului.
- **Momentul în care ridici degetul** este clipa contactului. Voleul are o fereastră: după ricoșeu mingea urcă, se oprește și cade, iar momentul ideal e când coboară la înălțimea șiretului. Jocul îl știe dinainte, pentru că la aruncare calculează zborul mingii.

Abaterea se măsoară în milisecunde. Până la ±30 ms e PERFECT, apoi GOOD, LATE și EARLY. Târziu e târziu: șiretul lovește de sus mingea care cade, aceasta primește topspin și ajunge în pământ sau nu ajunge până la poartă. Cine ratează complet lovește aerul.

### Freeze-frame și zbor

În clipa contactului lumea se oprește pentru o fracțiune de secundă. Pe minge strălucește punctul unde a lovit-o șiretul, iar o săgeată arată încotro zboară. Sus apar viteza în km/h, rotația în rotații pe secundă și nota pentru timing cu abaterea exactă. Apoi mingea zboară lăsând o dâră în urmă, așa că se vede cum se curbează. Rezultatul este GOL, PE LÂNGĂ sau SCURT, iar după o clipă sare spre tine următoarea minge.

Dacă ai nevoie de mai mult timp, pornește **slow-mo**: când degetul atinge ecranul, jocul încetinește ca să poți termina glisarea. Timingul se măsoară însă în timpul jocului, așa că încetinirea nu te ajută să trișezi.

### Fizică

Zborul mingii este un calcul propriu, nu fizica unui motor: gravitație, rezistența aerului, efectul Magnus (de aceea o minge care se rotește se curbează) și scăderea treptată a rotației. Ricoșeul din iarbă îi ia din înălțime, iar rotația se transformă în direcție. Contactul ține cont de viteza cu care a venit mingea, așa că o minge lovită slab doar ricoșează, în loc să rămână suspendată în aer. Rezultatele sunt garantate de teste automate față de o implementare de referință independentă a aceluiași model în Python.

Jocul a fost creat în Godot 4.7, iar pe telefon ajunge rescrierea lui în Flutter, cu aceleași constante și aceleași teste. Scena este desenată de o proiecție în perspectivă proprie, fără motor 3D.

### Stadiu

Prima etapă e gata: o buclă jucabilă de aruncare, șut, freeze-frame, zbor și rezultat. Terenul și poarta sunt deocamdată simple; lipsesc încă un picior care își ia avânt, o plasă care se umflă la gol și o cameră care urmărește mingea. Apoi vor veni reglarea senzației de joc, o hartă termică a șuturilor pe poartă și statistici.

APK-ul de mai jos este o versiune de test (alfa). Pe iPhone, deocamdată doar prin TestFlight pentru testeri.
