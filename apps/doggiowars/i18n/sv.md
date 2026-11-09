---
tagline: Voxel-luftstrid bland svävande himmelsöar (fristående spel för Luanti)
---
Du är jaktplanet. Inte piloten i det — själva maskinen. I DoggioWars går man
inte, gräver inte och bygger inte: du flyger från första sekunden.

Under dig breder en himmel ut sig full av **svävande öar** i tolv biom —
vulkaner där lavan väller över kraterkanten, glaciärplatåer med istappar,
atollaguner, jättesvampar, glödande kristalltorn. De genereras ur ett tal som
kallas seed, så inga två världar är likadana, och öarna går att **förstöra**:
dina skott slår loss bitar som sedan störtar ut i tomheten.

### Vem som flyger omkring

Himlen är inte tom. Runt sina öar kretsar **ormdrakar** av fem element — eld
över vulkaner och aska, is över glaciärer, vatten över atoller, lera över
träsk och elektricitet över kristaller. Genom öknarna simmar **sandmaskar**
som delfiner, över de karga öarna vakar en **stenväktare**, över de gröna
svävar lysande **maneter**, och med lite tur möter du en **himmelsval**. Än så
länge är alla fredliga: de gör dig inget och du gör inte dem något. Samma seed
ger samma invånare.

Tangenten **Z** eller kommandot `/map` öppnar en världskarta i helskärm: öar
färgade efter biom, prickar för varelserna och ditt skepp med flygriktningen.

### Två maskiner i en

Du växlar med kommandot `/mode`, och de flyger helt olika.

**Ubåten** är standard och förlåter misstag. Den hänger stilla — släpper du
kontrollerna bromsar den mjukt in, så att du i lugn och ro kan titta dig
omkring på en ö eller manövrera millimeter för millimeter mellan klipporna.
Den kan också glida i sidled utan att ändra kurs.

**Jaktplanet** stannar aldrig. Det håller farten du ger det och svänger genom
att **kränga** — vänster spak lägger det på vingen och nosen svänger runt av
sig själv, villigare ju brantare du krängar. En brant störtdykning driver det
över toppfarten, medan stigning äter fart, så du byter hela tiden höjd mot fart
och tillbaka. Det klarar barrel roll, looping och Immelmann-sväng — och att
flyga tätt förbi en klippa laddar boosten, så det lönar sig att ta risker.

### Jakten på guldkaninen

Kommandot `/race` startar ett vinthundslopp: en gyllene kanin rusar över
himlen, kan samma trick som du, slingrar sig genom tunnlar borrade tvärs
igenom öarna och väntar inte. Antingen hänger du med hela banan, eller inte.

### Styrning

Mus och tangentbord fungerar, men spelet är gjort för **handkontroll** — Xbox
360 och PS4 DualShock via Luantis inbyggda joystickstöd, ingen extern mappare.
Vänster spak styr planet, höger siktar med vapnet oberoende av vart du flyger.
Krängning och tippning visas av ett vattenpass i HUD:en, eftersom Luanti inte
kan luta horisonten.

### Twitch-chatt

Spelet har en valfri Twitch-koppling via tjänsten
[chatbridge](https://github.com/lioilsources/chatbridge): tittarna använder
chattkommandon (`!drak`, `!velryba`, `!meduzy`…) för att kalla in varelser i
streamerns värld. Chatten kan bara lägga till varelser som städar upp efter
sig, den rör aldrig terrängen, och `/chatoff` stänger av den direkt. Utan
inställningar i `minetest.conf` är kopplingen avstängd.

### Installation

Du behöver **Luanti 5.12 eller senare** och **inget annat** — sedan version 2.0
är DoggioWars ett fristående spel, inte en mod, så Minetest Game behövs inte
längre.

Packa upp arkivet i mappen `games/` i din Luanti-datakatalog. På Windows är det
`%APPDATA%\Minetest\games\`, i den portabla zip-versionen `games\` direkt i
spelets mapp. På macOS `~/Library/Application Support/minetest/games/`, på
Linux `~/.minetest/games/`.

Den uppackade mappen måste heta **`doggiowars_game`**. Starta sedan Luanti,
välj DoggioWars i nedre fältet i huvudmenyn och tryck på **New**.

Har du fortfarande en äldre version som **mod** i mappen `mods/`, ta bort den —
sedan version 2.0 är det ett spel, och båda samtidigt är meningslöst.
