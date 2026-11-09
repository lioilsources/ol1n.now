---
tagline: Hochformat-Comics, auch ohne Internet — kostenlose Geschichten, Spielbücher, in denen du entscheidest, und Panels, die lebendig werden
visuals: {n} Bilder — Panels aus fünf Kindergeschichten, ein Vergleich zweier Stile und Character Sheets.
---
Toonfork (Arbeitstitel Webtoon) ist ein Comic-Reader im Hochformat, der auch ohne Internet funktioniert. Nach der Installation sind 15 kostenlose Geschichten dabei, ohne Konto und ohne Registrierung. Die Geschichten entstehen auf einem eigenen GPU-Server: Ein Sprachmodell schreibt das Drehbuch, ein Bildmodell zeichnet die Panels, und die Sprechblasen mit Text setzt erst der Reader ein. So lässt sich der Text korrigieren, ohne das Bild neu zu generieren.

Fertige Strips aus fünf Kindergeschichten findest du auf der Unterseite Strips, die Spielschleife mit einer Wahl am Ende der Folge auf der Unterseite Gamebook.

### Reader

Eine Geschichte ist ein langer Streifen aus Panels mit Sprechblasen, Gedanken, Ausrufen und Soundeffekten, den du mit dem Daumen von oben nach unten scrollst. Ausgewählte Panels werden in kurzen Loops lebendig: Regen am Fenster, Licht auf dem Wasser, Wind im Haar. Am Ende der Folge siehst du, was gewählt wurde, und den Button **Nächste Folge**. Nach der letzten Folge kommt **Ende** und ein Vorschlag für die nächste Geschichte.

### Spielbücher

Im Spielbuch bestimmst du die Handlung. Am Ende jedes Teils wählst du, wie es weitergeht, und die Geschichte verzweigt sich. Die App merkt sich, wo du bist, welchen Weg du gegangen bist und welche Enden du gefunden hast; die Wegkarte zeigt nur, was du schon besucht hast. Du kannst neu anfangen oder einen Schritt zurückgehen. Spielbücher sind kostenlos: für Kinder **Sara und die schwarze Krone**, für Erwachsene zum Beispiel das Kammerspiel in einer psychologischen Praxis **Schweigen lernen**, **Metallhimmel über uns** oder **Die blühende Wiese, die grau wurde**. Die Dramen greifen schwere Themen auf, und das Kinderprofil blendet sie aus.

In der Beta gibt es einen Zweig-Editor: Zu jeder beliebigen Wahl fügst du eine eigene Fortsetzung hinzu, stellst sie aus den Bildern des Spielbuchs zusammen und schreibst die Sprechblasen. Den Zweig spielst du sofort und kannst ihn über Teilen an den Autor schicken, ganz ohne Server.

### Pakete

Optionale Pakete bringen bis zu 50 Geschichten: **Romantik** (leichte Liebesgeschichten für Erwachsene, ohne explizite Szenen), **Für Kinder** und **Superhelden**. Ein Paket wird nach dem Kauf heruntergeladen und offline gelesen. Ein Kauf schaltet alles frei, auch Pakete, die später erscheinen.

### Profil und Elternsperre

Beim ersten Start wählst du das Profil **Kinder** oder **Erwachsene**. Das Kinderprofil blendet Romantik und Dramen in der Bibliothek und im Shop aus. Jeden Kauf und jeden Wechsel zu Erwachsene schützt eine Elternsperre mit einer Einmaleins-Aufgabe.

### 12 Sprachen

Geschichten, Spielbücher und die Texte des Readers gibt es in 12 Sprachen: Tschechisch, Englisch, Deutsch, Französisch, Italienisch, Polnisch, brasilianisches Portugiesisch, Japanisch, Koreanisch, Vietnamesisch, Russisch und Ukrainisch. Die Sprache der Sprechblasen stellst du in den Einstellungen um.

### Datenschutz

Kein Konto, keine Werbung, kein Tracking. Toonfork sammelt keine persönlichen Daten; was du gekauft hast, merkt sich das Gerät, und Käufe lassen sich in den Einstellungen wiederherstellen.

## Studio: So entstehen die Geschichten

