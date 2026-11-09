---
tagline: Dziecko na zajęciach naciska „Jestem” i ty już wiesz. Bez śledzenia lokalizacji
---
Automatka jest dla rodziców, których dzieci same już jeżdżą na zajęcia
dodatkowe. Na miejscu dziecko naciska jeden duży przycisk **Jestem**, serwer
sprawdza, czy naprawdę stoi przy hali albo domu kultury, a rodzic dostaje
powiadomienie. Jeśli dziecko nie zamelduje się do początku zajęć, powiadomienie
też przychodzi. Nic więcej: żadnej mapy ani śledzenia w tle.

### Lokalizacja tylko po naciśnięciu przycisku

Współrzędne opuszczają telefon tylko w chwili, gdy dziecko naciśnie przycisk.
Serwer porównuje je z miejscem zajęć, zapisuje tylko „był / nie był na miejscu”
i współrzędne wyrzuca. Rodzic nie widzi więc, którędy dziecko szło, tylko że
dotarło, wyszło i jest w domu.

### Dla dziecka

- **Jestem**, potem **Wychodzę** i **Jestem w domu**. Duże przyciski, żadnego
  menu.
- **SOS** trzeba przytrzymać dwie sekundy, żeby nie włączył się w kieszeni.
- Bez zasięgu naciśnięcie się zapisuje i wysyła, gdy tylko telefon złapie
  połączenie.
- Gdy telefon nie ustali lokalizacji, i tak można się zameldować. Rodzic widzi
  wtedy, że przyjście nie zostało potwierdzone lokalizacją.
- Bez konta i hasła. Dziecko paruje się sześciocyfrowym kodem albo kodem QR od
  rodzica, a rodzic może w każdej chwili odłączyć urządzenie.

### Dla rodziców

Przegląd dnia pokazuje każde dziecko i jego zajęcia: czekamy, na miejscu,
wyszło. Alert „bez zameldowania” znika, gdy tylko dziecko się zamelduje albo
rodzic go potwierdzi. Drugi rodzic czy babcia widzą to samo. Serwer potrafi
wyeksportować rodzinę albo całą ją usunąć razem z kontami; przycisku do tego
w aplikacji jeszcze nie ma.

### Stan

Automatka jest w Fazie 0: sprawdzamy, czy parowanie, powiadomienia push, tryb
offline i GPS w halach działają na prawdziwych telefonach i zegarkach. Backend
oraz ekrany dla dziecka i rodziców są gotowe i przeszły testy na lokalnym
serwerze. Zarządzanie miejscami i zajęciami w aplikacji, zaproszenia dla
drugiego rodzica i aplikacja na zegarki przyjdą później. Na razie nie ma czego
pobrać.
