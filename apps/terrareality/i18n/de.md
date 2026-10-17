---
tagline: Wohnungsmiete von der Kartensuche bis zur bezahlten Miete – für Vermieter, Mieter und Betreiber
---
TerraReality ist eine Plattform für die Langzeitvermietung von Wohnungen und
Zimmern. Sie startet in Prag und Umgebung, ihr Datenmodell ist aber von Anfang
an für weitere Länder Mitteleuropas vorbereitet (Rechtsordnung des Mietvertrags,
Währung, Sprache). Anders als ein Inserateportal endet sie nicht beim Kontakt:
Sie begleitet Vermieter und Mieter durch das gesamte Mietverhältnis – Suche,
Nachrichten, Bewerbung, Besichtigung, Mietvertrag und Unterschrift bis hin zu
den Zahlungen und deren Überwachung.

Die Plattform hat vier Gesichter. **Suchende** suchen auf der Karte oder
schreiben einfach, was sie wollen. **Vermieter und Hausverwaltungen** erhalten
eine Verwaltung im Stil eines Onlineshops: Inserate, Interessenten,
Mietverträge, Bank, Portfolio und Rechnungsstellung. **Mieter** erhalten ein
Mieterportal mit Vertrag, Zahlungen und QR-Codes. **Der Betreiber** erhält ein
Backoffice für Freigaben, Moderation und Einstellungen. Dazu kommt eine mobile
App für iOS und Android.

Die Screenshots stammen aus der Entwicklungsumgebung mit Testdaten: Die Namen
sind erfunden, die Wohnungsfotos dienen der Illustration, und die KI-Vorschläge
entstanden im Offlinemodus ohne Sprachmodell. Die Anwendung selbst ist auf
Tschechisch, Englisch ist verfügbar.

### Suche per Karte und Chat

Die Karte reicht von der Region über die Gemeinde und den Stadtteil bis hinunter
zur Straße und zeigt auf jeder Zoomstufe, wie viele Angebote es wo gibt. Daneben
stehen Filter (Typ, Preis, Fläche, Grundriss, Ausstattung, Haustiere, Verkehr)
mit einer Trefferzahl für jede Option. Wer nicht klicken möchte, tippt etwa
„2+kk bis 25 000 in Prag 6 mit Hund und Balkon“ – die Plattform setzt aus dem
Satz die Filter und den Kartenausschnitt und zeigt, wie sie ihn verstanden hat.
Suchen lassen sich speichern, und neue passende Angebote lösen eine
Benachrichtigung aus.

### Inserate mit KI-Unterstützung – immer von einem Menschen freigegeben

Der Vermieter gibt die Adresse aus dem amtlichen Adressregister (RÚIAN), die
Eckdaten, Fotos und den Text ein. Die KI kann aus Beschreibung und Fotos
Eckdaten vorschlagen (Aufzug, Balkon, Bauart…) und den Inseratstext auf
Tschechisch und Englisch verfassen. Ein Vorschlag wird nie von selbst
gespeichert: Der Vermieter sieht, was die KI vorschlägt, hakt ab, was stimmt,
und erst dann wird es übernommen. Bevor das Inserat veröffentlicht wird, gibt
es ein Mensch im Backoffice frei. Vermieter können Fragen an die Bewerber
hinzufügen (z. B. „Haben Sie ein Haustier?“).

### Nachrichten

Suchende schreiben dem Vermieter direkt aus dem Inserat. Nachrichten kommen in
Echtzeit an, mit Lesebestätigung und Anhängen. Telefonnummern und
E-Mail-Adressen im Text bleiben bis zur Vertragsunterzeichnung verborgen, damit
weder die Absprache noch das Geld die Plattform verlässt – und Suchende sehen
einen Hinweis, vor der Besichtigung nichts zu bezahlen. Wer offline ist, erhält
eine Push-Benachrichtigung oder eine E-Mail. Eine verdächtige Unterhaltung lässt
sich mit einem Klick melden.

### Bewerbungen, Wohngemeinschaften und Mieterauswahl

Suchende bewerben sich allein oder für eine Gruppe von Mitbewohnern: Sie legen
eine Gruppe an, laden die anderen per E-Mail ein, stimmen sich im Gruppenchat ab,
und die Bewerbung geht erst an den Vermieter, wenn alle zugestimmt haben. Der
Vermieter sieht die Bewerber mit ihren Antworten auf seine Fragen, ihrem
Verifizierungsstatus und einer kurzen KI-Zusammenfassung (auch hier nur ein
Vorschlag). Geschützte Merkmale wie Alter, Geschlecht oder Staatsangehörigkeit
werden nie erhoben. Wählt der Vermieter jemanden aus, erhalten die anderen eine
höfliche automatische Antwort.

### Besichtigungen

