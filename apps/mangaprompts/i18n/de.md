---
tagline: Telegram-Bot für Manga aus Bausteinen, Foto-Restyle, neue Frisur und Foto-Animation
---
TsumikiMangaBot (früher MangaPrompts) baut Prompts für KI-Bildgenerierung
im LEGO-Prinzip — du wählst Bausteine auf rund fünfundzwanzig Achsen (Medium,
Kunsttradition, Kopfstil, Manga-Stil, historische Epoche) und daraus entsteht
ein kompletter Prompt. Dabei bleibt es nicht: Der Prompt geht direkt in die
Generierung und das Bild kommt zu dir zurück.

### Weitere Karten

Neben dem Baukasten hat die Mini App einen Kartenumschalter:

- **Foto-Restyle** — du lädst ein Foto hoch, wählst einen Stil und bekommst
  dieselbe Person in derselben Pose in diesem Stil. Mit dem Schalter Foto /
  Illustration wählst du das Medium, es gibt über neunzig Stile in sechs
  Gruppen (beliebt, Maler, Kunsttraditionen nach Regionen).
- **Frisur ausprobieren** — zeichnet auf einem Porträt nur die Haare neu,
  auf Wunsch auch mit neuer Farbe. Jede Frisur hat eine Vorschau auf demselben
  Gesicht, so vergleichst du nur die Haare.
- **Foto zum Leben erwecken** — aus einem Foto und einer gewählten Szene
  entsteht ein kurzes Video, das in den Chat kommt.

### So legst du los

Nichts zu installieren, es läuft als Telegram Mini App:

1. Öffne in Telegram [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) —
   oder such ihn unter dem Namen **Tsumiki**.
2. Schreib `/start`. Der Bot antwortet mit dem Button **🎨 Open Tsumiki**.
3. Tipp darauf, setz die Bausteine zusammen und starte die Generierung.

Das fertige Bild erscheint direkt in der App **und kommt zugleich in den
Chat**, so hast du es im Verlauf und kannst es sofort weiterleiten. Wenn du
`/start` überspringst und die App direkt öffnest, funktioniert die Generierung
auch — nur kommt das Bild nicht im Chat an, weil Telegram einem Bot nicht
erlaubt, zuerst zu schreiben.

### Was es kostet

**Drei Generierungen gratis alle 24 Stunden.** Danach gilt 1 Credit = 1 Bild,
und Credits kaufst du mit **Telegram Stars** direkt in der App — 10 Credits
für 25 ⭐, 50 für 100 ⭐, 250 für 400 ⭐. Restyle und Frisur kosten so viel wie
ein Bild, die Frisur erst, nachdem die Analyse das Foto akzeptiert hat.
Animationen haben einen eigenen Zähler: eine pro Tag gratis, weitere für 10 ⭐.
Schlägt eine Generierung fehl, bekommst du den Credit zurück. Bei Problemen
mit der Zahlung hilft der Befehl `/paysupport`, Rückerstattungen erledige ich
innerhalb von 48 Stunden.

### Unter der Haube

Die Mini App ist Flutter Web auf Cloudflare Pages. Der Prompt geht von dort an
ein Backend (FastAPI + aiogram) auf einem NAS zu Hause und weiter an
**ComfyUI** — je nach gewählter Vorlage wird der Workflow ausgesucht (FLUX,
Pony, Juggernaut XL Lightning oder WAI Illustrious). Restyle hält das Gesicht
mit PuLID oder InstantID und die Pose mit Depth ControlNet, die Animation läuft
auf Wan 2.2. Credits und Zahlungen liegen in SQLite auf dem Backend.

### Native Apps

Die Builds unten für macOS, Windows, Linux, Android und iOS sind der komplette
Prompt-Baukasten und haben zusätzlich den Modus **Repose**, den es in Telegram
nicht gibt: Du lädst ein Gesicht hoch, wählst eine Pose, und die App erzeugt
ein Bild dieser Person in dieser Pose mit originalgetreuem Gesicht (InstantID +
Depth ControlNet + Hi-Res + FaceDetailer). Repose spricht aber direkt mit
ComfyUI, die native App muss es also erreichen können.

Gebaut mit Flutter.
