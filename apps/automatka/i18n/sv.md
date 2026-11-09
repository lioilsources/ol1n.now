---
tagline: Barnet trycker ”Jag är här” på aktiviteten och du vet. Utan platsspårning
---
Automatka är till för föräldrar vars barn redan åker själva till sina
fritidsaktiviteter. På plats trycker barnet på en enda stor knapp, **Jag är
här**, servern kontrollerar att barnet verkligen står vid hallen eller
fritidsgården, och föräldern får en notis. Har barnet inte checkat in när
aktiviteten börjar kommer det också en notis. Inget mer: ingen karta och ingen
spårning i bakgrunden.

### Plats bara vid knapptryck

Koordinaterna lämnar telefonen bara i samma ögonblick som barnet trycker på
knappen. Servern jämför dem med aktivitetens plats, sparar bara ”var / var inte
på plats” och kastar koordinaterna. Föräldern ser alltså inte vilken väg
barnet tog, bara att det kom fram, gick därifrån och är hemma.

### För barnet

- **Jag är här**, sedan **Jag går nu** och **Jag är hemma**. Stora knappar,
  ingen meny.
- **SOS** måste hållas in i två sekunder så att den inte går igång i fickan.
- Utan täckning sparas trycket och skickas så fort telefonen får anslutning.
- Om telefonen inte hittar platsen går det ändå att checka in. Föräldern ser
  då att ankomsten inte bekräftades med plats.
- Inget konto och inget lösenord. Barnet paras med en sexsiffrig kod eller en
  QR-kod från föräldern, och föräldern kan när som helst ta bort parkopplingen.

### För föräldrar

Dagsöversikten visar varje barn och dess aktiviteter: väntar, på plats, gått.
Varningen ”inte incheckad” försvinner så fort barnet checkar in eller
föräldern kvitterar den. Den andra föräldern eller mormor ser samma sak.
Servern kan exportera en familj eller radera den helt, konton inräknade; någon
knapp för det finns inte i appen än.

### Status

Automatka är i Fas 0: det testas att parkoppling, push, offlineläge och GPS
inne i hallar fungerar på riktiga telefoner och klockor. Backend och skärmarna
för barn och föräldrar är på plats och har klarat testerna på en lokal server.
Hantering av platser och aktiviteter i appen, inbjudningar till den andra
föräldern och appen för klockor kommer efter det. Inget att ladda ner än.
