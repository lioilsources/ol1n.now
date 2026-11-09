---
tagline: Voxelowy dogfight wśród latających wysp (samodzielna gra dla Luanti)
---
Jesteś myśliwcem. Nie pilotem w myśliwcu — samą maszyną. W DoggioWars nie
chodzi się pieszo, niczego się nie wydobywa ani nie buduje: lecisz od pierwszej
sekundy.

Pod tobą rozciąga się niebo pełne **latających wysp** w dwunastu biomach —
wulkany z lawą przelewającą się przez krater, lodowcowe płaskowyże z soplami,
laguny atoli, olbrzymie grzyby, świecące kryształowe wieże. Generują się z
liczby zwanej seedem, więc żadne dwa światy nie są takie same, a wyspy są
**zniszczalne**: twoje pociski odłupują z nich kawałki, które potem spadają w
pustkę.

### Kto tu lata

Niebo nie jest puste. Wokół swoich wysp krążą **smoki-węże** pięciu żywiołów —
ognisty nad wulkanami i popiołem, lodowy nad lodowcami, wodny nad atolami,
błotny nad bagnami i elektryczny nad kryształami. Przez pustynie przepływają
**piaskowe czerwie** jak delfiny, nad jałowymi wyspami czuwa **kamienny
strażnik**, nad zielonymi unoszą się świecące **meduzy**, a przy odrobinie
szczęścia spotkasz **niebiańskiego wieloryba**. Na razie wszyscy są pokojowi:
nie skrzywdzą cię, a ty ich też nie. Ten sam seed daje tę samą obsadę.

Klawisz **Z** albo polecenie `/map` otwiera pełnoekranową mapę świata: wyspy
pokolorowane według biomu, kropki stworzeń i twój statek z kierunkiem lotu.

### Dwie maszyny w jednej

Przełącza się je poleceniem `/mode` i latają zupełnie inaczej.

**Łódź podwodna** jest domyślna i wybacza błędy. Wisi w miejscu — gdy puścisz
sterowanie, płynnie się zatrzyma, więc możesz spokojnie obejrzeć wyspę albo
manewrować między skałami milimetr po milimetrze. Umie też zrobić unik w bok
bez zmiany kursu.

**Myśliwiec** nigdy się nie zatrzymuje. Trzyma prędkość, którą mu ustawisz, i
skręca **przechyłem** — lewa gałka kładzie go na skrzydło, a nos skręca sam,
tym chętniej, im mocniej jesteś przechylony. Stromy lot nurkowy rozpędza go
ponad maksimum, wznoszenie za to zabiera prędkość, więc ciągle wymieniasz
wysokość na prędkość i odwrotnie. Umie beczkę, pętlę i zwrot Immelmanna — a
przelot tuż obok skały ładuje boost, więc ryzyko się opłaca.

### Pogoń za złotym królikiem

Polecenie `/race` uruchamia gonitwę chartów: po niebie pędzi złoty królik,
który umie te same triki co ty, przemyka tunelami wydrążonymi przez wyspy i
nie czeka. Albo utrzymasz się za nim przez całą trasę, albo nie.

### Sterowanie

Mysz i klawiatura działają, ale gra jest zrobiona pod **gamepada** — Xbox 360
i PS4 DualShock przez natywną obsługę joysticka w Luanti, bez zewnętrznego
mapera. Lewa gałka steruje samolotem, prawa celuje bronią niezależnie od tego,
dokąd lecisz. Przechył i pochylenie pokazuje poziomica w HUD, bo Luanti nie
umie przechylać horyzontu.

### Czat Twitcha

Gra ma opcjonalne połączenie z Twitchem przez usługę
[chatbridge](https://github.com/lioilsources/chatbridge): widzowie poleceniami
na czacie (`!drak`, `!velryba`, `!meduzy`…) przywołują stworzenia do świata
streamera. Czat może tylko dodawać stworzenia, które same po sobie sprzątają,
terenu nie dotyka, a `/chatoff` natychmiast go wyłącza. Bez ustawień w
`minetest.conf` połączenie jest wyłączone.

### Instalacja

Potrzebujesz **Luanti 5.12 lub nowszego** i **niczego więcej** — od wersji 2.0
DoggioWars jest samodzielną grą, a nie modem, więc Minetest Game nie jest już
potrzebny.

Rozpakuj archiwum do folderu `games/` w katalogu danych Luanti. Na Windows to
`%APPDATA%\Minetest\games\`, w przenośnej wersji zip `games\` bezpośrednio w
folderze z grą. Na macOS `~/Library/Application Support/minetest/games/`, na
Linuksie `~/.minetest/games/`.

Rozpakowany folder musi się nazywać **`doggiowars_game`**. Potem uruchom
Luanti, w dolnym pasku menu głównego wybierz DoggioWars i kliknij **New**.

Jeśli masz jeszcze starszą wersję jako **mod** w folderze `mods/`, usuń ją — od
wersji 2.0 to gra i trzymanie obu naraz nie ma sensu.
