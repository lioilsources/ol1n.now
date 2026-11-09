---
tagline: Copilul apasă „Sunt aici” la activitate și tu afli imediat. Fără urmărirea locației
---
Automatka este pentru părinții ai căror copii merg deja singuri la activitățile
de după școală. La fața locului, copilul apasă un singur buton mare, **Sunt
aici**, serverul verifică dacă e chiar lângă sala de sport sau centrul de
tineret, iar părintele primește o notificare. Dacă până la începutul activității
copilul nu s-a înregistrat, vine tot o notificare. Nimic mai mult: fără hartă și
fără urmărire în fundal.

### Locația doar la apăsarea butonului

Coordonatele pleacă din telefon doar în clipa în care copilul apasă butonul.
Serverul le compară cu locul activității, salvează doar „a fost / n-a fost
acolo” și aruncă coordonatele. Așa, părintele nu vede pe unde a mers copilul,
ci doar că a ajuns, a plecat și e acasă.

### Pentru copil

- **Sunt aici**, apoi **Plec** și **Sunt acasă**. Butoane mari, fără meniu.
- **SOS** trebuie ținut apăsat două secunde, ca să nu pornească în buzunar.
- Fără semnal, apăsarea se salvează și se trimite imediat ce telefonul se
  conectează.
- Dacă telefonul nu reușește să afle locația, înregistrarea merge oricum.
  Părintele vede atunci că sosirea nu a fost confirmată prin locație.
- Fără cont și fără parolă. Copilul se asociază cu un cod din șase cifre sau
  cu un cod QR de la părinte, iar părintele poate dezasocia dispozitivul
  oricând.

### Pentru părinți

Rezumatul zilei arată fiecare copil și activitățile lui: se așteaptă, acolo, a
plecat. Alerta „fără înregistrare” dispare de îndată ce copilul se înregistrează
sau părintele o confirmă. Celălalt părinte sau bunica văd același lucru.
Serverul poate exporta o familie sau o poate șterge complet, inclusiv
conturile; în aplicație nu există încă un buton pentru asta.

### Stare

Automatka e în Faza 0: se verifică dacă asocierea, notificările push, modul
offline și GPS-ul în săli funcționează pe telefoane și ceasuri reale. Backendul
și ecranele pentru copil și părinți sunt gata și au trecut testele pe un server
local. Gestionarea locurilor și activităților în aplicație, invitațiile pentru
celălalt părinte și aplicația pentru ceasuri vin după aceea. Deocamdată nu e
nimic de descărcat.
