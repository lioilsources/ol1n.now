---
tagline: Eine Fabrik für Roblox-Accessoires — vom Prompt zum 3D-Modell ohne Handmodellierung
---
UGC Factory produziert Avatar-Accessoires für den Roblox Marketplace. Du schreibst, was du willst —
*„ein verzierter Samurai-Helm mit Neon-Akzenten“* — und am anderen Ende kommt ein
texturiertes 3D-Modell heraus, bereit zum Hochladen. Keine Handmodellierung.

## So läuft es

Die Arbeit ist auf drei Maschinen verteilt. Ein **DGX Spark** mit GPU zeichnet das Konzept (Illustrious für Gegenstände,
Juggernaut XL für alles, was am Körper getragen wird — je nach Kategorie), entfernt den Hintergrund und macht aus dem Bild
ein 3D-Modell. Ein **NAS** hält die Warteschlange, den Katalog und ein headless Blender, das das Modell in die
Roblox-Limits bringt — unter 4.000 Dreiecke, UVs, gebackene Textur, der richtige Befestigungspunkt.
Das **Handy** dient zum Sortieren.

Die schnelle Spur (SF3D) baut ein Modell in anderthalb Sekunden, also lässt sich im großen Stil
ausprobieren. Das langsamere, feinere TRELLIS läuft erst beim Verpacken eines Stücks, das dein
Auge passiert hat — die teure Rechenzeit geht nur an das, was du wirklich verkaufen willst.
Filigranes wie Krönchen und Helme geht direkt durch TRELLIS.

## Die App

Der mobile Client ist der Kern des Ganzen. **Composer** schickt einen Batch los — Kategorie × Stil ×
Varianten, gern fünfzig Stück auf einmal. **Warteschlange** zeigt live, was gerade entsteht und
in welcher Phase. **Triage** ist das Wichtigste: ein Stück auf dem Bildschirm, ein Umschalter zwischen
Konzept und drehbarem 3D-Modell, drei Knöpfe — freigeben, ablehnen, mit anderem Seed
neu versuchen. Das geht schneller, als man lesen kann. **Review** zeigt das
konvertierte Stück: Dreieckszahl gegen das Limit, UVs, Geschlossenheit des Meshs,
Textur und das Urteil PASS, WARN oder FAIL. Von hier lässt sich ein Stück neu konvertieren oder
zum Hochladen verpacken. Name, Beschreibungen, Preis und Tags aus der App überschreibt das
Neuverpacken nicht.

Läuft auf Android, iOS, macOS und im Browser. Der Server liefert sie auf seinem eigenen
Origin aus, darum ist die Webversion immer aktuell.

## Rundum verziert

Das Modell entsteht aus einem einzigen Bild, die Rückseite hat also nie jemand gesehen — sie wird
flach und schmucklos. Bei Stücken, die wirklich radialsymmetrisch sind (Torte,
Krone), wird deshalb das vordere Segment rundum kopiert und die Naht verschweißt. Einschalten lässt es sich
im Composer oder bei einem fertigen Stück beim Neukonvertieren, ohne neue Generierung.
Für flache Stücke taugt es nicht — die zerfallen in ein Flickwerk aus Segmenten.

## Kategorien

Am besten gelingen Dinge, die auch in den Trainingsdaten **für sich allein** vorkommen:
Rucksäcke, Handtaschen, Krönchen, Hüte, Torten, Masken, Schilde, Ringe.
Hutkreationen mit Federn und Blumen, gesteppte Handtaschen mit Monogramm, Kronen
mit Perlen und Achaten, Masken nach fünf Kulturen, flauschige Fuchs- und Waschbärschwänze,
Kawaii-Haustiere für die Schulter.

Die Bilder sehen fast immer gut aus — für die Modelle gilt das bei Weitem nicht, und entscheidend
ist das Modell. Kompakte Formen mit Volumen (Rucksack, Torte, Ring) halten gut. Dünne durchbrochene
Strukturen reißen auf der schnellen Spur, deshalb gehen Krönchen direkt den langsameren Weg.
Und gezeichneter Input hat wenig Schatten, daraus wird Relief statt Volumen — pastellfarbene
Tierchen brauchen darum einen Prompt, der weiche Schattierung erzwingt.

Kleidung und Haare sind eine harte Nuss: Das Modell kennt sie nur an einer Figur, also zeichnet es zum Prompt
*„Drachenkleid“* einen Drachen. Es hilft, auf ein fotorealistisches Modell umzuschalten und
es als Produktfoto zu formulieren — *„Kleid auf einer unsichtbaren Schaufensterpuppe“*.

Kleider, Schuhe und Handschuhe behandelt Roblox außerdem als Layered Clothing mit Cage-Mesh,
das die Fabrik noch nicht kann. Für Finger und Hände hat Roblox überhaupt keinen Befestigungspunkt.
