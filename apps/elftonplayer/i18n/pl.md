---
tagline: Odtwarzacz bit-perfect dla DAC-ów USB — plik, RAM, ASIO i nic pomiędzy
---
Elfton Player to odtwarzacz muzyki lokalnej dla Windows 11, który ma jeden
priorytet: żeby do DAC-a USB trafiły dokładnie te próbki, które są w pliku.
Droga sygnału to **plik → dekoder → RAM → ASIO → DAC**. Żadnej regulacji
głośności, żadnego korektora, żadnego resamplingu, żadnego streamingu.
Głośność ustawiasz na przetworniku albo wzmacniaczu.

### Co potrafi

- **Wyjście bit-perfect** przez ASIO lub WASAPI w trybie wyłącznym. Obok utworu
  widać cały tor (`FLAC 24/96k → 32-bit · bit-perfect`), a zielona kropka gaśnie
  w chwili, gdy cokolwiek ingeruje w sygnał.
- **Odtwarzanie z pamięci.** Utwór jest w całości dekodowany do RAM, więc dysk
  podczas grania nie pracuje; następny utwór wczytuje się z wyprzedzeniem i wchodzi
  **bez przerwy**.
- **Pętla A-B z dokładnością do próbki** z przesuwaniem punktów co milisekundę —
  do ćwiczenia fragmentu albo porównywania dwóch miejsc nagrania.
- **Biblioteka według folderów**: drzewo katalogów takie, jakie masz na dysku,
  okładki, wyszukiwanie, kolejka, ulubione, historia, playlisty M3U, albumy
  w jednym pliku z CUE, zsynchronizowane teksty z LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg i DSD** (natywnie, DoP lub konwersja do PCM).
- **Mono (L+R)/2** jako jedyna ingerencja w sygnał, zawsze wyraźnie oznaczona.
- **Przyciski L i P** zostawiają grającą tylko jedną kolumnę, a drugą wyciszają.
  Z włączonym mono w obu gra to samo, więc z fotela, telefonem, od razu porównasz
  lewą i prawą stronę zestawu (kable, komponenty); bez mono gra tylko lewy albo
  tylko prawy kanał nagrania.
- **Pasek przewijania narysowany jako głośność utworu** na całą szerokość okna:
  cichy wstęp widać i można go przeskoczyć jednym kliknięciem.
- **Serduszko przy utworze** i filtr „tylko ulubione” bezpośrednio w albumie.
- **Trzy motywy**: ciemny, czarny i jasny.
- **Pilot w telefonie**: Elfton Remote paruje się kodem QR przez sieć domową
  i potrafi to samo co okno na komputerze.

### Tryb odtwarzania

Na życzenie podczas grania przełącza plan zasilania, wyłącza selektywne
wstrzymywanie USB i parkowanie rdzeni, a po zakończeniu wszystko przywraca.
Uczciwie: przy asynchronicznym DAC-u USB zegar trzyma przetwornik, więc te
zmiany nie mają mierzalnego wpływu na dźwięk. Są opcjonalne, każda trafia
do logu i żadna nie jest potrzebna.

To samo dotyczy „rytuałów” przejętych z odtwarzacza Bug head, które są
w ustawieniach i domyślnie wyłączone: zablokowanie muzyki w RAM, pauza po
wczytaniu utworu i uruchamianie własnego programu pomocniczego (na przykład
MinorityClean) razem z odtwarzaczem. MinorityClean nie jest dołączony.

### Stan

**Wersja 0.2, wydanie wstępne.** Pierwsza wersja działała na Windows 11
u jednego słuchacza przez ASIO (Behringer UMC204HD i SMSL D200): WAV 24/192
wychodził jako 32-bitowe ASIO bez konwersji i bez przerw, a sterowanie
z telefonu działa. To raport samego odtwarzacza o drodze sygnału; nikt jeszcze
nie przechwycił wyjścia i nie porównał go bit po bicie. Nowości wersji 0.2 są
pokryte testami, ale na Windows jeszcze nie działały. Zrzuty ekranu pochodzą
z pierwszej wersji, z deweloperskiej kompilacji na macOS z przykładową
biblioteką — paska z przebiegiem głośności i przełącznika L/P jeszcze na nich nie ma.

Kompilacja dla Windows to zip: rozpakuj i uruchom `Elfton Player.exe` albo odpal
dołączony `install.ps1`, który doda skrót do menu Start. Nic więcej się nie
instaluje. Do ASIO potrzebny jest zainstalowany sterownik przetwornika; bez niego
odtwarzacz zaproponuje WASAPI. Pilot na telefon jest na razie tylko na
Androida (APK); wersja na iOS jest gotowa w kodzie, ale nie ma publicznej kompilacji.

Silnik jest napisany w Go na bazie FFmpeg (LGPL, linkowany dynamicznie), interfejs we Flutterze.
