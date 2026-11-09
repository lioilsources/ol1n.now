---
tagline: Volley mit einem einzigen Wisch — wo der Spann den Ball trifft, mit wie viel Effet und in welcher Millisekunde
---
Fotball Simulator simuliert eine einzige Bewegung: den Volley. Der Ball springt vor dir auf, jedes Mal anders, und mit einem Wisch deines Fingers kickst du ihn aufs Tor. Kein Team, kein Spiel, nur die Frage, wo und wann dein Spann den Ball trifft. Alles andere, Flug, Effet, Aufsprung und ob es ein Tor wird, ergibt sich daraus durch Physik.

### Ein Wisch, vier Entscheidungen

Unten auf dem Bildschirm liegt ein großer Ball, und ein Wisch darüber sagt alles auf einmal:

- **Wo du den Finger ansetzt**, dort trifft der Spann den Ball. Unter der Mitte steigt der Ball, über der Mitte drückst du ihn in den Boden, von der Seite bekommt er Drall.
- **Der Bogen des Wischs** ist der Effet. Je stärker du den Wisch krümmst, desto mehr dreht sich der Ball im Flug ab.
- **Die Geschwindigkeit des Wischs** ist die Schusskraft.
- **Der Moment, in dem du loslässt**, ist der Moment des Kontakts. Ein Volley hat ein Zeitfenster: Nach dem Aufsprung steigt der Ball, bleibt stehen und fällt, und der ideale Moment ist, wenn er auf Spannhöhe sinkt. Das Spiel kennt ihn im Voraus, weil es beim Zuwurf den Flug des Balls vorausberechnet.

Die Abweichung wird in Millisekunden gemessen. Bis ±30 ms ist es PERFECT, dann GOOD, LATE und EARLY. Zu spät ist zu spät: Der Spann trifft den fallenden Ball von oben, der bekommt Topspin und landet im Boden oder kommt nicht an. Wer gar nicht trifft, tritt ins Leere.

### Freeze-Frame und Flug

Im Moment des Kontakts bleibt die Welt für einen Sekundenbruchteil stehen. Auf dem Ball leuchtet der Punkt, an dem der Spann ihn getroffen hat, und ein Pfeil zeigt, wohin er fliegt. Oben erscheinen die Geschwindigkeit in km/h, der Drall in Umdrehungen pro Sekunde und die Timing-Bewertung mit der genauen Abweichung. Dann fliegt der Ball mit einer Spur hinter sich, sodass man sieht, wie er sich abdreht. Das Ergebnis ist TOR, DANEBEN oder ZU KURZ, und kurz darauf springt der nächste Ball heran.

Wer mehr Zeit braucht, schaltet **Slow-Mo** ein: Sobald der Finger den Bildschirm berührt, wird das Spiel langsamer, damit du den Wisch zu Ende ziehen kannst. Das Timing wird aber in Spielzeit gemessen, also hilft die Zeitlupe nicht beim Schummeln.

### Physik

Der Ballflug ist eine eigene Berechnung, keine Engine-Physik: Schwerkraft, Luftwiderstand, Magnus-Effekt (deshalb dreht sich ein rotierender Ball ab) und allmählich nachlassender Drall. Der Aufsprung auf dem Rasen kostet Höhe, und der Drall geht dabei in die Richtung über. Der Kontakt berücksichtigt, mit welcher Geschwindigkeit der Ball ankam, sodass ein schwach getretener Ball einfach abprallt, statt in der Luft zu hängen. Die Ergebnisse sichern automatische Tests gegen eine unabhängige Referenzimplementierung desselben Modells in Python ab.

Das Spiel entstand in Godot 4.7, aufs Handy kommt seine Neufassung in Flutter mit denselben Konstanten und denselben Tests. Die Szene zeichnet eine eigene perspektivische Projektion, ohne 3D-Engine.

### Stand

Die erste Phase ist fertig: eine spielbare Schleife aus Zuwurf, Schuss, Freeze-Frame, Flug und Ergebnis. Platz und Tor sind vorerst einfach; es fehlen noch ein Bein, das ausholt, ein Netz, das sich beim Tor wölbt, und eine Kamera, die dem Ball folgt. Danach kommen das Feintuning des Spielgefühls, eine Heatmap der Schüsse aufs Tor und Statistiken.

Die APK unten ist ein Testbuild (Alpha). Aufs iPhone vorerst nur über TestFlight für Tester.
