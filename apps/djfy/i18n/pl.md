---
tagline: Deck DJ-a z inteligentną playlistą i trybem imprezy, w którym goście wybierają muzykę z telefonu
---
DJfy to mobilna aplikacja DJ-ska z inteligentnym generowaniem playlist. Wpisujesz wykonawcę, a aplikacja dobiera do niego utwory według tempa i rekomendacji. Potem miksuje je na deckach z pitchem, efektami i crossfaderem.

Integruje **Last.fm** (rekomendacje, scrobbling), **GetSongBPM** (dane BPM) i **SoundCloud** (streaming).

### Tryb imprezy

Na imprezie muzykę zwykle puszcza ten, kto akurat jest przy telefonie, a reszta krzyczy mu prośby do ucha. W DJfy telefon gospodarza staje się konsoletą DJ-a, a głośnik tylko gra. Goście skanują kod QR i otwierają imprezę w przeglądarce. Nie potrzebują aplikacji ani konta, wystarczy imię.

- **Goście proponują i głosują.** Każdy może szukać utworów, dodawać je do kolejki i dawać kciuk w górę lub w dół. Żeby jeden gość nie zajął całej kolejki, może mieć w niej naraz najwyżej trzy utwory.
- **Inteligentna kolejka.** O kolejności nie decyduje tylko liczba głosów. Aplikacja bierze pod uwagę także to, jak długo utwór czeka, czy ten sam wykonawca nie grał przed chwilą i czy tempo pasuje do utworu, który właśnie leci.
- **Mood lock.** Gospodarz ustawia zakres BPM, np. 110–130, a utwory spoza niego trafiają na koniec kolejki. Wieczór trzyma więc tempo, nawet gdy ktoś zaproponuje balladę.
- **Auto-DJ.** Utwory przechodzą jeden w drugi płynnym crossfade’em. Gdy tempa różnią się najwyżej o 8 %, aplikacja w trakcie przejścia zgrywa BPM, a potem wraca do pierwotnej prędkości.
- **Impreza się nie kończy.** Gdy w kolejce zabraknie utworów, aplikacja sama doda kolejny, podobny do ostatnio granych, i oznaczy go jako Auto. Utwory gości zawsze mają pierwszeństwo, a zawetowane już nie wrócą. Można to wyłączyć przełącznikiem obok Auto-DJ.
- **Gospodarz ma ostatnie słowo.** Może zawetować utwór, mianować współ-DJ-a, który może zarządzać kolejką, albo wyrzucić gościa.
- **Dźwięk gdziekolwiek.** Telefon gra na słuchawki, na głośnik przez Bluetooth albo przez AirPlay, na przykład na Sonosa.

Telefon gospodarza trzyma całą imprezę. Mały serwer w Go między nim a gośćmi tylko przekazuje wiadomości i niczego nie zapisuje.

Zbudowana we Flutterze. Działa na telefonie i macOS.
