---
tagline: Wynajem mieszkania od wyszukiwania na mapie po opłacony czynsz — dla właścicieli, najemców i operatora
---
TerraReality to platforma do długoterminowego wynajmu mieszkań i pokoi. Startuje
w Pradze i okolicach, ale jej model danych od pierwszego dnia jest gotowy na inne
kraje Europy Środkowej (jurysdykcja umowy, waluta, język). W odróżnieniu od
portalu ogłoszeniowego nie kończy się na kontakcie: prowadzi właściciela
i najemcę przez cały najem — wyszukiwanie, wiadomości, wniosek, oglądanie,
umowę i podpis, aż po płatności i ich pilnowanie.

Platforma ma cztery oblicza. **Poszukujący** szukają na mapie albo po prostu
piszą, czego chcą. **Właściciele i zarządcy nieruchomości** dostają panel
administracyjny w stylu sklepu internetowego: ogłoszenia, kandydaci, umowy,
bank, portfel nieruchomości i fakturowanie. **Najemcy** dostają portal najemcy
z umową, płatnościami i kodami QR. **Operator** dostaje backoffice do
zatwierdzania, moderacji i ustawień. Do tego aplikacja mobilna na iOS i Androida.

Zrzuty ekranu pochodzą ze środowiska deweloperskiego z danymi testowymi:
nazwiska są zmyślone, zdjęcia mieszkań poglądowe, a sugestie AI powstały
w trybie offline bez modelu językowego. Sama aplikacja jest po czesku, dostępna
jest też wersja angielska.

### Wyszukiwanie na mapie i przez czat

Mapa prowadzi od regionu przez gminę i dzielnicę aż do ulicy i na każdym
poziomie przybliżenia pokazuje, ile jest ofert. Obok znajdują się filtry (typ,
cena, powierzchnia, układ, umeblowanie, zwierzęta, komunikacja) z liczbą ofert
przy każdej opcji. Kto nie chce klikać, może wpisać na przykład „2+kk do 25 000
w Pradze 6, z psem i balkonem” — platforma na podstawie zdania ustawi filtry
i obszar mapy, a także pokaże, jak je zrozumiała. Wyszukiwania można zapisać,
a nowe pasujące oferty wywołują powiadomienie.

### Ogłoszenia z pomocą AI — zawsze zatwierdzane przez człowieka

Właściciel wprowadza adres z oficjalnego rejestru adresów (RÚIAN), parametry,
zdjęcia i tekst. AI może zaproponować parametry na podstawie opisu i zdjęć
(winda, balkon, typ budynku…) oraz napisać tekst ogłoszenia po czesku
i po angielsku. Sugestia nigdy nie zapisuje się sama: właściciel widzi, co
proponuje AI, zaznacza to, co się zgadza, i dopiero wtedy zostaje to
zastosowane. Zanim ogłoszenie zostanie opublikowane, zatwierdza je człowiek
w backoffice. Właściciele mogą dodać pytania wstępne dla kandydatów (np. „Czy
ma Pan/Pani zwierzę?”).

### Wiadomości

Poszukujący piszą do właściciela bezpośrednio z ogłoszenia. Wiadomości docierają
w czasie rzeczywistym, z potwierdzeniem odczytu i załącznikami. Numery telefonów
i adresy e-mail w treści są ukryte do podpisania umowy, aby ani ustalenia, ani
pieniądze nie przeniosły się poza platformę — a poszukujący widzi ostrzeżenie,
by niczego nie płacić przed oglądaniem. Kto jest offline, dostaje powiadomienie
push lub e-mail. Podejrzaną rozmowę można zgłosić jednym kliknięciem.

### Wnioski, współlokatorzy i wybór najemcy

Poszukujący składa wniosek sam albo w imieniu grupy współlokatorów: tworzy
grupę, zaprasza pozostałych e-mailem, omawia sprawę na czacie grupowym,
a wniosek trafia do właściciela dopiero wtedy, gdy wszyscy się zgodzą.
Właściciel widzi kandydatów z odpowiedziami na pytania wstępne, statusem
weryfikacji i krótkim podsumowaniem AI (znów tylko jako sugestią). Dane
chronione, takie jak wiek, płeć czy narodowość, nigdy nie są zbierane. Gdy
właściciel kogoś wybierze, pozostali otrzymują uprzejmą automatyczną odpowiedź.

### Oglądanie mieszkań

Właściciel udostępnia terminy oglądania z limitem miejsc i notatką („spotkanie
przed wejściem”); kandydaci rezerwują, przesuwają lub odwołują je bezpośrednio
we wniosku i dostają przypomnienie.

