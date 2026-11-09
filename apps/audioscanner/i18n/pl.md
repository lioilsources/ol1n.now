---
tagline: Akustyczna mapa pokoju z mikrofonu telefonu
---
Puszczasz z kolumn sygnał testowy, przechodzisz z telefonem przez pokój i w każdym
punkcie mierzone jest widmo. Śledzenie AR rejestruje przy tym, gdzie stoisz.
Wynikiem jest mapa cieplna na rzucie pokoju: gdzie bas dudni, gdzie znika, gdzie
postawić kolumny, a gdzie słuchacza.

**To nie jest zamiennik REW z kalibrowanym mikrofonem.** To narzędzie względne —
różnice między miejscami w jednym pokoju. Bezwzględny SPL z niekalibrowanego
telefonu nie istnieje i aplikacja nigdzie go nie podaje.

### Pomiar

Miernik SPL i RTA w trzydziestu jeden pasmach tercjowych od 20 Hz do 20 kHz,
FFT 8192 z oknem Hanna i uśrednianiem energetycznym. Sygnały testowe eksportujesz
do WAV — szum różowy i sweep logarytmiczny, lewy i prawy kanał osobno.

RTA ma peak hold, ślady maksimum i minimum oraz zamrażanie; zamrożony obraz można
zapisać jako punkt. Da się wczytać plik kalibracyjny mikrofonu (UMIK lub REW)
i offset SPL, ale zapisanych danych nigdy nie zmieniają.

Punkt mierzysz stuknięciem, z trzema sekundami uśredniania, albo pozwalasz
aplikacji mierzyć na bieżąco co pół metra. Z punktów powstaje mapa cieplna IDW
z suwakiem po pasmach i rekomendacja najbardziej wyrównanego miejsca do siedzenia.

Ze sweepu logarytmicznego dekonwolucja Fariny wylicza odpowiedź impulsową:
dźwięk bezpośredni, pierwsze odbicie i charakterystykę częstotliwościową razem
z fazą, z regulowanym oknem bramkowania i wygładzaniem od 1/3 do 1/24 oktawy.
Do tego wybrzmiewanie w oktawach (EDT, T20, T30), C50 i C80, krzywa Schroedera,
wykres impulsu, ETC i spektrogram. Z tego samego sweepu wychodzą też
zniekształcenia HD2 i HD3. Gdy odbicie przychodzi wcześniej, niż impuls
przestaje dzwonić, nie da się go oddzielić — aplikacja woli nie zwrócić nic, niż
uznać listek boczny za ścianę.

Dowolne dwa punkty można porównać, także między sesjami. Na zewnątrz idzie FRD
dla REW i VituixCAD, impulsy i cała sesja w JSON.

### Projekt systemu

Z LiDAR-em pobiera przez RoomPlan geometrię pokoju, sumowaniem modalnym liczy
mody, programowo wykonuje „subwoofer crawl”, metodą lustrzaną znajduje punkty
pierwszych odbić i sprawdza kąty względem zaleceń Dolby. Na tej podstawie potrafi
wygenerować ustawienia dla Integry DRX-8.4 łącznie z jej piętnastoma pasmami EQ.

W miejscu odsłuchu każdy kanał jest mierzony osobnym sweepem. EQ wychodzi
ze średniej punktów wokół słuchacza; pasmo, które różni się między nimi o więcej
niż 6 dB, dostaje tylko połowę korekcji. Tnie się śmiało, podbija ledwo, a powyżej
częstotliwości Schroedera niczego się nie rusza. Podgląd pokazuje stan przed,
cel i przewidywany stan po, krzywą docelową można zmieniać. Drugi pomiar po
wpisaniu EQ do amplitunera pokaże, co jego filtr naprawdę zrobił.

### Co aplikacja mówi otwarcie

Jeden mikrofon nie potrafi zlokalizować źródła, więc zapisywana jest tylko
pozycja telefonu, nigdy jego orientacja jako kierunek dźwięku. Gdy system po cichu
obrabia sygnał — AGC, redukcja szumów, usuwanie echa — warstwa natywna zgłasza,
co faktycznie włączył: pomiar przez AGC nie jest gorszym pomiarem, to pomiar AGC.
Mikrofon Bluetooth jest wykrywany i oznaczany ostrzeżeniem.

### Czego świadomie brakuje

Odtwarzania sygnału z telefonu. Głośnik telefonu kończy się w okolicach 500 Hz,
czyli powyżej każdego modu, którego warto szukać — eksport WAV do porządnego
systemu to jedyna droga, która ma sens.

RoomPlan na Androidzie nie istnieje. Zamiast niego pionowe płaszczyzny z ARCore
składa się w pudełko: widzą ściany, na które patrzyła kamera, rzadko narożniki,
nigdy to, co za meblami. Na nazwanie modu to wystarczy, na punkty odbić już nie —
i geometria niesie tę informację o sobie.

Korekcji fazy, parametrycznego EQ i kilku subwooferów. Amplituner przyjmuje tylko
odległość i piętnaście pasm graficznych; do czegoś więcej potrzebny jest zewnętrzny DSP
i eksport FRD do REW.
