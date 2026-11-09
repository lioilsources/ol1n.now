---
tagline: Bit-perfect-Player für USB-DACs — Datei, RAM, ASIO und nichts dazwischen
---
Elfton Player ist ein Player für lokale Musik unter Windows 11 mit einer einzigen
Priorität: Beim USB-DAC sollen genau die Samples ankommen, die in der Datei stehen.
Der Signalweg ist **Datei → Decoder → RAM → ASIO → DAC**. Keine Lautstärkeregelung,
kein Equalizer, kein Resampling, kein Streaming. Die Lautstärke stellst du am
Wandler oder am Verstärker ein.

### Was er kann

- **Bit-perfect-Ausgabe** über ASIO oder WASAPI im exklusiven Modus. Neben dem
  Titel siehst du die ganze Kette (`FLAC 24/96k → 32-bit · bit-perfect`), und der grüne
  Punkt erlischt, sobald irgendetwas ins Signal eingreift.
- **Wiedergabe aus dem Speicher.** Der Titel wird komplett in den RAM dekodiert, sodass
  die Festplatte beim Abspielen ruht; der nächste Titel wird vorab geladen und schließt
  **lückenlos** an.
- **Samplegenaue A-B-Schleife**, deren Punkte sich millisekundenweise verschieben lassen —
  zum Üben einer Passage oder zum Vergleichen zweier Stellen einer Aufnahme.
- **Bibliothek nach Ordnern**: der Verzeichnisbaum so, wie er auf deiner Platte liegt, Cover,
  Suche, Warteschlange, Favoriten, Verlauf, M3U-Playlists, Alben in einer Datei mit CUE,
  synchronisierte Songtexte aus LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg und DSD** (nativ, DoP oder als PCM umgewandelt).
- **Mono (L+R)/2** als einziger Eingriff ins Signal, immer sichtbar gekennzeichnet.
- **Die Tasten L und R** lassen nur einen Lautsprecher spielen und schalten den anderen
  stumm. Mit Mono spielen beide dasselbe, so kannst du vom Sessel aus per Handy sofort
  die linke und die rechte Seite deiner Anlage vergleichen (Kabel, Bauteile); ohne Mono
  hörst du nur den linken oder nur den rechten Kanal der Aufnahme.
- **Ein Suchbalken, gezeichnet als Lautstärkeverlauf des Titels**, über die ganze
  Fensterbreite: Ein leises Intro ist sichtbar und lässt sich mit einem Klick überspringen.
- **Ein Herz an jedem Titel** und ein Filter „nur Favoriten“ direkt im Album.
- **Drei Designs**: dunkel, schwarz und hell.
- **Fernbedienung auf dem Handy**: Elfton Remote wird per QR-Code über dein Heimnetz
  gekoppelt und kann alles, was das Fenster am Computer kann.

### Wiedergabemodus

Auf Wunsch schaltet er beim Abspielen den Energiesparplan um, deaktiviert das selektive
USB-Energiesparen und das Core Parking und stellt danach alles wieder zurück. Ehrlich
gesagt: Bei einem asynchronen USB-DAC gibt der Wandler den Takt vor, deshalb haben diese
Anpassungen keinen messbaren Einfluss auf den Klang. Sie sind optional, jede wird ins Log
geschrieben, und keine davon ist nötig.

Dasselbe gilt für die „Rituale“ aus dem Player Bug head, die in den Einstellungen stehen
und standardmäßig aus sind: die Musik im RAM sperren, eine Pause nach dem Laden eines
Titels und das Starten eines eigenen Hilfsprogramms (zum Beispiel MinorityClean) zusammen
mit dem Player. MinorityClean ist nicht enthalten.

### Status

**Version 0.2, Vorabversion.** Die erste Version lief unter Windows 11 bei einem
Hörer über ASIO (Behringer UMC204HD und SMSL D200): WAV 24/192 ging als 32-Bit-ASIO
ohne Umwandlung und ohne Aussetzer raus, und die Steuerung per Handy funktioniert.
Das ist die Meldung des Players selbst über den Signalweg; bisher hat noch niemand die
Ausgabe aufgezeichnet und Bit für Bit verglichen. Die Neuerungen in 0.2 sind durch Tests
abgedeckt, liefen aber noch nicht unter Windows. Die Screenshots stammen von der ersten
Version, aus einem macOS-Entwicklungsbuild mit Beispielbibliothek — die Lautstärkeleiste
und der L/R-Schalter sind darauf noch nicht zu sehen.

Der Windows-Build ist ein Zip: Entpacken und `Elfton Player.exe` starten oder das
mitgelieferte `install.ps1` ausführen, das eine Verknüpfung im Startmenü anlegt. Sonst
wird nichts installiert. Für ASIO muss der Treiber deines Wandlers installiert sein; ohne
ihn bietet der Player WASAPI an. Die Fernbedienung fürs Handy gibt es vorerst nur für
Android (APK); die iOS-Version ist im Code fertig, hat aber keinen öffentlichen Build.

Die Engine ist in Go geschrieben und baut auf FFmpeg auf (LGPL, dynamisch gelinkt), die
Oberfläche in Flutter.
