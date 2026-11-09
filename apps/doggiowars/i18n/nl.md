---
tagline: Voxel-dogfight tussen zwevende luchteilanden (losse game voor Luanti)
---
Jij bent de straaljager. Niet de piloot erin — de machine zelf. In DoggioWars
loop je niet, hak je niets en bouw je niets: je vliegt vanaf de eerste seconde.

Onder je strekt zich een hemel uit vol **zwevende eilanden** in twaalf
biomen — vulkanen waarvan de lava over de kraterrand stroomt, gletsjermesa's
met ijspegels, atollagunes, reuzenpaddenstoelen, gloeiende kristaltorens. Ze
worden gegenereerd uit een getal dat seed heet, dus geen twee werelden zijn
hetzelfde, en de eilanden zijn **verwoestbaar**: je schoten slaan er brokken
af, die vervolgens de leegte in tuimelen.

### Wie er rondvliegt

De lucht is niet leeg. Rond hun eilanden cirkelen **slangendraken** van vijf
elementen — vuur boven vulkanen en as, ijs boven gletsjers, water boven
atollen, modder boven moerassen en elektriciteit boven kristallen. Door de
woestijnen duiken **zandwormen** op en onder als dolfijnen, boven kale
eilanden waakt een **stenen wachter**, boven de groene zweven lichtgevende
**kwallen**, en met een beetje geluk kom je een **luchtwalvis** tegen. Voorlopig
zijn ze allemaal vreedzaam: ze doen jou niets en jij hen ook niet. Dezelfde
seed geeft dezelfde bewoners.

De toets **Z** of het commando `/map` opent een wereldkaart over het hele
scherm: eilanden gekleurd per bioom, stippen voor de wezens en je schip met
zijn vliegrichting.

### Twee machines in één

Je wisselt met het commando `/mode`, en ze vliegen totaal verschillend.

De **onderzeeër** is de standaard en vergeeft fouten. Hij blijft op zijn plek
hangen — laat je de besturing los, dan komt hij rustig tot stilstand, zodat je
op je gemak een eiland kunt bekijken of millimeter voor millimeter tussen
rotsen kunt manoeuvreren. Hij kan ook zijwaarts uitwijken zonder van koers te
veranderen.

De **jager** stopt nooit. Hij houdt de snelheid vast die je instelt en draait
door te **hellen** — de linkerstick legt hem op een vleugel en de neus draait
vanzelf mee, gretiger naarmate je steiler helt. Een steile duikvlucht jaagt
hem boven zijn topsnelheid, klimmen kost juist snelheid, dus je ruilt steeds
hoogte in voor snelheid en andersom. Hij kan een barrel roll, een looping en
een Immelmann-bocht — en rakelings langs een rots vliegen laadt je boost op,
dus risico nemen loont.

### Op jacht naar het gouden konijn

Het commando `/race` start een windhondenrace: een gouden konijn schiet door
de lucht, doet dezelfde trucs als jij, slingert zich door tunnels die dwars
door de eilanden zijn geboord en wacht niet. Of je blijft hem het hele parcours
op de hielen zitten, of niet.

### Besturing

Muis en toetsenbord werken, maar de game is gemaakt voor een **gamepad** —
Xbox 360 en PS4 DualShock via de ingebouwde joystickondersteuning van Luanti,
zonder externe mapper. De linkerstick bestuurt het vliegtuig, de rechter richt
het wapen, los van waar je heen vliegt. Helling en stand zie je aan een
waterpas in de HUD, omdat Luanti de horizon niet kan kantelen.

### Twitch-chat

De game heeft een optionele koppeling met Twitch via de dienst
[chatbridge](https://github.com/lioilsources/chatbridge): kijkers roepen met
chatcommando's (`!drak`, `!velryba`, `!meduzy`…) wezens op in de wereld van de
streamer. De chat kan alleen wezens toevoegen die zelf weer opruimen, het
terrein blijft onaangeroerd, en `/chatoff` zet hem meteen uit. Zonder
instellingen in `minetest.conf` staat de koppeling uit.

### Installatie

Je hebt **Luanti 5.12 of nieuwer** nodig en **verder niets** — sinds versie 2.0
is DoggioWars een losse game, geen mod, dus Minetest Game is niet meer nodig.

Pak het archief uit in de map `games/` in je Luanti-datamap. Op Windows is dat
`%APPDATA%\Minetest\games\`, bij de draagbare zipversie `games\` direct in de
map van het spel. Op macOS `~/Library/Application Support/minetest/games/`,
op Linux `~/.minetest/games/`.

De uitgepakte map moet **`doggiowars_game`** heten. Start daarna Luanti, kies
DoggioWars in de onderste balk van het hoofdmenu en klik op **New**.

Heb je nog een oudere versie als **mod** in de map `mods/` staan, verwijder die
dan — sinds versie 2.0 is het een game en allebei tegelijk heeft geen zin.
