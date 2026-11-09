---
tagline: Volej jedným ťahom prsta — kde priehlavok stretne loptu, s akou falšou a v ktorú milisekundu
---
Fotball Simulator je simulátor jediného pohybu: voleja. Lopta pred tebou poskočí, zakaždým inak, a ty ju jedným ťahom prsta kopneš na bránu. Žiadny tím, žiadny zápas, len otázka, kde a kedy priehlavok stretne loptu. Všetko ostatné, let, falša, odskok aj to, či je to gól, z toho vyplýva fyzikou.

### Jeden ťah, štyri rozhodnutia

Dole na obrazovke je veľká lopta a ťah prstom po nej povie všetko naraz:

- **Kam položíš prst**, tam priehlavok trafí loptu. Pod stredom lopta stúpa, nad stredom ju kopneš do zeme, zboku dostane rotáciu.
- **Oblúk ťahu** je falša. Čím viac ťah zahneš, tým viac sa lopta za letu stáča.
- **Rýchlosť ťahu** je sila kopu.
- **Chvíľa, keď prst pustíš**, je okamih kontaktu. Volej má okno: lopta po odskoku stúpa, zastaví sa a padá a ideálna chvíľa je, keď klesá do výšky priehlavku. Hra ju pozná vopred, lebo si pri nadhodení let lopty prepočíta.

Odchýlka sa meria v milisekundách. Do ±30 ms je to PERFECT, potom GOOD, LATE a EARLY. Neskoro je neskoro: priehlavok trafí klesajúcu loptu zhora, tá dostane topspin a skončí v zemi alebo nedoletí. Kto netrafí vôbec, kopne do vzduchu.

### Freeze-frame a let

V okamihu kontaktu sa svet na zlomok sekundy zastaví. Na lopte svieti bod, kde ju priehlavok trafil, a šípka ukazuje, kam letí. Hore sa objaví rýchlosť v km/h, rotácia v otáčkach za sekundu a hodnotenie timingu s presnou odchýlkou. Potom lopta letí a za ňou sa ťahá stopa, takže je vidieť, ako sa stáča. Výsledok je GÓL, VEDĽA alebo NEDOLETELA a o chvíľu priskáče ďalšia lopta.

Kto potrebuje viac času, zapne **slow-mo**: po dotyku prsta sa hra spomalí, aby sa dal ťah dokresliť. Timing sa však meria v hernom čase, takže spomalenie nepomôže podvádzať.

### Fyzika

Let lopty je vlastný výpočet, nie fyzika z enginu: gravitácia, odpor vzduchu, Magnusov jav (preto sa točiaca lopta stáča) a postupné spomaľovanie rotácie. Odskok z trávy uberá výšku a rotácia sa pri ňom prenáša do smeru. Kontakt počíta s rýchlosťou, ktorou lopta priletela, takže slabo kopnutá lopta sa len odrazí, namiesto toho, aby zostala visieť vo vzduchu. Výsledky strážia automatické testy proti nezávislej referenčnej implementácii toho istého modelu v Pythone.

Hra vznikla v Godote 4.7 a do telefónu ide jej prepis vo Flutteri s rovnakými konštantami a rovnakými testami. Scénu kreslí vlastná perspektívna projekcia, bez 3D enginu.

### Stav

Hotová je prvá fáza: hrateľná slučka nadhodenie, kop, freeze-frame, let a výsledok. Ihrisko a bránka sú zatiaľ jednoduché, chýba noha, ktorá švihne, sieť, ktorá sa pri góle prehne, a kamera, ktorá poletí za loptou. Potom príde ladenie pocitu, heatmapa striel na bránu a štatistiky.

APK nižšie je skúšobné (alfa). Na iPhone zatiaľ len cez TestFlight pre testerov.
