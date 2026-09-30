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