Der Vermieter bietet Besichtigungstermine mit Kapazität und Hinweis an
(„Treffpunkt vor dem Eingang“); Bewerber buchen, verschieben oder stornieren sie
direkt in der Bewerbung und erhalten eine Erinnerung.

### Digitaler Mietvertrag und Unterschrift

Ein Mietvertrag entsteht aus einer Vorlage (Wohnung befristet oder unbefristet,
gemeinsame Miete von Mitbewohnern, Zimmer) und wird mit den Daten aus dem Angebot
ausgefüllt. Aus dem Formular entsteht ein PDF, beide Seiten unterschreiben
online, und jedes Ereignis – Entwurf, Unterschrift, Zahlung, Kündigung – wird in
eine Audit-Kette geschrieben, in der jeder Eintrag per Hash mit dem vorherigen
verknüpft ist. Eine nachträgliche Änderung der Historie lässt sich so nicht
verbergen; die Vertragsseite zeigt, dass die Kette intakt ist. Auch Kündigung
und Abrechnung der Kaution sind abgedeckt.

Bis ein Anwalt sie geprüft hat, tragen die Vorlagen das Wasserzeichen ENTWURF,
und die Unterschrift ist vorerst eine einfache elektronische Signatur mit
Nachweisen (Zeitpunkt, IP-Adresse, Dokument-Fingerabdruck). Die Unterzeichnung
mit Bank iD ist als nächster Schritt vorbereitet und wartet auf den Vertrag mit
Bank iD.

### Zahlungen – das Geld geht direkt an den Vermieter

Aus dem Mietvertrag entsteht ein Zahlungsplan: Kaution, Miete und
Nebenkostenvorauszahlungen, bei Mitbewohnern nach Anteilen aufgeteilt. Mieter
zahlen per QR-Code in ihrer Banking-App oder per Karte über einen Revolut
Business-Link, der zum eigenen Händlerkonto des Vermieters führt. Der Vermieter
kann ein Bankkonto anbinden (nur Lesezugriff), und eingehende Zahlungen werden
automatisch anhand von Variabelsymbol, spezifischem Symbol und Betrag
zugeordnet; was nicht passt, bleibt als Vorschlag zur manuellen Zuordnung
stehen. Nach Fälligkeit gehen Erinnerungen hinaus, nach sieben Tagen folgt eine
Eskalation.

**TerraReality hält oder leitet niemals Geld von Mietern weiter.** Kein
Treuhandkonto, keine Kryptowährungen – Zahlungen gehen direkt vom Konto des
Mieters auf das Konto des Vermieters.

### Portfolio über Städte hinweg und Mietrisiko

Für Vermieter und Verwalter mit mehreren Wohnungen: alle Mietverhältnisse nach
Gemeinden, die monatliche Soll-Miete und was tatsächlich eingegangen ist, ein
Zwölfmonatstrend, eine Liste dessen, was Aufmerksamkeit erfordert (Rückstand,
Eskalation, Kündigung, leere Einheit), die Einkommenskonzentration und eine
Mieterliste (Rent Roll) mit Export nach CSV und Excel. Jedes Mietverhältnis hat
einen Risikowert, der aus Regeln berechnet wird (Rückstand, alte unbezahlte
Posten, Deckung durch die Kaution, nahendes Vertragsende…). Der Wert dient nur
der Information und entscheidet nie über jemanden; Mieter können sehen, woraus
er sich zusammensetzt. Regeln (Erinnerungen, Eskalation, Kaution,
Kündigungsfrist) lassen sich pro Gemeinde festlegen, und ein Investor kann einen
Lesezugriff erhalten, in dem Mieter nur mit Initialen erscheinen.

### Hervorhebung und Rechnungsstellung

Vermieter können ein Inserat nach oben schieben oder hervorheben. Sie zahlen per
Karte über Stripe; eine Rechnung mit Mehrwertsteuer wird automatisch erstellt,
per E-Mail versandt und steht in der Verwaltung bereit. Hervorgehobene Inserate
sind in den Ergebnissen gekennzeichnet.

### Backoffice, Moderation und DSA

Der Betreiber erhält eine Kennzahlenübersicht, eine Warteschlange der
freizugebenden Inserate, die Moderation gemeldeter Unterhaltungen und Inserate,
eine Warteschlange der KI-Vorschläge für neue Eckdaten, die Preisliste für
Hervorhebungen, Vertragsvorlagen, Funktionsschalter und ein Audit-Log. Jeder
kann ein Inserat melden, auch ohne Konto (wie es das EU-Gesetz über digitale
Dienste, DSA, verlangt); über jeden Fall entscheidet ein Mensch, und die
Begründung geht per E-Mail an die meldende Person und an den Inserenten. Die
Anmeldung „als Nutzer“ für den Support erfordert eine Begründung und wird im
Audit-Log festgehalten.

### Mobile App