### Umowa cyfrowa i podpis

Umowa powstaje z szablonu (mieszkanie na czas określony lub nieokreślony,
wspólny najem współlokatorów, pokój) i jest wypełniana danymi z oferty.
Z formularza generowany jest PDF, obie strony podpisują go online, a każde
zdarzenie — projekt, podpis, płatność, wypowiedzenie — trafia do łańcucha
audytowego, w którym każdy wpis jest powiązany z poprzednim skrótem (hashem).
Późniejszej zmiany historii nie da się ukryć; strona umowy pokazuje, że łańcuch
jest nienaruszony. Obsługiwane są także wypowiedzenie i rozliczenie kaucji.

Dopóki prawnik ich nie sprawdzi, szablony mają znak wodny PROJEKT, a podpis
jest na razie zwykłym podpisem elektronicznym z materiałem dowodowym (czas,
adres IP, odcisk cyfrowy dokumentu). Podpisywanie przez Bank iD jest
przygotowane jako kolejny krok i czeka na umowę z Bank iD.

### Płatności — pieniądze trafiają prosto do właściciela

Z umowy powstaje harmonogram płatności: kaucja, czynsz i zaliczki na opłaty,
w przypadku współlokatorów podzielone według udziałów. Najemcy płacą kodem QR
w aplikacji bankowej lub kartą przez link Revolut Business, który prowadzi na
własne konto sprzedawcy właściciela. Właściciel może podłączyć rachunek
bankowy (tylko do odczytu), a wpłaty są dopasowywane automatycznie według
symbolu zmiennego i specyficznego (czeskich identyfikatorów płatności) oraz
kwoty; to, co nie pasuje, pozostaje jako sugestia do ręcznego dopasowania. Po
terminie płatności wysyłane są przypomnienia, a po siedmiu dniach następuje
eskalacja.

**TerraReality nigdy nie przechowuje ani nie przekazuje pieniędzy najemców.**
Żadnych rachunków powierniczych (escrow), żadnych kryptowalut — płatności
trafiają bezpośrednio z konta najemcy na konto właściciela.

### Portfel nieruchomości w wielu miastach i ryzyko najmu

Dla właścicieli i zarządców z kilkoma mieszkaniami: wszystkie najmy według
gmin, miesięczne należności i rzeczywiste wpływy, trend z dwunastu miesięcy,
lista spraw wymagających uwagi (zadłużenie, eskalacja, wypowiedzenie, wolny
lokal), koncentracja przychodów oraz zestawienie czynszów (rent roll)
z eksportem do CSV i Excela. Każdy najem ma wskaźnik ryzyka obliczany na
podstawie reguł (zadłużenie, stare nieopłacone pozycje, pokrycie kaucją,
zbliżający się koniec umowy…). Wskaźnik ma charakter wyłącznie informacyjny
i nigdy o nikim nie decyduje; najemcy widzą, z czego się składa. Reguły
(przypomnienia, eskalacja, kaucja, okres wypowiedzenia) można ustawić osobno
dla każdej gminy, a inwestor może otrzymać dostęp tylko do odczytu, w którym
najemcy są widoczni wyłącznie jako inicjały.

### Promowanie i fakturowanie

Właściciele mogą podbić lub wyróżnić ogłoszenie. Płacą kartą przez Stripe,
faktura z VAT jest wystawiana automatycznie, wysyłana e-mailem i dostępna
w panelu administracyjnym. Promowane ogłoszenia są w wynikach oznaczone.

### Backoffice, moderacja i DSA

Operator ma przegląd wskaźników, kolejkę ogłoszeń do zatwierdzenia, moderację
zgłoszonych rozmów i ogłoszeń, kolejkę sugestii AI dotyczących nowych
parametrów, cennik promowania, szablony umów, przełączniki funkcji i dziennik
audytu. Ogłoszenie może zgłosić każdy, nawet bez konta (zgodnie z unijnym aktem
o usługach cyfrowych, DSA); o każdym przypadku decyduje człowiek, a uzasadnienie
trafia e-mailem zarówno do zgłaszającego, jak i do ogłoszeniodawcy. Logowanie
„jako użytkownik” w ramach wsparcia wymaga podania powodu i jest zapisywane
w dzienniku audytu.

### Aplikacja mobilna

Aplikacja Flutter na iOS i Androida obejmuje to, czego najemca potrzebuje
w telefonie: wyszukiwanie z listą i mapą, szczegóły ogłoszenia z wiadomością,
wnioskiem i rezerwacją oglądania, moje oglądania, najem z płatnością QR
i linkiem Revolut oraz głębokie linki z powiadomień push. To pierwsza wersja;
buildy dla testerów (TestFlight i ścieżka testów wewnętrznych Google Play) są
częścią przygotowań do testów.

