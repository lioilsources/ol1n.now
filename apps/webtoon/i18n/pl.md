---
tagline: Komiksy w pionie, także bez internetu — darmowe historie, gry paragrafowe, w których wybierasz ty, i kadry, które ożywają
visuals: {n} obrazów — kadry z pięciu historii dla dzieci, porównanie dwóch stylów i character sheety.
---
Toonfork (wcześniej roboczo Webtoon) to czytnik komiksów w pionie, który działa także bez internetu. Zaraz po instalacji ma w sobie 15 darmowych historii, bez konta i bez rejestracji. Historie powstają na własnym serwerze GPU: model językowy pisze scenariusz, model obrazowy rysuje kadry, a dymki z tekstem dodaje dopiero czytnik, więc tekst da się poprawić bez generowania obrazu od nowa.

Gotowe paski z pięciu historii dla dzieci są na podstronie Strips, a pętla gry z wyborem na końcu odcinka na podstronie Gamebook.

### Czytnik

Historia to jeden długi pas kadrów z dymkami, myślami, okrzykami i efektami dźwiękowymi, który przewijasz kciukiem z góry na dół. Wybrane kadry ożywają w krótkich pętlach: deszcz na szybie, światło na wodzie, wiatr we włosach. Na końcu odcinka widać, co zostało wybrane, i przycisk **Następny odcinek**. Po ostatnim odcinku pojawia się **Koniec** i propozycja kolejnej historii.

### Gry paragrafowe

W grze paragrafowej o fabule decydujesz sam. Na końcu każdej części wybierasz, co dalej, a historia się rozgałęzia. Aplikacja pamięta, gdzie jesteś, którędy szedłeś i jakie zakończenia znalazłeś; mapa ścieżki pokazuje tylko to, co już odwiedziłeś. Możesz zacząć od nowa albo cofnąć się o krok. Gry paragrafowe są darmowe: dla dzieci **Sara i czarna korona**, dla dorosłych na przykład kameralny dramat w gabinecie psychologa **Nauczyć się milczeć**, **Metalowe niebo nad nami** albo **Rozkwitła łąka, która poszarzała**. Dramaty poruszają trudne tematy, a profil dziecięcy je ukrywa.

W becie jest edytor odgałęzień: do dowolnego wyboru dodajesz własną kontynuację, składasz ją z obrazów gry paragrafowej i piszesz dymki. Odgałęzienie od razu zagrasz i możesz wysłać je autorowi przez udostępnianie, bez żadnego serwera.

### Pakiety

Opcjonalne pakiety dodają do 50 historii: **Romans** (lekkie historie miłosne dla dorosłych, bez scen erotycznych), **Dla dzieci** i **Superbohaterowie**. Pakiet pobiera się po zakupie i czyta offline. Jeden zakup odblokowuje wszystko, także pakiety, które wyjdą później.

### Profil i blokada rodzicielska

Przy pierwszym uruchomieniu wybierasz profil **Dzieci** albo **Dorośli**. Profil dziecięcy ukrywa romanse i dramaty w bibliotece i w sklepie. Każdy zakup i każde przełączenie na Dorośli chroni blokada rodzicielska z działaniem z tabliczki mnożenia.

### 12 języków

Historie, gry paragrafowe i teksty czytnika są w 12 językach: czeskim, angielskim, niemieckim, francuskim, włoskim, polskim, portugalskim brazylijskim, japońskim, koreańskim, wietnamskim, rosyjskim i ukraińskim. Język dymków przełączysz w Ustawieniach.

### Prywatność

Bez konta, bez reklam, bez analityki firm trzecich. Toonfork nie zbiera danych osobowych. Na własny serwer twórcy trafiają tylko anonimowe statystyki użytkowania bez identyfikatorów, możesz je wyłączyć w Ustawieniach, a profil dziecięcy nie wysyła niczego. To, co kupiłeś, pamięta urządzenie, a zakupy przywrócisz w Ustawieniach.

