---
tagline: Bot na Telegramie do mangi z klocków, restyle zdjęć, nowa fryzura i animacja zdjęć
---
TsumikiMangaBot (wcześniej MangaPrompts) składa prompty do generowania obrazów przez AI na zasadzie LEGO — wybierasz klocki na mniej więcej dwudziestu pięciu osiach (medium, tradycja artystyczna, styl głowy, styl mangi, epoka historyczna) i powstaje z nich kompletny prompt. Na tym się nie kończy: prompt od razu idzie do generowania, a obrazek wraca do ciebie.

### Więcej kart

Oprócz składacza Mini App ma przełącznik kart:

- **Restyle zdjęcia** — wgrywasz zdjęcie, wybierasz styl i dostajesz tę samą osobę w tej samej pozie w tym stylu. Przełącznikiem zdjęcie / ilustracja wybierasz medium, a stylów jest ponad dziewięćdziesiąt w sześciu grupach (popularne, malarze, tradycje artystyczne według regionów).
- **Przymierz fryzurę** — przerysowuje na portrecie tylko włosy, opcjonalnie także z nowym kolorem. Każda fryzura ma podgląd na tej samej twarzy, więc porównujesz tylko włosy.
- **Ożyw zdjęcie** — ze zdjęcia i wybranej sceny powstaje krótki filmik, który trafia na czat.

### Jak zacząć

Nic się nie instaluje, działa to jako Telegram Mini App:

1. W Telegramie otwórz [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — albo znajdź go w wyszukiwarce pod nazwą **Tsumiki**.
2. Napisz `/start`. Bot odpowie przyciskiem **🎨 Open Tsumiki**.
3. Kliknij go, złóż klocki i uruchom generowanie.

Gotowy obrazek pojawi się bezpośrednio w aplikacji **i jednocześnie trafi na czat**, więc masz go w historii i możesz od razu przesłać dalej. Jeśli pominiesz `/start` i otworzysz aplikację bezpośrednio, generowanie też działa — tylko obrazek nie dotrze na czat, bo Telegram nie pozwala botowi napisać pierwszemu.

### Ile to kosztuje

**Trzy generowania za darmo co 24 godziny.** Potem 1 kredyt = 1 obrazek, a kredyty kupuje się za **Telegram Stars** bezpośrednio w aplikacji — 10 kredytów za 25 ⭐, 50 za 100 ⭐, 250 za 400 ⭐. Restyle i fryzura kosztują tyle co obrazek, fryzura dopiero wtedy, gdy analiza zaakceptuje zdjęcie. Animacja ma własny licznik: jedna dziennie za darmo, kolejne za 10 ⭐. Gdy generowanie się nie uda, kredyt wraca. W problemach z płatnością pomoże polecenie `/paysupport`, zwroty załatwiam w ciągu 48 godzin.

### Co działa pod maską

Mini App to Flutter web na Cloudflare Pages. Prompt wędruje z niej do backendu (FastAPI + aiogram) działającego na domowym NAS-ie, a stamtąd do **ComfyUI** — w zależności od wybranego szablonu dobierany jest workflow (FLUX, Pony, Juggernaut XL Lightning albo WAI Illustrious). Restyle trzyma twarz przez PuLID lub InstantID, a pozę przez depth ControlNet, animacja działa na Wan 2.2. Kredyty i płatności przechowuje SQLite po stronie backendu.

### Aplikacje natywne

Buildy poniżej dla macOS, Windows, Linuksa, Androida i iOS to pełna wersja składacza promptów i mają dodatkowo tryb **Repose**, którego w Telegramie nie ma: wgrywasz twarz, wybierasz pozę, a aplikacja generuje obraz tej osoby w danej pozie z wierną twarzą (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose łączy się jednak bezpośrednio z ComfyUI, więc natywna aplikacja musi mieć do niego dostęp.

Zbudowane we Flutterze.
