---
tagline: En fabrik för Roblox-tillbehör — från prompt till 3D-modell utan att modellera för hand
---
UGC Factory tillverkar avatartillbehör för Roblox Marketplace. Du skriver vad du vill ha —
*”en utsmyckad samurajhjälm med neonaccenter”* — och ut i andra änden kommer en
texturerad 3D-modell, redo att laddas upp. Ingen modellering för hand.

## Så här går det till

Arbetet är fördelat på tre maskiner. En **DGX Spark** med GPU ritar konceptet (Illustrious för föremål,
Juggernaut XL för det man bär på kroppen — valt efter kategori), tar bort bakgrunden och gör om bilden till
en 3D-modell. En **NAS** håller kön, katalogen och en headless Blender som får in modellen inom
Roblox gränser — under 4 000 trianglar, UV, bakad textur, rätt
fästpunkt. **Mobilen** används för att sortera.

Det snabba spåret (SF3D) bygger en modell på en och en halv sekund, så man kan testa i
stor skala. Det långsammare, finare TRELLIS körs först när en pjäs som har passerat
ditt öga paketeras — den dyra beräkningen läggs bara på det du verkligen vill sälja.
Utsmyckade pjäser som tiaror och hjälmar går direkt genom TRELLIS.

## Appen

Mobilklienten är kärnan i det hela. **Composer** skickar iväg en batch — kategori × stil ×
varianter, gärna femtio stycken på en gång. **Kö** visar live vad som tillverkas just nu och
i vilken fas. **Triage** är det viktigaste: en pjäs på skärmen, en växel mellan
konceptet och en vridbar 3D-modell, tre knappar — godkänn, avvisa, försök
igen med ett annat seed. Det går fortare att bläddra igenom än att läsa. **Review** visar den
konverterade pjäsen: antal trianglar mot gränsen, UV, om meshen är sluten,
textur och domen PASS, WARN eller FAIL. Därifrån kan pjäsen konverteras om eller
paketeras för uppladdning. Ompaketering skriver inte över namn, beskrivningar, pris och taggar
som du fyllt i i appen.

Körs på Android, iOS, macOS och i webbläsaren. Servern levererar den från sin egen
origin, så webbversionen är alltid aktuell.

## Utsmyckat hela vägen runt

Modellen skapas från en enda bild, så baksidan har ingen sett och den blir
platt och osmyckad. För pjäser som verkligen är radiellt symmetriska (en tårta,
en krona) kopieras därför det främre segmentet hela vägen runt och skarven svetsas. Du slår på det
i Composer eller på en färdig pjäs vid ny konvertering, utan extra generering.
På en platt pjäs passar det inte — den faller isär i ett lapptäcke av segment.

## Kategorier

Bäst blir saker som även i träningsdatan finns **för sig själva**:
ryggsäckar, handväskor, tiaror, hattar, tårtor, masker, sköldar, ringar.
Modistkreationer med fjädrar och blommor, quiltade handväskor med monogram, kronor
med pärlor och agater, masker inspirerade av fem kulturer, fluffiga räv- och
tvättbjörnssvansar, kawaii-husdjur för axeln.

Bilderna ser bra ut nästan varje gång — det gäller långt ifrån modellerna, och det är
modellen som avgör. Kompakta former med volym (ryggsäck, tårta, ring) håller bra. Tunna genombrutna
strukturer rivs sönder på det snabba spåret, så tiaror tar direkt den långsammare vägen.
Och tecknad input har få skuggor, så det blir relief i stället för volym — pastellfärgade
smådjur behöver därför en prompt som tvingar fram mjuk skuggning.

Kläder och hår är en hård nöt: modellen känner bara till dem på en figur, så av prompten
*”drakklänning”* ritar den en drake. Det hjälper att byta till en fotorealistisk modell och
formulera det som en produktbild — *”klänning på en osynlig skyltdocka”*.

Klänningar, skor och handskar hanterar Roblox dessutom som layered clothing med ett cage mesh,
vilket fabriken inte kan ännu. För fingrar och händer har Roblox ingen fästpunkt alls.
