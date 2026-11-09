---
tagline: Voxel-Dogfight zwischen schwebenden Himmelsinseln (eigenständiges Spiel für Luanti)
---
Du bist der Kampfjet. Nicht der Pilot darin — die Maschine selbst. In
DoggioWars wird nicht gelaufen, nichts abgebaut und nichts gebaut: Ab der
ersten Sekunde fliegst du.

Unter dir erstreckt sich ein Himmel voller **schwebender Inseln** in zwölf
Biomen — Vulkane, aus deren Krater Lava quillt, Gletscher-Mesas mit Eiszapfen,
Atoll-Lagunen, Riesenpilze, leuchtende Kristalltürme. Sie werden aus einer Zahl
erzeugt, die man Seed nennt, darum gleicht keine Welt der anderen, und die
Inseln sind **zerstörbar**: Deine Schüsse brechen Stücke heraus, die dann ins
Leere stürzen.

### Wer hier herumfliegt

Der Himmel ist nicht leer. Um ihre Inseln kreisen **Schlangendrachen** aus fünf
Elementen — Feuer über Vulkanen und Asche, Eis über Gletschern, Wasser über
Atollen, Schlamm über Sümpfen und Elektrizität über Kristallen. Durch die
Wüsten tauchen **Sandwürmer** wie Delfine, über kargen Inseln wacht ein
**Steinwächter**, über den grünen schweben leuchtende **Quallen**, und mit
etwas Glück begegnest du einem **Himmelswal**. Alle sind vorerst friedlich:
Sie tun dir nichts und du ihnen auch nicht. Derselbe Seed ergibt dieselbe
Besetzung.

Die Taste **Z** oder der Befehl `/map` öffnet eine bildschirmfüllende
Weltkarte: Inseln nach Biom eingefärbt, Punkte für die Kreaturen und dein
Schiff mit Flugrichtung.

### Zwei Maschinen in einer

Umgeschaltet wird mit dem Befehl `/mode`, und beide fliegen völlig
unterschiedlich.

Das **U-Boot** ist der Standard und verzeiht Fehler. Es schwebt auf der
Stelle — lässt du die Steuerung los, bremst es sanft ab, sodass du dir in Ruhe
eine Insel ansehen oder millimeterweise zwischen Felsen manövrieren kannst. Es
kann auch seitlich ausweichen, ohne den Kurs zu ändern.

Der **Jäger** hält nie an. Er hält die Geschwindigkeit, die du ihm gibst, und
kurvt per **Querneigung** — der linke Stick legt ihn auf die Tragfläche, und
die Nase dreht von selbst ein, umso williger, je steiler du hängst. Ein steiler
Sturzflug treibt ihn über die Höchstgeschwindigkeit, Steigen kostet dagegen
Tempo, sodass du ständig Höhe gegen Geschwindigkeit tauschst. Er beherrscht
Fassrolle, Looping und Immelmann-Turn — und knapp an einem Felsen vorbeizufliegen
lädt den Boost auf, Risiko lohnt sich also.

### Jagd auf den goldenen Hasen

Der Befehl `/race` startet ein Windhundrennen: Ein goldener Hase jagt über den
Himmel, kann dieselben Tricks wie du, schlängelt sich durch Tunnel, die quer
durch die Inseln gebohrt sind, und wartet nicht. Entweder bleibst du die ganze
Strecke an ihm dran, oder eben nicht.

### Steuerung

Maus und Tastatur funktionieren, aber das Spiel ist für ein **Gamepad**
gemacht — Xbox 360 und PS4 DualShock über die native Joystick-Unterstützung
von Luanti, kein externer Mapper. Der linke Stick steuert das Flugzeug, der
rechte zielt mit der Waffe, unabhängig davon, wohin du fliegst. Quer- und
Längsneigung zeigt eine Wasserwaage im HUD, weil Luanti den Horizont nicht
kippen kann.

### Twitch-Chat

Das Spiel hat eine optionale Twitch-Anbindung über den Dienst
[chatbridge](https://github.com/lioilsources/chatbridge): Zuschauer rufen mit
Chat-Befehlen (`!drak`, `!velryba`, `!meduzy`…) Kreaturen in die Welt des
Streamers. Der Chat kann nur Kreaturen hinzufügen, die hinter sich aufräumen,
das Gelände rührt er nicht an, und `/chatoff` schaltet ihn sofort ab. Ohne
Einstellungen in `minetest.conf` ist die Anbindung aus.

### Installation

Du brauchst **Luanti 5.12 oder neuer** und **sonst nichts** — seit Version 2.0
ist DoggioWars ein eigenständiges Spiel, keine Mod, Minetest Game wird also
nicht mehr gebraucht.

Entpacke das Archiv in den Ordner `games/` in deinem Luanti-Datenverzeichnis.
Unter Windows ist das `%APPDATA%\Minetest\games\`, bei der portablen Zip-Version
`games\` direkt im Spielordner. Unter macOS
`~/Library/Application Support/minetest/games/`, unter Linux `~/.minetest/games/`.

Der entpackte Ordner muss **`doggiowars_game`** heißen. Dann starte Luanti,
wähle in der unteren Leiste des Hauptmenüs DoggioWars und klicke auf **New**.

Wer noch eine ältere Version als **Mod** im Ordner `mods/` hat, sollte sie
löschen — seit Version 2.0 ist es ein Spiel, und beides gleichzeitig ergibt
keinen Sinn.
