---
tagline: Pontaj pe lucrări care verifică locul — și nu-ți salvează locația
---
Firmele de construcții și echipele de service încă își raportează orele pe hârtie, pe WhatsApp și în Excel. Șeful de echipă nu are cum să verifice cine unde a fost, iar muncitorul nu are cum să-și dovedească orele suplimentare. PMTracker măsoară timpul pe o lucrare anume și știe, la fiecare înregistrare, dacă omul a fost cu adevărat la fața locului.

### Locația doar de două ori, apoi e ștearsă

Coordonatele se trimit **doar la pornirea și la oprirea** măsurătorii. Serverul verifică dacă punctul se află în geofence-ul lucrării, salvează o singură informație, „a fost / n-a fost la fața locului”, și aruncă coordonatele. Fără hartă a deplasărilor, fără urmărire în fundal. Munca în afara geofence-ului poate fi permisă printr-o excepție care se scrie în jurnalul de audit.

### Rolurile le păzește baza de date, nu aplicația

Un membru al echipei pontează timp pe lucrările la care e repartizat. Un manager, în plus, gestionează lucrările și repartizarea oamenilor și vede rapoartele. Un administrator gestionează utilizatorii. Permisiunile sunt impuse de reguli direct în baza de date, așa că nu le ocolește nici un client modificat.

### Stadiu

E un MVP: sunt gata modelul de date, rolurile, verificarea geofence-ului și ecranele de autentificare, măsurare, lucrări, repartizare, rapoarte și administrare. Modul offline pentru șantierele fără semnal e pregătit, dar încă nu e activat, iar aplicația încă nu rulează la nicio firmă. Ca să te autentifici, ai nevoie de un cont de la angajatorul tău.

### Pentru beta testeri

Deocamdată versiunea de test e doar pentru **Android**. Rulează pe o firmă de test, „Stavby s.r.o.”, cu oameni inventați și două lucrări: renovarea unor birouri în Piața Venceslas din Praga și climatizarea în Piața Libertății din Brno. Datele pot fi șterse oricând. În aplicație nu există înregistrare; contul ți-l trimite cel care te-a invitat la testare.

**Instalare**

1. Pe telefon, descarcă APK-ul cu butonul din secțiunea **Descărcări** de mai sus (sau de pe [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Deschide fișierul descărcat și permite instalarea din surse necunoscute când te întreabă Android.
3. Google Play Protect te poate avertiza că nu cunoaște aplicația. E pentru că nu vine din Google Play; alege totuși instalarea.
4. Pornește **PMTracker** și autentifică-te cu contul primit în mesaj.

**Ce să încerci ca membru al echipei**

- În fila **Výkaz** (Foaie de pontaj), apasă **Zahájit výkaz** (Pornește pontajul), alege o lucrare și permite accesul la locație. La locul lucrării, sub timp apare un „Na místě” (La fața locului) verde.
- Când nu ești la fața locului, aplicația cere un motiv. E în regulă: scrie, de exemplu, „test”, iar înregistrarea se salvează cu o notă că a fost făcută în afara locului.
- După un timp, oprește măsurătoarea cu butonul **Ukončit výkaz** (Încheie pontajul). „Dnes celkem” (Total azi) crește.
- În fila **Zakázky** (Lucrări), deschide detaliile: adresa, mărimea geofence-ului, cine e repartizat și lista de sarcini.

**Ce să încerci ca manager**

- În plus vezi **Roster** (echipa ta) și **Reporty** (Rapoarte) cu timpul lucrat de oameni pe lucrări. În raport intră doar măsurătorile oprite; perioada o schimbi din dreapta sus.
- Contul îl schimbi deconectându-te (pictograma din dreapta sus în fila **Výkaz**).

**La ce să nu te aștepți încă**

- Fără internet aplicația nu funcționează; modul offline vine mai târziu.
- O măsurătoare uitată nu se oprește singură; oprește-o manual.
- Încă nu există versiune de iPhone pentru testeri.

Trimite erorile sau ideile celui care te-a invitat: ce făceai, ce s-a întâmplat și cu ce cont. O captură de ecran ajută mult.
