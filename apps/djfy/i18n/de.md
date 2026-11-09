---
tagline: Ein DJ-Deck mit smarter Playlist und Party-Modus, in dem die Gäste die Musik am Handy auswählen
---
DJfy ist eine mobile DJ-App mit smarter Playlist-Erstellung. Du gibst einen Interpreten ein, und die App stellt passend dazu Tracks nach Tempo und Empfehlungen zusammen. Dann mischt sie sie auf Decks mit Pitch, Effekten und Crossfader.

Sie bindet **Last.fm** (Empfehlungen, Scrobbling), **GetSongBPM** (BPM-Daten) und **SoundCloud** (Streaming) ein.

### Party-Modus

Auf Partys legt meist auf, wer gerade am Handy ist, und alle anderen brüllen ihm ihre Wünsche ins Ohr. Mit DJfy wird das Handy des Gastgebers zum DJ-Pult, und der Lautsprecher spielt nur noch. Die Gäste scannen einen QR-Code und öffnen die Party im Browser. Sie brauchen weder App noch Konto, ein Name genügt.

- **Gäste schlagen vor und stimmen ab.** Jeder kann Tracks suchen, sie in die Warteschlange stellen und Daumen hoch oder runter geben. Damit nicht ein Gast die ganze Warteschlange belegt, darf jeder höchstens drei Tracks gleichzeitig darin haben.
- **Smarte Warteschlange.** Die Reihenfolge hängt nicht nur von den Stimmen ab. Die App berücksichtigt auch, wie lange ein Track schon wartet, ob derselbe Interpret gerade erst lief und ob das Tempo zum laufenden Track passt.
- **Mood lock.** Der Gastgeber legt einen BPM-Bereich fest, etwa 110–130, und Tracks außerhalb davon wandern ans Ende der Warteschlange. So hält der Abend sein Tempo, auch wenn jemand eine Ballade vorschlägt.
- **Auto-DJ.** Die Tracks gehen mit einem weichen Crossfade ineinander über. Weichen die Tempi um höchstens 8 % ab, gleicht die App die BPM während des Übergangs an und kehrt dann zur ursprünglichen Geschwindigkeit zurück.
- **Die Party hört nicht auf.** Geht der Warteschlange der Nachschub aus, fügt die App selbst einen weiteren Track hinzu, ähnlich den zuletzt gespielten, und markiert ihn als Auto. Tracks der Gäste haben immer Vorrang, und per Veto entfernte kommen nicht zurück. Abschalten lässt sich das mit dem Schalter neben Auto-DJ.
- **Der Gastgeber hat das letzte Wort.** Er kann einen Track per Veto streichen, einen Co-DJ ernennen, der in die Warteschlange eingreifen darf, oder einen Gast rauswerfen.
- **Sound überallhin.** Das Handy spielt auf Kopfhörer, per Bluetooth auf einen Lautsprecher oder per AirPlay zum Beispiel auf Sonos.

Das Handy des Gastgebers hält die ganze Party zusammen. Ein kleiner Go-Server zwischen ihm und den Gästen leitet nur Nachrichten weiter und speichert nichts.

Gebaut mit Flutter. Läuft auf Mobilgeräten und macOS.
