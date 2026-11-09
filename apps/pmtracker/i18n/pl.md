---
tagline: Ewidencja czasu na zleceniach, która sprawdza miejsce — i nie zapisuje lokalizacji
---
Firmy budowlane i ekipy serwisowe wciąż rozliczają godziny na papierze, przez WhatsAppa i w Excelu. Kierownik nie ma jak sprawdzić, kto gdzie był, a pracownik nie ma jak udokumentować nadgodzin. PMTracker mierzy czas na konkretnym zleceniu i przy każdym wpisie wie, czy człowiek naprawdę był na miejscu.

### Lokalizacja tylko dwa razy, a potem do kosza

Współrzędne są wysyłane **tylko przy starcie i zatrzymaniu** pomiaru. Serwer sprawdza, czy punkt leży w geofence zlecenia, zapisuje jedną informację „był / nie był na miejscu” — i wyrzuca współrzędne. Żadnej mapy ruchu, żadnego śledzenia w tle. Pracę poza geofence można dopuścić wyjątkiem, który trafia do dziennika audytu.

### Role pilnuje baza danych, nie aplikacja

Członek zespołu rejestruje czas na zleceniach, do których jest przypisany. Kierownik dodatkowo zarządza zleceniami i grafikiem ludzi oraz widzi raporty. Administrator zarządza użytkownikami. Uprawnienia egzekwują reguły bezpośrednio w bazie danych, więc nie obejdzie ich nawet zmodyfikowany klient.

### Stan

To MVP: gotowe są model danych, role, weryfikacja geofence i ekrany logowania, pomiaru, zleceń, grafiku, raportów i administracji. Tryb offline dla budów bez zasięgu jest przygotowany, ale jeszcze niewłączony, a aplikacja nie działa jeszcze w żadnej firmie. Do zalogowania potrzebujesz konta od swojego pracodawcy.

### Dla beta testerów

Wersja testowa jest na razie tylko na **Androida**. Działa na testowej firmie „Stavby s.r.o.” ze zmyślonymi ludźmi i dwoma zleceniami: remont biur na placu Wacława w Pradze i klimatyzacja na placu Wolności w Brnie. Dane mogą zostać w każdej chwili usunięte. W aplikacji nie ma rejestracji; konto wyśle ci osoba, która zaprosiła cię do testów.

**Instalacja**

1. Na telefonie pobierz APK przyciskiem w sekcji **Do pobrania** powyżej (albo z [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Otwórz pobrany plik i zezwól na instalację z nieznanych źródeł, gdy Android zapyta.
3. Google Play Protect może ostrzec, że nie zna aplikacji. To dlatego, że nie pochodzi z Google Play; wybierz mimo to instalację.
4. Uruchom **PMTracker** i zaloguj się kontem, które przyszło ci w wiadomości.

**Co wypróbować jako członek zespołu**

- Na karcie **Výkaz** (Ewidencja) naciśnij **Zahájit výkaz** (Rozpocznij ewidencję), wybierz zlecenie i zezwól na dostęp do lokalizacji. Na miejscu zlecenia pod czasem pojawi się zielone „Na místě” (Na miejscu).
- Gdy nie jesteś na miejscu, aplikacja poprosi o powód. To w porządku: wpisz na przykład „test”, a wpis zapisze się z adnotacją, że powstał poza miejscem.
- Po chwili zatrzymaj pomiar przyciskiem **Ukončit výkaz** (Zakończ ewidencję). „Dnes celkem” (Dziś łącznie) wzrośnie.
- Na karcie **Zakázky** (Zlecenia) otwórz szczegóły: adres, wielkość geofence, kto jest przypisany i lista zadań.

**Co wypróbować jako kierownik**

- Widzisz dodatkowo **Roster** (swój zespół) i **Reporty** (Raporty) z przepracowanym czasem ludzi według zleceń. Do raportu liczą się tylko zatrzymane pomiary; okres zmienisz w prawym górnym rogu.
- Konto przełączysz, wylogowując się (ikona w prawym górnym rogu na karcie **Výkaz**).

**Czego jeszcze nie oczekiwać**

- Bez internetu aplikacja nie działa, tryb offline pojawi się później.
- Zapomniany pomiar sam się nie zatrzyma, zatrzymaj go ręcznie.
- Wersji na iPhone'a dla testerów jeszcze nie ma.

Błąd lub pomysł wyślij osobie, która cię zaprosiła: co robiłeś, co się stało i na jakim koncie. Zrzut ekranu bardzo pomoże.
