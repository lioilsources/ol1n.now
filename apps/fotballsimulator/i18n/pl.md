---
tagline: Wolej jednym ruchem palca — gdzie podbicie spotyka piłkę, z jakim podkręceniem i w której milisekundzie
---
Fotball Simulator to symulator jednego jedynego ruchu: woleja. Piłka podskakuje przed tobą, za każdym razem inaczej, a ty jednym ruchem palca kopiesz ją na bramkę. Żadnej drużyny, żadnego meczu, tylko pytanie, gdzie i kiedy podbicie spotka piłkę. Cała reszta, lot, podkręcenie, odbicie i to, czy padnie gol, wynika z tego dzięki fizyce.

### Jeden ruch, cztery decyzje

Na dole ekranu jest duża piłka, a przesunięcie palcem po niej mówi wszystko naraz:

- **Gdzie położysz palec**, tam podbicie trafi piłkę. Poniżej środka piłka się wznosi, powyżej środka wbijasz ją w ziemię, z boku dostaje rotację.
- **Łuk ruchu** to podkręcenie. Im bardziej wygniesz ruch, tym mocniej piłka skręca w locie.
- **Szybkość ruchu** to siła strzału.
- **Chwila, w której puścisz palec**, to moment kontaktu. Wolej ma swoje okno: po odbiciu piłka się wznosi, zatrzymuje i opada, a idealny moment jest wtedy, gdy opada na wysokość podbicia. Gra zna go z góry, bo przy podrzucie od razu przelicza lot piłki.

Odchyłkę mierzy się w milisekundach. Do ±30 ms jest PERFECT, potem GOOD, LATE i EARLY. Za późno to za późno: podbicie trafia opadającą piłkę od góry, ta dostaje topspin i ląduje w ziemi albo nie doleci. Kto w ogóle nie trafi, kopie powietrze.

### Stopklatka i lot

W chwili kontaktu świat na ułamek sekundy się zatrzymuje. Na piłce świeci punkt, w który trafiło podbicie, a strzałka pokazuje, dokąd leci. Na górze pojawia się prędkość w km/h, rotacja w obrotach na sekundę i ocena timingu z dokładną odchyłką. Potem piłka leci, ciągnąc za sobą smugę, więc widać, jak skręca. Wynik to GOL, OBOK albo ZA KRÓTKO, a po chwili przyskakuje kolejna piłka.

Kto potrzebuje więcej czasu, włącza **slow-mo**: po dotknięciu ekranu gra zwalnia, żeby dało się dokończyć ruch. Timing mierzy się jednak w czasie gry, więc spowolnienie nie pomoże w oszukiwaniu.

### Fizyka

Lot piłki to własne obliczenia, a nie fizyka z silnika: grawitacja, opór powietrza, efekt Magnusa (dlatego wirująca piłka skręca) i stopniowe wygasanie rotacji. Odbicie od trawy odbiera wysokość, a rotacja przechodzi przy nim w kierunek. Kontakt uwzględnia prędkość, z jaką piłka nadleciała, więc słabo kopnięta piłka po prostu się odbije, zamiast zawisnąć w powietrzu. Wyniki pilnują automatyczne testy porównujące je z niezależną implementacją referencyjną tego samego modelu w Pythonie.

Gra powstała w Godocie 4.7, a na telefon trafia jej przepisana wersja we Flutterze, z tymi samymi stałymi i tymi samymi testami. Scenę rysuje własna projekcja perspektywiczna, bez silnika 3D.

### Stan

Pierwszy etap jest gotowy: grywalna pętla podrzut, kopnięcie, stopklatka, lot i wynik. Boisko i bramka są na razie proste; brakuje jeszcze nogi, która się zamachnie, siatki, która ugnie się przy golu, i kamery, która poleci za piłką. Potem przyjdzie dopracowanie odczucia gry, heatmapa strzałów na bramkę i statystyki.

APK poniżej to wersja testowa (alfa). Na iPhone'a na razie tylko przez TestFlight dla testerów.