## Studio: jak powstają historie

Druga postać tej samej aplikacji to Studio dla autora. Autor buduje świat: lore, postacie, miejsca i kanon, przez który musi przejść każda historia. W Studiu można też grać interaktywnie: na końcu odcinka czytelnik wybiera, co postać zrobi dalej, albo pisze to własnymi słowami, a z wyboru powstaje kolejny odcinek. Własny tekst najpierw przechodzi moderację; w świecie dla dzieci jest ona surowsza i w razie wątpliwości woli odmówić. Zrzuty ekranu na tej stronie pochodzą ze Studia.

### Edytor świata

Autor ma w aplikacji zakładkę **Twórz**:

- **Podstawy:** tytuł, streszczenie, ton, język, odbiorcy (Dla dzieci, Od 13 lat, Dla dorosłych), widoczność i styl graficzny obowiązujący w całym świecie.
- **Lore i kanon:** zasady świata, frakcje, kanoniczne węzły w stałej kolejności i granice, czyli to, co nie może się wydarzyć.
- **Postacie i lokacje:** opis własnymi słowami. Stałe tagi booru dla modelu obrazowego proponuje na jego podstawie LLM. Tagi, których model nie zna, odpadają według słownika WD14, a autor dopracowuje resztę.
- **Character sheet:** cztery warianty postaci na białym tle. Ten, który najlepiej pasuje do tagów, staje się obrazem referencyjnym.
- **Przegląd:** kampanie, gdzie czytelnicy skończyli, jakie wybory podejmowali i jak daleko doszli w kanonie.

### Modele

- **Scenariusz i moderacja:** Qwen3.6-35B-A3B przez vLLM. Proponuje tagi dla postaci i lokacji, a dla odcinków pisze storyboard (6–8 kadrów, 2–3 wybory i pole na własny tekst). Potem walidator pilnuje postaci, miejsc i zasad świata.
- **Kadry:** SDXL przez ComfyUI. Domyślny jest NoobAI-XL eps 1.1, drugi styl to Hassaku XL (Illustrious) 3.4. Ludzkie postacie rysują tylko te modele.
- **Żywe kadry:** Wan 2.2 robi z gotowego kadru pętlę 1–3 s, najwyżej dwa ruchome kadry na odcinek.
- **Kontrola treści:** tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Sprawdza każdy kadr i zależnie od odbiorców odrzuca go i rysuje od nowa z nowym seedem. Dla dzieci odrzuca dodatkowo obcisłe i odsłaniające ubrania. Ten sam tagger mierzy, czy postać w kadrze odpowiada swojemu projektowi.

Tożsamość postaci utrzymują same tagi. IP-Adapter jest przygotowany, ale w pierwszym pomiarze raczej psuł obraz. Model nie utrzyma dwóch ludzkich postaci w jednym ujęciu, zamienia im włosy i ubrania. Dlatego historie dla dzieci dają każdej postaci osobny kadr.

### Style

Styl to nazwany preset: checkpoint, sampler, liczba kroków, CFG i tagi estetyczne. Autor wybiera go raz dla całego świata. **clean_webtoon_noartist** ma płaskie kolory i czystą linię, **hassaku_soft** miękkie cieniowanie i pastelowe barwy. W wizualizacjach ten sam odcinek jest w obu stylach obok siebie.

### Stan

Toonfork jest w wersji alfa: wersja na Androida jest w Google Play, build na macOS można pobrać z GitHuba, a App Store jest w przygotowaniu. Studio działa tylko z własnym backendem (Go z kolejką zadań w Postgresie) i nie jest publicznie dostępne. Obrazy i teksty powstają na własnym serwerze GPU.

Zrzuty ekranu pochodzą z webowej wersji Studia w szerokości telefonu, z lokalnym backendem. Odcinki 2 mają na nich tylko scenariusz, kadry wciąż czekają na narysowanie. Kod źródłowy jest na [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
