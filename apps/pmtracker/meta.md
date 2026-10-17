---
slug: pmtracker
name: PMTracker
repo: lioilsources/PMTracker
tagline: Docházka na zakázky, která ověří místo — a polohu neuloží
order: 18
featured: false
desktop:
mobile: android,ios
artifacts: android
appstore:
playstore:
testflight:
---
Stavební firmy a servisní týmy dodnes vykazují hodiny přes papír, WhatsApp
a Excel. Vedoucí nemá jak ověřit, kdo kde byl, a dělník nemá jak doložit
přesčas. PMTracker měří čas na konkrétní zakázce a u každého záznamu ví, jestli
člověk byl opravdu na místě.

### Poloha jen dvakrát, a pak se zahodí

Souřadnice se odešlou **jen při startu a zastavení** měření. Server ověří, že
bod leží v geofence zakázky, uloží jediný údaj „byl / nebyl na místě" —
a souřadnice zahodí. Žádná mapa pohybu, žádné sledování na pozadí. Práci mimo
geofence jde povolit výjimkou, která se zapíše do auditního logu.

### Role hlídá databáze, ne appka

Člen týmu trackuje čas na zakázkách, ke kterým je přiřazený. Vedoucí navíc
spravuje zakázky, rozpis lidí a vidí reporty. Administrátor spravuje uživatele.
Oprávnění vynucují pravidla přímo v databázi, takže je neobejde ani upravený
klient.

### Stav

Je to MVP: stojí datový model, role, ověření geofence a obrazovky pro
přihlášení, měření, zakázky, rozpis, reporty a správu. Offline režim pro stavby
bez signálu je připravený, ale ještě není zapnutý, a aplikace zatím neběží
u žádné firmy. Pro přihlášení potřebuje účet od svého zaměstnavatele.

### Pro beta testery

Testovací verze je zatím jen pro **Android**. Běží proti zkušební firmě
„Stavby s.r.o." se smyšlenými lidmi a dvěma zakázkami: rekonstrukce kanceláří
na Václavském náměstí v Praze a klimatizace na náměstí Svobody v Brně. Data se
můžou kdykoli smazat. Registrace v aplikaci není, účet ti pošle ten, kdo tě
k testování pozval.

**Instalace**

1. Na telefonu stáhni APK tlačítkem v sekci **Ke stažení** nahoře (nebo z
   [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Otevři stažený soubor a povol instalaci z neznámých zdrojů, když se Android
   zeptá.
3. Google Play Protect může varovat, že aplikaci nezná. Je to tím, že nejde
   z Google Play; zvol instalaci i tak.
4. Spusť **PMTracker** a přihlas se účtem, který ti přišel ve zprávě.

**Co vyzkoušet jako člen týmu**

- Na záložce **Výkaz** zmáčkni **Zahájit výkaz**, vyber zakázku a povol přístup
  k poloze. Na místě zakázky se pod časem ukáže zelené „Na místě".
- Když na místě nejsi, aplikace chce důvod. To je v pořádku: napiš třeba „test"
  a záznam se uloží s poznámkou, že vznikl mimo místo.
- Po chvíli měření zastav tlačítkem **Ukončit výkaz**. „Dnes celkem" se přičte.
- Na záložce **Zakázky** otevři detail: adresa, velikost geofence, kdo je
  přiřazený a checklist úkolů.

**Co vyzkoušet jako manažer**

- Navíc vidíš **Roster** (svůj tým) a **Reporty** s odpracovaným časem lidí po
  zakázkách. Do reportu se počítají jen zastavená měření; období změníš
  vpravo nahoře.
- Účet přepneš odhlášením (ikona vpravo nahoře na záložce **Výkaz**).

**Co zatím nečekat**

- Bez internetu aplikace nefunguje, offline režim přijde později.
- Zapomenuté měření se samo nezastaví, zastav ho ručně.
- Verze pro iPhone zatím pro testery není.

Chybu nebo nápad pošli tomu, kdo tě pozval: co jsi dělal, co se stalo a pod
jakým účtem. Snímek obrazovky hodně pomůže.
