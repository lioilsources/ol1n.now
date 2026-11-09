---
tagline: O fabrică de accesorii pentru Roblox — de la prompt la model 3D fără modelare manuală
---
UGC Factory produce accesorii pentru avatare pe Roblox Marketplace. Scrii ce vrei —
*„un coif de samurai ornamentat cu accente neon”* — iar la celălalt capăt iese un
model 3D texturat, gata de încărcat. Fără modelare manuală.

## Cum funcționează

Munca e împărțită între trei mașini. Un **DGX Spark** cu GPU desenează conceptul (Illustrious pentru obiecte,
Juggernaut XL pentru ce se poartă pe corp — ales după categorie), șterge fundalul și face din imagine
un model 3D. Un **NAS** ține coada, catalogul și un Blender headless care aduce modelul în
limitele Roblox — sub 4.000 de triunghiuri, UV, textură coaptă, punctul de prindere
corect. **Telefonul** e pentru triere.

Banda rapidă (SF3D) construiește un model într-o secundă și jumătate, așa că se poate încerca
pe scară mare. TRELLIS, mai lent și mai fin, pornește abia la împachetarea unei piese care a trecut
de ochiul tău — calculul scump se cheltuie doar pe ce vrei cu adevărat să vinzi.
Piesele ornamentate, ca diademele și coifurile, merg direct prin TRELLIS.

## Aplicația

Clientul mobil e nucleul întregii povești. **Composer** trimite un lot — categorie × stil ×
variante, liniștit cincizeci de bucăți deodată. **Coada** arată live ce se produce acum și
în ce fază. **Triage** e partea principală: o piesă pe ecran, un comutator între
concept și modelul 3D rotibil, trei butoane — aprobă, respinge, încearcă
din nou cu alt seed. Treci prin ele mai repede decât poți citi. **Review** arată
piesa convertită: numărul de triunghiuri față de limită, UV, dacă mesh-ul e închis,
textura și verdictul PASS, WARN sau FAIL. De aici piesa poate fi convertită din nou sau
împachetată pentru încărcare. Reîmpachetarea nu suprascrie numele, descrierile, prețul și tagurile
completate în aplicație.

Rulează pe Android, iOS, macOS și în browser. Serverul o servește de pe propriul
origin, așa că versiunea web e mereu la zi.

## Decorat de jur împrejur

Modelul se naște dintr-o singură imagine, așa că spatele nu l-a văzut nimeni și iese
plat și nedecorat. La piesele cu adevărat simetrice radial (un tort,
o coroană), sectorul din față se copiază de jur împrejur, iar cusătura se sudează. Se activează
în Composer sau la o piesă gata, la o nouă conversie, fără generare suplimentară.
Pe o piesă plată nu merge — se destramă într-un mozaic de sectoare.

## Categorii

Cel mai bine ies lucrurile care există **de sine stătător** și în datele de antrenare:
rucsăcele, poșete, diademe, pălării, torturi, măști, scuturi, inele.
Creații de modistă cu pene și flori, poșete matlasate cu monogramă, coroane
cu perle și agate, măști inspirate din cinci culturi, cozi pufoase de vulpe și
de raton, animăluțe kawaii pentru umăr.

Imaginile arată bine aproape mereu — despre modele nici pe departe nu se poate spune asta, iar decizia
o ia modelul. Formele compacte, cu volum (rucsac, tort, inel) țin bine. Structurile subțiri și
ajurate se rup pe banda rapidă, așa că diademele merg direct pe drumul mai lent.
Iar intrarea desenată are puține umbre, deci iese relief în loc de volum — animăluțele
pastel au nevoie de un prompt care să forțeze o umbrire moale.

Hainele și părul sunt o nucă tare: modelul le știe doar pe o figură, așa că din promptul
*„rochie dragon”* desenează un dragon. Ajută să treci pe un model fotorealist și
să formulezi ca pe o fotografie de produs — *„rochie pe un manechin invizibil”*.

În plus, rochiile, pantofii și mănușile Roblox le tratează ca layered clothing cu cage mesh,
pe care fabrica încă nu-l știe. Pentru degete și mâini Roblox nu are deloc punct de prindere.