Die zweite Form derselben App ist das Studio für Autoren. Der Autor baut eine Welt: Lore, Figuren, Orte und einen Kanon, den jede Geschichte durchlaufen muss. Im Studio lässt sich auch interaktiv spielen: Am Ende der Folge wählt der Leser, was die Figur als Nächstes tut, oder schreibt es in eigenen Worten, und aus der Wahl entsteht die nächste Folge. Eigener Text geht zuerst durch die Moderation; in einer Kinderwelt ist sie strenger und lehnt im Zweifel lieber ab. Die Screenshots auf dieser Seite stammen aus dem Studio.

### Welt-Editor

Der Autor hat in der App den Tab **Erstellen**:

- **Grundlagen:** Titel, Synopsis, Ton, Sprache, Publikum (Für Kinder, Ab 13, Für Erwachsene), Sichtbarkeit und ein Zeichenstil, der für die ganze Welt gilt.
- **Lore und Kanon:** Regeln der Welt, Fraktionen, kanonische Knoten in fester Reihenfolge und Leitplanken, also was nicht passieren darf.
- **Figuren und Orte:** eine Beschreibung in eigenen Worten. Feste Booru-Tags für das Bildmodell schlägt daraus ein LLM vor. Tags, die das Modell nicht kennt, fliegen anhand des WD14-Wortschatzes raus, und der Autor feilt sie nach.
- **Character Sheet:** vier Varianten der Figur auf weißem Hintergrund. Die, die den Tags am besten entspricht, wird zum Referenzbild.
- **Übersicht:** Kampagnen, wo die Leser aufgehört haben, welche Optionen sie gewählt haben und wie weit sie im Kanon gekommen sind.

### Modelle

- **Drehbuch und Moderation:** Qwen3.6-35B-A3B über vLLM. Für Figuren und Orte schlägt es Tags vor, für Folgen schreibt es das Storyboard (6–8 Panels, 2–3 Optionen und ein Feld für eigenen Text). Ein Validator prüft danach Figuren, Orte und Regeln der Welt.
- **Panels:** SDXL über ComfyUI. Standard ist NoobAI-XL eps 1.1, der zweite Stil Hassaku XL (Illustrious) 3.4. Menschliche Figuren zeichnen nur diese Modelle.
- **Lebendige Panels:** Wan 2.2 macht aus einem fertigen Panel einen Loop von 1–3 s, höchstens zwei bewegte Panels pro Folge.
- **Inhaltsprüfung:** der Tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Er prüft jedes Panel und verwirft es je nach Publikum und zeichnet es mit neuem Seed neu. Für Kinder lehnt er zusätzlich enge und freizügige Kleidung ab. Derselbe Tagger misst, ob eine Figur im Panel ihrem Design entspricht.

Die Identität der Figur halten allein die Tags. IP-Adapter ist vorbereitet, hat das Bild in der ersten Messung aber eher zerstört. Das Modell hält keine zwei menschlichen Figuren in einer Einstellung, es vertauscht ihnen Haare und Kleidung. Die Kindergeschichten geben deshalb jeder Figur ein eigenes Panel.

### Stile

Ein Stil ist ein benanntes Preset: Checkpoint, Sampler, Schrittzahl, CFG und ästhetische Tags. Der Autor wählt ihn einmal für die ganze Welt. **clean_webtoon_noartist** hat flache Farben und eine saubere Linie, **hassaku_soft** weiche Schattierung und Pastellfarben. In den Visuals steht dieselbe Folge in beiden Stilen nebeneinander.

### Stand

Toonfork ist in der Alpha: Builds für macOS und Android gibt es auf GitHub zum Download, App Store und Google Play sind in Vorbereitung. Das Studio läuft nur gegen das eigene Backend (Go mit einer Job-Queue in Postgres) und ist nicht öffentlich zugänglich. Bilder und Texte entstehen auf einem eigenen GPU-Server.

Die Screenshots stammen aus der Web-Version des Studios in Handybreite gegen ein lokales Backend. Folge 2 hat darauf nur ein Drehbuch, die Panels warten noch aufs Zeichnen. Der Quellcode liegt auf [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
