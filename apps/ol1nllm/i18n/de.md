---
tagline: KI-Chat mit Rollen, Bibliothekar und Jurist, ein Studio für Bilder, Video, Märchen, Musik und Stimme
---
Ol1nLLM ist eine App über deinem eigenen Server: Sie plaudert, sucht in einer Bibliothek und in Gesetzen, zeichnet, erweckt ein Bild als Video zum Leben, dreht ein Märchen, komponiert Musik und liest Antworten mit einer aufgenommenen Stimme vor.
Eine ausführliche Anleitung mit Screenshots findest du auf der Seite [Was die App kann](ol1nllm-features.html).

### Chat

Ein Gespräch beginnt mit der Wahl einer **Rolle** — zehn Charaktere vom fünfjährigen Kind bis zum Opa und vier Assistenten mit eigenen Daten. Die Antwort erscheint fortlaufend, ein Gespräch lässt sich **verzweigen** und die Rolle mittendrin wechseln.

- **Bibliothekar** antwortet aus einem Korpus von Philosophie und heiligen Texten in den Originalsprachen und zeigt die Passagen, aus denen er geschöpft hat, mit tschechischer Übersetzung.
- **Jurist** antwortet aus den geltenden Gesetzen Tschechiens und zitiert die Paragrafen.
- **Jurist – Verträge** setzt einen Vertrag nach Vorlage auf: Er fragt Karte für Karte nach und achtet auf die gesetzlichen Grenzen.
- **Leads** sucht Firmen und Institutionen im tschechischen Vertragsregister.

### Image Studio

Ein Bild entsteht in Runden, die einen Baum bilden: Text → Bild, dann Bearbeitungen der gewählten Variante. Neunzehn Modelle (FLUX, SDXL, Anime-Linien), über dreihundert künstlerische **Stile** (Kulturen und Epochen, Künstler, Medien), **Posen**-Vorlagen, **LoRAs** vom Server und ein Negativ-Prompt in Großbuchstaben.

- **Pose beibehalten** und **Gesicht beibehalten** — eine neue Figur in der Haltung der Vorlage, auf Wunsch auch mit deren Gesicht.
- **Stilkarte** — Hunderte Bilder desselben Motivs, nach Ähnlichkeit angeordnet; der Finger gleitet über das Mosaik, der Stil wechselt wie in einer Animation, und der gewählte wird verwendet.
- **Inpaint** — du übermalst einen Bereich und beschreibst, was dort hin soll.
- **Friseur** — neue Frisur oder Haarfarbe, ohne eine Maske zu zeichnen.
- **Bewegen** — aus einem Bild ein kurzes Video: Tänze und Gesten vom Server oder eine eigene Beschreibung der Bewegung.
- **3D** — ein Modell zum Drucken (STL) oder eine tanzende Figur mit Skelett.

### Story Studio

Du wählst ein Märchen aus zehn Drehbüchern, besetzt die Rollen mit eigenen Bildern, und der Server macht daraus ein einminütiges Animationsvideo mit Erzähler, Musik und Untertiteln. Die Einstellungen lassen sich vor der Animation prüfen und misslungene neu zeichnen.

### Music Studio

Gib dem Studio eine Musikprobe — aus einer Datei oder mit dem Mikrofon aufgenommen — und es liest Genre, Tempo und Tonart heraus. **Vibe** komponiert ein neues Stück im gleichen Geist, **Groove** arrangiert das Original in ein anderes Genre um.

### Voice Studio

Aus einer kurzen Aufnahme — auch aus der Tonspur eines Videos — entsteht eine eigene **Stimme**. Jede Stimme lässt sich an einem beliebigen Satz ausprobieren und einer Rolle im Chat zuweisen. Der Lautsprecher unter einer Antwort liest sie dann mit der Stimme dieser Rolle vor.

### Verlauf

Gespräche, Sitzungen, Projekte und Märchen bleiben auf dem Handy. Lange Aufgaben laufen auf dem Server: Du kannst die App schließen, und nach der Rückkehr verbindet sie sich von selbst wieder mit ihnen.

Gebaut mit Flutter, läuft auf Mobilgeräten und Desktop. Die App ist ein Client für deinen eigenen Modellserver; ohne ihn generiert sie nichts.
