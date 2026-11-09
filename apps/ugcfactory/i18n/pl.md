---
tagline: Fabryka dodatków do Robloxa — od promptu do modelu 3D bez ręcznego modelowania
---
UGC Factory produkuje dodatki do awatarów na Roblox Marketplace. Piszesz, czego chcesz —
*„zdobiony hełm samuraja z neonowymi akcentami”* — a z drugiej strony wypada
oteksturowany model 3D gotowy do wgrania. Żadnego ręcznego modelowania.

## Jak to działa

Praca jest podzielona między trzy maszyny. **DGX Spark** z GPU rysuje koncept (Illustrious do przedmiotów,
Juggernaut XL do tego, co nosi się na ciele — wybór zależy od kategorii), usuwa tło i robi z obrazka
model 3D. **NAS** trzyma kolejkę, katalog i headless Blendera, który dopasowuje model do
limitów Robloxa — poniżej 4000 trójkątów, UV, wypalona tekstura, właściwy punkt
mocowania. **Telefon** służy do selekcji.

Szybka ścieżka (SF3D) buduje model w półtorej sekundy, więc można testować na
dużą skalę. Wolniejszy i dokładniejszy TRELLIS rusza dopiero przy pakowaniu sztuki, która przeszła
przez twoje oko — drogie obliczenia idą tylko na to, co naprawdę chcesz sprzedawać.
Zdobne rzeczy, jak diademy i hełmy, idą od razu przez TRELLIS.

## Aplikacja

Klient mobilny to rdzeń całości. **Composer** wysyła partię — kategoria × styl ×
warianty, spokojnie pięćdziesiąt sztuk naraz. **Kolejka** pokazuje na żywo, co się teraz robi i
na jakim etapie. **Triage** to sedno: jedna sztuka na ekranie, przełącznik między
konceptem a obracanym modelem 3D, trzy przyciski — zatwierdź, odrzuć, spróbuj
ponownie z innym seedem. Przechodzi się przez to szybciej, niż da się czytać. **Review** pokazuje
przekonwertowaną sztukę: liczbę trójkątów względem limitu, UV, szczelność siatki,
teksturę i werdykt PASS, WARN albo FAIL. Stąd sztukę można przekonwertować ponownie albo
zapakować do wgrania. Ponowne pakowanie nie nadpisuje nazwy, opisów, ceny ani tagów
wpisanych w aplikacji.

Działa na Androidzie, iOS, macOS i w przeglądarce. Serwer udostępnia ją na własnym
originie, więc wersja webowa jest zawsze aktualna.

## Zdobienie dookoła

Model powstaje z jednego obrazka, więc tyłu nikt nie widział i wychodzi
płaski i bez zdobień. Przy sztukach naprawdę symetrycznych promieniście (tort,
korona) przedni wycinek kopiuje się więc dookoła, a szew się spawa. Włącza się to
w Composerze albo przy gotowej sztuce podczas ponownej konwersji, bez dodatkowego generowania.
Do płaskich rzeczy się nie nadaje — rozpadają się na zlepek wycinków.

## Kategorie

Najlepiej wychodzą rzeczy, które także w danych treningowych istnieją **same w sobie**:
plecaczki, torebki, diademy, kapelusze, torty, maski, tarcze, pierścionki.
Modystyczne kreacje z piórami i kwiatami, pikowane torebki z monogramem, korony
z perłami i agatami, maski inspirowane pięcioma kulturami, puszyste lisie i szopie
ogony, zwierzątka kawaii na ramię.

Obrazki wyglądają dobrze prawie zawsze — z modelami wcale tak nie jest, a decyduje
właśnie model. Zwarte kształty z objętością (plecak, tort, pierścionek) trzymają się dobrze. Cienkie ażurowe
struktury rwą się na szybkiej ścieżce, więc diademy idą od razu wolniejszą drogą.
A rysunkowe wejście ma mało cieni, więc wychodzi z niego płaskorzeźba zamiast bryły — pastelowe
zwierzątka potrzebują więc promptu, który wymusi miękkie cieniowanie.

Ubrania i włosy to twardy orzech: model zna je tylko na postaci, więc z promptu
*„smocza suknia”* narysuje smoka. Pomaga przełączenie na fotorealistyczny model i
sformułowanie tego jak zdjęcia produktowego — *„suknia na niewidzialnym manekinie”*.

Suknie, buty i rękawiczki Roblox obsługuje do tego jako layered clothing z siatką klatki,
czego fabryka jeszcze nie umie. Dla palców i dłoni Roblox nie ma żadnego punktu mocowania.
