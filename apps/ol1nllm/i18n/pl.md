---
tagline: Czat AI z rolami, Bibliotekarz i Prawnik, studio do obrazów, wideo, bajek, muzyki i głosu
---
Ol1nLLM to jedna aplikacja nad własnym serwerem: rozmawia, szuka w bibliotece i w ustawach, rysuje, ożywia obrazek w wideo, kręci bajkę, komponuje muzykę i czyta odpowiedzi nagranym głosem.
Szczegółowy przewodnik ze zrzutami ekranu jest na stronie [Co potrafi aplikacja](ol1nllm-features.html).

### Czat

Rozmowa zaczyna się od wyboru **roli** — dziesięć charakterów od pięciolatka po dziadka i czterech asystentów z własnymi danymi. Odpowiedź pisze się na bieżąco, rozmowę można **rozgałęziać**, a rolę zmienić w połowie.

- **Bibliotekarz** odpowiada z korpusu filozofii i tekstów świętych w językach oryginalnych i pokazuje fragmenty, z których czerpał, z czeskim tłumaczeniem.
- **Prawnik** odpowiada z obowiązujących czeskich ustaw i cytuje paragrafy.
- **Prawnik – umowy** sporządza umowę z szablonu: dopytuje karta po karcie i pilnuje ustawowych limitów.
- **Leads** szuka firm i instytucji w czeskim Rejestrze umów.

### Image Studio

Obraz powstaje w rundach, które tworzą drzewo: tekst → obraz, potem poprawki wybranego wariantu. Dziewiętnaście modeli (FLUX, SDXL, linie anime), ponad trzysta **stylów** artystycznych (kultury i epoki, artyści, techniki), szablony **póz**, **LoRA** z serwera i negatywny prompt pisany wielkimi literami.

- **Zachowaj pozę** i **Zachowaj twarz** — nowa postać w pozie z wzoru, opcjonalnie także z jego twarzą.
- **Mapa stylów** — setki obrazów tego samego motywu ułożonych według podobieństwa; palec sunie po mozaice, a styl zmienia się jak animacja, wybrany zostaje użyty.
- **Inpaint** — zamalowujesz obszar i opisujesz, co ma się w nim znaleźć.
- **Fryzjer** — nowa fryzura albo kolor włosów bez rysowania maski.
- **Ożyw** — krótkie wideo z obrazka: tańce i gesty z serwera albo własny opis ruchu.
- **3D** — model do druku (STL) albo tańcząca figurka ze szkieletem.

### Story Studio

Wybierasz bajkę z dziesięciu scenariuszy, obsadzasz role własnymi obrazkami, a serwer robi z niej minutowe animowane wideo z narratorem, muzyką i napisami. Ujęcia można sprawdzić przed animacją, a nieudane dać do przerysowania.

### Music Studio

Daj studiu próbkę muzyki — z pliku albo nagraną mikrofonem — a ono odczyta z niej gatunek, tempo i tonację. **Vibe** skomponuje nowy utwór w tym samym duchu, **Groove** zaaranżuje oryginał na inny gatunek.

### Voice Studio

Z krótkiego nagrania — nawet ze ścieżki dźwiękowej wideo — powstaje własny **głos**. Każdy głos można wypróbować na dowolnym zdaniu i przypisać roli w czacie. Głośnik pod odpowiedzią przeczyta ją wtedy głosem tej roli.

### Historia

Rozmowy, sesje, projekty i bajki zostają w telefonie. Długie zadania działają na serwerze: aplikację można zamknąć, a po powrocie sama się do nich podłączy.

Zbudowana we Flutterze, działa na telefonie i komputerze. Aplikacja jest klientem własnego serwera z modelami; bez niego nic nie generuje.