Die Flutter-App für iOS und Android deckt ab, was ein Mieter auf dem Handy
braucht: Suche mit Liste und Karte, die Inseratsdetails mit Nachricht,
Bewerbung und Buchung einer Besichtigung, meine Besichtigungen, das
Mietverhältnis mit QR-Zahlung und Revolut-Link sowie Deep Links aus
Push-Benachrichtigungen. Es ist eine erste Version; Builds für Tester
(TestFlight und interner Test-Track bei Google Play) sind Teil der
Testvorbereitung.

### Betrieb

Die Produktionsumgebung ist für Hetzner in der EU vorbereitet: getrennte
Anwendungs- und Datenbankserver in einem privaten Netzwerk, automatisches HTTPS,
Datenbank-Backups mit Point-in-Time-Recovery (höchstens eine Stunde
Datenverlust) und eine erprobte Wiederherstellungsübung, Monitoring mit Alarmen
(99,9 % Verfügbarkeit, Suchantwort unter 300 ms, Backup-Status) und
Fehlerberichte. Die KI läuft auf unserem eigenen GPU-Server; ist sie nicht
verfügbar, funktioniert alles auch ohne sie.

### Stand und Tests

**Das MVP der gesamten Plattform ist fertig.** Alle oben genannten Module sind
implementiert und durch automatisierte Tests abgedeckt – Unit-, Integrations-
und End-to-End-Tests, die vollständige Szenarien im Browser durchklicken
(Inserat, Nachrichten, Gruppenbewerbung, Mietvertrag mit Unterschrift und
zugeordneter Zahlung, Portfolio, Hervorhebung mit Rechnung, DSA-Meldung,
Backoffice). Auch die Wiederherstellung der Datenbank aus einem Backup wurde
geprüft.

**Derzeit läuft die Härtung vor dem Pilotbetrieb**: Sicherheits- und
Betriebsverbesserungen aus dem Code-Review, Benachrichtigungen zu Bewerbungen,
Mietverträgen und Zahlungen sowie die Testumgebung. Noch läuft nichts auf einem
echten Server – die Bereitstellung wartet auf Konten und Zugänge (siehe unten).

Die Tests mit echten Menschen laufen in fünf Phasen. Jede endet mit einem Gate,
an dem wir gemeinsam entscheiden, ob es weitergeht:

1. **T0 – Vorbereitung (2 Wochen).** Eine Testumgebung auf Hetzner mit einem
   Banner „Testumgebung“, Partner im Sandbox-Modus (Stripe, Revolut, Bank iD),
   Produktanalyse ohne personenbezogene Daten, eine Schaltfläche „Problem /
   Idee melden“ im Web und in der App, Registrierung nur auf Einladung,
   Testdaten und App-Builds für Tester.
2. **T1 – interne Tests (1 Woche).** 5–8 Personen aus dem Team und seinem Umfeld
   durchlaufen alle Szenarien sowohl als Vermieter als auch als Suchende, auf
   mehreren Geräten, einschließlich einer Incident-Übung und einer
   Wiederherstellung aus dem Backup.
3. **T2 – moderierte Usability-Tests (2 Wochen).** 12 Teilnehmende: private
   Vermieter, ein Verwalter mit Wohnungen in mehreren Städten, tschechische und
   ausländische Suchende sowie ein Mitbewohner-Paar. Gemessen werden
   Aufgabenerfolg und Zufriedenheit (SUS ≥ 70).
4. **T3 – geschlossener Pilot in Prag (6 Wochen).** 20 Pilotvermieter mit
   persönlichem Onboarding und 50–100 Suchende, nur auf Einladung. Wir
   beobachten, ob Inserate Bewerbungen erhalten, wie schnell Vermieter
   antworten, wie viele Verträge digital abgeschlossen werden und wie
   zuverlässig alles läuft; ein Release pro Woche.
5. **T4 – offene Beta in Prag (4 Wochen).** Registrierung für alle mit
   Beta-Kennzeichnung, ohne bezahlte Kampagne – am Ende steht die Entscheidung
   über den öffentlichen Start.

Insgesamt etwa 15 Wochen ab Beginn der Vorbereitung.

**Was wir von Ihnen brauchen:**

- Konten und Zugänge für den Betrieb: Hetzner, Domain und DNS, Entwicklerkonten
  bei Apple und Google, Stripe, Revolut Business, Bank iD und den Anbieter der
  Bankdatenanbindung;
- Rekrutierung von Testern, 20 Pilotvermietern und Suchenden, Vergütung für die
  Teilnehmenden;
- eine rechtliche Prüfung der AGB, der Datenschutzerklärung und der
  Vertragsvorlagen, Einwilligungen der Tester sowie die Entscheidung, ob im
  Pilotbetrieb echte Mietverträge auf der Plattform unterzeichnet werden;
- einen Penetrationstest vor dem Pilotbetrieb, die Leitung der Interviews in T2
  und den First-Level-Support während des Pilotbetriebs;
- die Entscheidung an jedem Gate zwischen den Phasen.
