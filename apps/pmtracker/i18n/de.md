---
tagline: Zeiterfassung pro Auftrag, die den Ort prüft — und den Standort nicht speichert
---
Baufirmen und Serviceteams melden ihre Stunden bis heute auf Papier, per WhatsApp und in Excel. Der Vorarbeiter kann nicht prüfen, wer wo war, und der Arbeiter kann keine Überstunden belegen. PMTracker misst die Zeit auf einem bestimmten Auftrag und weiß bei jedem Eintrag, ob die Person wirklich vor Ort war.

### Standort nur zweimal, dann wird er verworfen

Die Koordinaten werden **nur beim Starten und Stoppen** der Zeitmessung gesendet. Der Server prüft, ob der Punkt im Geofence des Auftrags liegt, speichert eine einzige Angabe „vor Ort / nicht vor Ort“ — und verwirft die Koordinaten. Keine Bewegungskarte, kein Tracking im Hintergrund. Arbeit außerhalb des Geofence lässt sich per Ausnahme erlauben, die ins Audit-Log geschrieben wird.

### Rollen prüft die Datenbank, nicht die App

Ein Teammitglied erfasst Zeit auf den Aufträgen, denen es zugeordnet ist. Ein Manager verwaltet zusätzlich Aufträge und den Personaleinsatz und sieht Berichte. Ein Administrator verwaltet die Benutzer. Die Berechtigungen setzen Regeln direkt in der Datenbank durch, sodass sie auch ein veränderter Client nicht umgehen kann.

### Stand

Es ist ein MVP: Datenmodell, Rollen, Geofence-Prüfung und die Bildschirme für Anmeldung, Zeitmessung, Aufträge, Personaleinsatz, Berichte und Verwaltung stehen. Ein Offline-Modus für Baustellen ohne Empfang ist vorbereitet, aber noch nicht eingeschaltet, und die App läuft noch bei keiner Firma. Zum Anmelden brauchst du ein Konto von deinem Arbeitgeber.

### Für Betatester

Die Testversion gibt es vorerst nur für **Android**. Sie läuft gegen die Testfirma „Stavby s.r.o.“ mit erfundenen Leuten und zwei Aufträgen: Büroumbau am Wenzelsplatz in Prag und Klimaanlage am Freiheitsplatz in Brünn. Die Daten können jederzeit gelöscht werden. Eine Registrierung in der App gibt es nicht; das Konto schickt dir die Person, die dich zum Testen eingeladen hat.

**Installation**

1. Lade die APK auf dem Handy über den Button im Bereich **Downloads** oben herunter (oder von [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Öffne die heruntergeladene Datei und erlaube die Installation aus unbekannten Quellen, wenn Android fragt.
3. Google Play Protect warnt vielleicht, dass es die App nicht kennt. Das liegt daran, dass sie nicht aus Google Play kommt; wähle trotzdem installieren.
4. Starte **PMTracker** und melde dich mit dem Konto an, das du per Nachricht bekommen hast.

**Was du als Teammitglied ausprobieren kannst**

- Tippe im Tab **Výkaz** (Zeitnachweis) auf **Zahájit výkaz** (Zeitnachweis starten), wähle einen Auftrag und erlaube den Standortzugriff. Am Ort des Auftrags erscheint unter der Zeit ein grünes „Na místě“ (Vor Ort).
- Wenn du nicht vor Ort bist, verlangt die App einen Grund. Das ist in Ordnung: Schreib zum Beispiel „test“, und der Eintrag wird mit dem Vermerk gespeichert, dass er außerhalb des Orts entstand.
- Stoppe die Messung nach einer Weile mit **Ukončit výkaz** (Zeitnachweis beenden). „Dnes celkem“ (Heute gesamt) wächst.
- Öffne im Tab **Zakázky** (Aufträge) die Details: Adresse, Größe des Geofence, wer zugeordnet ist und die Aufgaben-Checkliste.

**Was du als Manager ausprobieren kannst**

- Du siehst zusätzlich **Roster** (dein Team) und **Reporty** (Berichte) mit der Arbeitszeit der Leute nach Aufträgen. In den Bericht zählen nur gestoppte Messungen; den Zeitraum änderst du oben rechts.
- Das Konto wechselst du durch Abmelden (Symbol oben rechts im Tab **Výkaz**).

**Was du noch nicht erwarten solltest**

- Ohne Internet funktioniert die App nicht, der Offline-Modus kommt später.
- Eine vergessene Messung stoppt nicht von selbst, stoppe sie manuell.
- Eine iPhone-Version für Tester gibt es noch nicht.

Fehler oder Ideen schickst du der Person, die dich eingeladen hat: was du gemacht hast, was passiert ist und mit welchem Konto. Ein Screenshot hilft sehr.
