---
tagline: Dochádzka na zákazky, ktorá overí miesto — a polohu neuloží
---
Stavebné firmy a servisné tímy dodnes vykazujú hodiny cez papier, WhatsApp a Excel. Vedúci nemá ako overiť, kto kde bol, a robotník nemá ako doložiť nadčas. PMTracker meria čas na konkrétnej zákazke a pri každom zázname vie, či človek bol naozaj na mieste.

### Poloha len dvakrát, a potom sa zahodí

Súradnice sa odošlú **len pri štarte a zastavení** merania. Server overí, že bod leží v geofence zákazky, uloží jediný údaj „bol / nebol na mieste“ — a súradnice zahodí. Žiadna mapa pohybu, žiadne sledovanie na pozadí. Prácu mimo geofence možno povoliť výnimkou, ktorá sa zapíše do auditného logu.

### Roly stráži databáza, nie appka

Člen tímu meria čas na zákazkách, ku ktorým je priradený. Vedúci navyše spravuje zákazky, rozpis ľudí a vidí reporty. Administrátor spravuje používateľov. Oprávnenia vynucujú pravidlá priamo v databáze, takže ich neobíde ani upravený klient.

### Stav

Je to MVP: stojí dátový model, roly, overenie geofence a obrazovky pre prihlásenie, meranie, zákazky, rozpis, reporty a správu. Offline režim pre stavby bez signálu je pripravený, ale ešte nie je zapnutý, a aplikácia zatiaľ nebeží v žiadnej firme. Na prihlásenie potrebuješ účet od svojho zamestnávateľa.

### Pre beta testerov

Testovacia verzia je zatiaľ len pre **Android**. Beží proti skúšobnej firme „Stavby s.r.o.“ s vymyslenými ľuďmi a dvoma zákazkami: rekonštrukcia kancelárií na Václavskom námestí v Prahe a klimatizácia na Námestí slobody v Brne. Dáta sa môžu kedykoľvek zmazať. Registrácia v aplikácii nie je, účet ti pošle ten, kto ťa pozval na testovanie.

**Inštalácia**

1. Na telefóne stiahni APK tlačidlom v sekcii **Na stiahnutie** hore (alebo z [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Otvor stiahnutý súbor a povoľ inštaláciu z neznámych zdrojov, keď sa Android opýta.
3. Google Play Protect môže varovať, že aplikáciu nepozná. Je to tým, že nejde z Google Play; zvoľ inštaláciu aj tak.
4. Spusti **PMTracker** a prihlás sa účtom, ktorý ti prišiel v správe.

**Čo vyskúšať ako člen tímu**

- Na záložke **Výkaz** stlač **Zahájit výkaz** (Začať výkaz), vyber zákazku a povoľ prístup k polohe. Na mieste zákazky sa pod časom ukáže zelené „Na místě“ (Na mieste).
- Keď na mieste nie si, aplikácia chce dôvod. To je v poriadku: napíš napríklad „test“ a záznam sa uloží s poznámkou, že vznikol mimo miesta.
- Po chvíli meranie zastav tlačidlom **Ukončit výkaz** (Ukončiť výkaz). „Dnes celkem“ (Dnes celkom) sa pripočíta.
- Na záložke **Zakázky** (Zákazky) otvor detail: adresa, veľkosť geofence, kto je priradený a checklist úloh.

**Čo vyskúšať ako manažér**

- Navyše vidíš **Roster** (svoj tím) a **Reporty** s odpracovaným časom ľudí po zákazkách. Do reportu sa počítajú len zastavené merania; obdobie zmeníš vpravo hore.
- Účet prepneš odhlásením (ikona vpravo hore na záložke **Výkaz**).

**Čo zatiaľ nečakať**

- Bez internetu aplikácia nefunguje, offline režim príde neskôr.
- Zabudnuté meranie sa samo nezastaví, zastav ho ručne.
- Verzia pre iPhone zatiaľ pre testerov nie je.

Chybu alebo nápad pošli tomu, kto ťa pozval: čo si robil, čo sa stalo a pod akým účtom. Snímka obrazovky veľmi pomôže.
