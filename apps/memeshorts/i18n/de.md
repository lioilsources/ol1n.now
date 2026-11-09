---
tagline: Vertikale Shorts aus Meme-Vorlagen – mit eigenen Figuren
visuals: {n} Porträts aus der Figurenbibliothek – vier Figuren, jede in zwölf Emotionen.
---
Ein Kommandozeilen-Tool, das aus einer Meme-Vorlage einen sechs- bis fünfzehnsekündigen vertikalen Short macht. Das Original-Meme dient nur als Vorlage für den Aufbau des Witzes – in die Ausgabe gelangt es nie. Stattdessen spielen eigene Figuren.

Eine Figur lässt sich weder mit einem Prompt noch mit einem Seed konstant halten, deshalb werden die Bilder nicht für jeden Short neu erzeugt. Sie entstehen einmal als freigegebene Bibliothek *Figur × Emotion*: Kiro, Mei, Taro und Yuki, jede in zwölf Gesichtsausdrücken von Selbstgefälligkeit bis Erschöpfung.

Der Short durchläuft dann die Pipeline `classify → storyboard → generate → animate → compose → qa`. Jeder Schritt wird einzeln gespeichert und über einen Hash seiner Optionen verschlüsselt, ein erneuter Lauf kostet also nichts, und eine Textänderung berechnet nur neu, was nötig ist. Den Witz schreibt ein LLM, oder du gibst ihn selbst ein; die Untertitel werden direkt in Go gerendert.

Die Ausgabe: 1080×1920, H.264, 30 fps, Lautheit −14 LUFS und die Kennzeichnung „AI generated“ im Bild und in den Metadaten.

Bisher läuft es nur lokal und hat keine veröffentlichte Version, hier gibt es also nichts herunterzuladen.
Geschrieben in Go, die Bilder erzeugt FLUX.1-schnell auf meinem eigenen Rechner.
