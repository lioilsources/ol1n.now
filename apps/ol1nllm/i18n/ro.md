---
tagline: Chat AI cu roluri, Bibliotecarul și Juristul, un studio pentru imagini, video, povești, muzică și voce
---
Ol1nLLM este o singură aplicație peste propriul tău server: conversează, caută într-o bibliotecă și în legi, desenează, pune o imagine în mișcare într-un video, face o poveste animată, compune muzică și citește răspunsurile cu o voce înregistrată.
Un ghid detaliat cu capturi de ecran găsești pe pagina [Ce știe aplicația](ol1nllm-features.html).

### Chat

Conversația începe cu alegerea unui **rol** — zece personalități, de la un copil de cinci ani la un bunic, și patru asistenți cu date proprii. Răspunsul se scrie pe loc, conversația se poate **ramifica**, iar rolul se poate schimba la jumătate.

- **Bibliotecarul** răspunde dintr-un corpus de filosofie și texte sacre în limbile originale și arată pasajele din care s-a inspirat, cu traducere în cehă.
- **Juristul** răspunde din legile cehe în vigoare și citează articolele.
- **Juristul – contracte** redactează un contract după un șablon: întreabă card cu card și ține cont de limitele legale.
- **Leads** caută firme și instituții în Registrul ceh al contractelor.

### Image Studio

Imaginea se naște în runde care formează un arbore: text → imagine, apoi retușuri ale variantei alese. Nouăsprezece modele (FLUX, SDXL, linii anime), peste trei sute de **stiluri** artistice (culturi și epoci, artiști, tehnici), șabloane de **poze**, **LoRA** de pe server și un prompt negativ scris cu majuscule.

- **Păstrează poza** și **Păstrează fața** — un personaj nou în postura din imaginea de referință, la alegere și cu fața acestuia.
- **Harta stilurilor** — sute de imagini cu același subiect, ordonate după asemănare; degetul alunecă pe mozaic, stilul se schimbă ca o animație, iar cel ales se aplică.
- **Inpaint** — pictezi peste o zonă și descrii ce trebuie să fie acolo.
- **Frizer** — o coafură sau o culoare de păr nouă fără să desenezi vreo mască.
- **Pune în mișcare** — un video scurt dintr-o imagine: dansuri și gesturi de pe server sau propria descriere a mișcării.
- **3D** — un model de printat (STL) sau o figurină dansatoare cu schelet.

### Story Studio

Alegi o poveste dintre zece scenarii, distribui rolurile propriilor imagini, iar serverul face din ea un video animat de un minut, cu narator, muzică și subtitrări. Cadrele pot fi verificate înainte de animație, iar cele nereușite pot fi redesenate.

### Music Studio

Dă-i studioului o mostră muzicală — dintr-un fișier sau înregistrată cu microfonul — și va deduce genul, tempoul și tonalitatea. **Vibe** compune o piesă nouă în același spirit, **Groove** rearanjează originalul într-un alt gen.

### Voice Studio

Dintr-o înregistrare scurtă — chiar și din coloana sonoră a unui video — se naște propria ta **voce**. Orice voce poate fi încercată pe orice frază și atribuită unui rol din chat. Difuzorul de sub răspuns îl citește apoi cu vocea acelui rol.

### Istoric

Conversațiile, sesiunile, proiectele și poveștile rămân în telefon. Sarcinile lungi rulează pe server: poți închide aplicația, iar când revii se reconectează singură la ele.

Construită în Flutter, rulează pe mobil și desktop. Aplicația este un client pentru propriul tău server de modele; fără el nu generează nimic.
