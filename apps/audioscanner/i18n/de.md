---
tagline: Eine akustische Karte deines Raums aus dem Handymikrofon
---
Du spielst über die Boxen ein Testsignal ab, gehst mit dem Handy durch den Raum,
und an jedem Punkt wird das Spektrum gemessen. AR-Tracking verfolgt dabei, wo du
stehst. Das Ergebnis ist eine Grundriss-Heatmap: wo der Bass dröhnt, wo er
verschwindet, wohin die Boxen gehören und wohin der Hörplatz.

**Kein Ersatz für REW mit kalibriertem Mikrofon.** Es ist ein relatives
Werkzeug — Unterschiede zwischen Stellen in einem Raum. Absoluten SPL aus einem
unkalibrierten Handy gibt es nicht, und die App behauptet ihn nirgends.

### Messen

SPL-Meter und RTA in einunddreißig Terzbändern von 20 Hz bis 20 kHz, FFT 8192
mit Hann-Fenster und energetischer Mittelung. Testsignale lassen sich als WAV
exportieren — rosa Rauschen und logarithmischer Sweep, linker und rechter Kanal
getrennt.

Der RTA kann Peak Hold, Maximum- und Minimum-Kurven und Einfrieren; ein
eingefrorenes Bild lässt sich als Punkt speichern. Eine Mikrofon-Kalibrierdatei
(UMIK oder REW) und ein SPL-Offset lassen sich laden, gespeicherte Daten ändern
sie aber nie.

Einen Punkt misst du per Tippen mit drei Sekunden Mittelung, oder du lässt die
App laufend alle halben Meter messen. Aus den Punkten entsteht eine IDW-Heatmap
mit Schieberegler über die Bänder und eine Empfehlung für den linearsten
Sitzplatz.

Aus dem Log-Sweep berechnet die Farina-Entfaltung die Impulsantwort: Direktschall,
erste Reflexion und Frequenzgang samt Phase, mit einstellbarem Gating-Fenster
und Glättung von 1/3 bis 1/24 Oktave. Dazu Nachhall pro Oktave (EDT, T20, T30),
C50 und C80, Schroeder-Kurve, Impulsdiagramm, ETC und Spektrogramm. Aus demselben
Sweep ergeben sich auch die Verzerrungen HD2 und HD3. Liegt eine Reflexion
näher, als der Impuls nachschwingt, lässt sie sich nicht trennen — dann liefert
die App lieber nichts, als eine Nebenkeule zur Wand zu erklären.

Zwei beliebige Punkte lassen sich vergleichen, auch über Sessions hinweg.
Exportiert werden FRD für REW und VituixCAD, Impulse und die ganze Session als
JSON.

### Planung der Anlage

Mit LiDAR holt sie sich über RoomPlan die Raumgeometrie, berechnet die Moden per
Modalsummation, fährt softwareseitig einen „Subwoofer Crawl“ ab, findet per
Spiegelung die Punkte der ersten Reflexionen und prüft die Winkel gegen Dolby.
Daraus kann sie Einstellungen für den Integra DRX-8.4 erzeugen, inklusive seiner
fünfzehn EQ-Bänder.

Am Hörplatz wird jeder Kanal einzeln per Sweep gemessen. Der EQ geht vom
Mittelwert der Punkte rund um den Hörplatz aus; ein Band, das zwischen ihnen um
mehr als 6 dB abweicht, bekommt nur die halbe Korrektur. Abgesenkt wird
großzügig, angehoben kaum, und oberhalb der Schroeder-Frequenz wird nichts
angefasst. Die Vorschau zeigt vorher, Ziel und erwartetes Nachher, die
Zielkurve ist anpassbar. Eine zweite Messung, nachdem du den EQ in den Receiver
eingetragen hast, zeigt, was sein Filter tatsächlich getan hat.

### Was die App offen sagt

Ein einzelnes Mikrofon kann keine Quelle orten, deshalb wird nur die Position
des Handys gespeichert, nie seine Ausrichtung als Schallrichtung. Wenn das System
das Signal stillschweigend bearbeitet — AGC, Rauschunterdrückung,
Echounterdrückung —, meldet die native Schicht zurück, was tatsächlich aktiv
ist: Eine Messung durch AGC ist keine schlechtere Messung, sie ist eine Messung
der AGC. Ein Bluetooth-Mikrofon wird erkannt und gemeldet.

### Was bewusst fehlt

Signalwiedergabe vom Handy. Der Handylautsprecher hört um 500 Hz auf, also
oberhalb jeder Mode, nach der sich zu suchen lohnt — WAV-Export auf eine
ordentliche Anlage ist der einzige Weg, der Sinn ergibt.

RoomPlan gibt es auf Android nicht. Stattdessen werden vertikale Ebenen aus
ARCore zu einer Box zusammengesetzt: Sie sehen die Wände, auf die die Kamera
geschaut hat, selten die Ecken, nie hinter Möbel. Um eine Mode zu benennen,
reicht das, für Reflexionspunkte nicht — und die Geometrie trägt diese Angabe
über sich selbst mit.

Phasenkorrektur, parametrischer EQ und mehrere Subwoofer. Der Receiver nimmt nur
Abstand und fünfzehn grafische Bänder; für mehr braucht es einen externen DSP
und den FRD-Export nach REW.