### Eksploatacja

Środowisko produkcyjne jest przygotowane pod Hetzner w UE: oddzielne serwery
aplikacji i bazy danych w sieci prywatnej, automatyczne HTTPS, kopie zapasowe
bazy danych z odtwarzaniem do dowolnego momentu (utrata najwyżej godziny
danych) i sprawdzonym ćwiczeniem odtwarzania, monitoring z alertami
(dostępność 99,9%, odpowiedź wyszukiwania poniżej 300 ms, stan kopii
zapasowych) oraz raportowanie błędów. AI działa na naszym własnym serwerze GPU;
gdy AI jest niedostępna, wszystko nadal działa bez niej.

### Stan prac i testy

**MVP całej platformy jest gotowe.** Wszystkie powyższe moduły są
zaimplementowane i objęte testami automatycznymi — jednostkowymi,
integracyjnymi oraz end-to-end, które przeklikują w przeglądarce pełne
scenariusze (ogłoszenie, wiadomości, wniosek grupowy, umowa z podpisem
i dopasowaną płatnością, portfel nieruchomości, promowanie z fakturą,
zgłoszenie DSA, backoffice). Sprawdzono również odtwarzanie bazy danych
z kopii zapasowej.

**Trwa dopracowywanie przed pilotażem**: usprawnienia bezpieczeństwa
i eksploatacji zalecone w przeglądzie kodu, powiadomienia dotyczące wniosków,
umów i płatności oraz środowisko testowe. Na prawdziwym serwerze nic jeszcze
nie działa — wdrożenie czeka na konta i dostępy (zob. niżej).

Testy z prawdziwymi ludźmi przebiegają w pięciu fazach. Każda kończy się
bramką, na której wspólnie decydujemy, czy idziemy dalej:

1. **T0 — przygotowanie (2 tygodnie).** Środowisko testowe na Hetznerze
   z banerem „Środowisko testowe”, partnerzy w trybie sandbox (Stripe, Revolut,
   Bank iD), analityka produktowa bez danych osobowych, przycisk „Zgłoś
   problem / pomysł” w wersji webowej i w aplikacji, rejestracja wyłącznie na
   zaproszenie, dane testowe i buildy aplikacji dla testerów.
2. **T1 — testy wewnętrzne (1 tydzień).** 5–8 osób z zespołu i jego otoczenia
   przechodzi wszystkie scenariusze zarówno jako właściciel, jak i poszukujący,
   na kilku urządzeniach, łącznie z ćwiczeniem incydentu i odtwarzaniem z kopii
   zapasowej.
3. **T2 — moderowane testy użyteczności (2 tygodnie).** 12 uczestników:
   prywatni właściciele, zarządca z mieszkaniami w kilku miastach, poszukujący
   z Czech i z zagranicy oraz para współlokatorów. Mierzone są skuteczność
   wykonania zadań i satysfakcja (SUS ≥ 70).
4. **T3 — zamknięty pilotaż w Pradze (6 tygodni).** 20 właścicieli
   pilotażowych z indywidualnym onboardingiem oraz 50–100 poszukujących,
   wyłącznie na zaproszenie. Obserwujemy, czy ogłoszenia otrzymują wnioski, jak
   szybko właściciele odpowiadają, ile umów zostaje sfinalizowanych cyfrowo
   i jak niezawodnie wszystko działa; jedno wydanie tygodniowo.
5. **T4 — otwarta beta w Pradze (4 tygodnie).** Rejestracja otwarta dla
   wszystkich z oznaczeniem beta, bez płatnej kampanii — zakończona decyzją
   o publicznym uruchomieniu.

Łącznie około 15 tygodni od rozpoczęcia przygotowań.

**Czego potrzebujemy od Państwa:**

- kont i dostępów do eksploatacji: Hetzner, domena i DNS, konta deweloperskie
  Apple i Google, Stripe, Revolut Business, Bank iD oraz dostawca danych
  bankowych;
- rekrutacji testerów, 20 właścicieli pilotażowych i poszukujących, nagród dla
  uczestników;
- przeglądu prawnego regulaminu, polityki prywatności i szablonów umów, zgód
  testerów oraz decyzji, czy w trakcie pilotażu na platformie będą podpisywane
  prawdziwe umowy;
- testu penetracyjnego przed pilotażem, prowadzenia wywiadów w T2 oraz
  pierwszej linii wsparcia w trakcie pilotażu;
- decyzji na każdej bramce między fazami.
