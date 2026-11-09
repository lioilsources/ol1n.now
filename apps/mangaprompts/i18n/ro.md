---
tagline: Bot de Telegram pentru manga din blocuri, restyle de fotografii, o coafură nouă și fotografii animate
---
TsumikiMangaBot (fost MangaPrompts) construiește prompturi pentru generarea de imagini cu AI în stil LEGO — alegi blocuri pe vreo douăzeci și cinci de axe (mediu, tradiție artistică, stilul capului, stil manga, perioadă istorică) și din ele iese un prompt complet. Și nu se oprește aici: trimite promptul direct la generare și îți trimite imaginea înapoi.

### Alte carduri

Pe lângă constructor, Mini App are un comutator de carduri:

- **Restyle foto** — încarci o fotografie, alegi un stil și primești aceeași persoană, în aceeași poză, în stilul respectiv. Comutatorul foto / ilustrație alege mediul, iar stilurile sunt peste nouăzeci, în șase grupe (populare, pictori, tradiții artistice pe regiuni).
- **Încearcă o coafură** — redesenează doar părul dintr-un portret, dacă vrei și cu o culoare nouă. Fiecare coafură are o previzualizare pe aceeași față, așa că compari doar părul.
- **Dă viață fotografiei** — dintr-o fotografie și o scenă aleasă iese un videoclip scurt care ajunge în chat.

### Cum începi

Nu instalezi nimic, rulează ca Telegram Mini App:

1. În Telegram deschide [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — sau caută-l după numele **Tsumiki**.
2. Scrie `/start`. Botul răspunde cu butonul **🎨 Open Tsumiki**.
3. Apasă-l, asamblează blocurile și pornește generarea.

Imaginea gata apare direct în aplicație **și ajunge totodată în chat**, așa că o ai în istoric și o poți trimite mai departe imediat. Dacă sari peste `/start` și deschizi aplicația direct, generarea merge la fel — doar că imaginea nu-ți ajunge în chat, pentru că Telegram nu lasă un bot să scrie primul.

### Cât costă

**Trei generări gratuite la fiecare 24 de ore.** Apoi 1 credit = 1 imagine, iar creditele se cumpără cu **Telegram Stars** direct în aplicație — 10 credite pentru 25 ⭐, 50 pentru 100 ⭐, 250 pentru 400 ⭐. Restyle-ul și coafura costă cât o imagine, coafura abia după ce analiza acceptă fotografia. Animația are propriul contor: una pe zi gratuit, următoarele pentru 10 ⭐. Dacă o generare eșuează, creditul se returnează. Pentru probleme cu plata te ajută comanda `/paysupport`, iar rambursările le rezolv în 48 de ore.

### Ce rulează sub capotă

Mini App este Flutter web pe Cloudflare Pages. Promptul pleacă de acolo spre un backend (FastAPI + aiogram) care rulează pe un NAS de acasă și de acolo spre **ComfyUI** — în funcție de șablonul ales se alege workflow-ul (FLUX, Pony, Juggernaut XL Lightning sau WAI Illustrious). Restyle-ul păstrează fața prin PuLID sau InstantID și poza prin depth ControlNet, iar animația rulează pe Wan 2.2. Creditele și plățile sunt păstrate în SQLite, pe backend.

### Aplicații native

Build-urile de mai jos pentru macOS, Windows, Linux, Android și iOS sunt constructorul complet de prompturi și au în plus modul **Repose**, care nu există în Telegram: încarci o față, alegi o poză și aplicația generează o imagine a persoanei în poza respectivă, cu fața fidelă (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose se conectează însă direct la ComfyUI, așa că aplicația nativă trebuie să poată ajunge la el.

Construit cu Flutter.
