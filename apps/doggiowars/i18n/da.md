---
tagline: Voxel-luftkamp mellem svævende himmeløer (selvstændigt spil til Luanti)
---
Du er jagerflyet. Ikke piloten i det — selve maskinen. I DoggioWars går man
ikke, man graver ikke og bygger ikke: du flyver fra første sekund.

Under dig breder en himmel sig fuld af **svævende øer** i tolv biomer —
vulkaner med lava, der vælter ud over krateret, gletsjermesaer med istapper,
atol-laguner, kæmpesvampe, glødende krystaltårne. De genereres ud fra et tal,
der kaldes et seed, så ingen to verdener er ens, og øerne kan **ødelægges**:
dine skud slår stykker af dem, som så tumler ud i tomrummet.

### Hvem flyver rundt

Himlen er ikke tom. Rundt om deres øer kredser **slangedrager** af fem
elementer — ild over vulkaner og aske, is over gletsjere, vand over atoller,
mudder over sumpe og elektricitet over krystaller. Gennem ørkenerne svømmer
**sandorme** som delfiner, over de golde øer våger en **stenvogter**, over de
grønne svæver lysende **vandmænd**, og med lidt held møder du en
**himmelhval**. Indtil videre er de alle fredelige: de gør dig ikke noget, og
du gør heller ikke dem noget. Samme seed giver samme beboere.

Tasten **Z** eller kommandoen `/map` åbner et verdenskort i fuld skærm: øer
farvet efter biom, prikker for væsnerne og dit skib med flyveretningen.

### To maskiner i én

Du skifter med kommandoen `/mode`, og de flyver helt forskelligt.

**Ubåden** er standard og tilgiver fejl. Den hænger stille i luften — slipper
du styringen, bremser den blødt op, så du i ro og mag kan kigge på en ø eller
manøvrere millimeter for millimeter mellem klipperne. Den kan også glide
sidelæns uden at ændre kurs.

**Jageren** stopper aldrig. Den holder den fart, du giver den, og drejer ved at
**krænge** — venstre stick lægger den på vingen, og næsen drejer selv rundt,
jo mere villigt, jo stejlere du krænger. Et stejlt styrtdyk sender den over
topfarten, mens stigning koster fart, så du hele tiden bytter højde for fart og
tilbage igen. Den kan barrel roll, looping og Immelmann-vending — og at flyve
tæt forbi en klippe lader boostet op, så det betaler sig at tage chancer.

### Jagten på den gyldne kanin

Kommandoen `/race` starter et greyhoundløb: en gylden kanin suser hen over
himlen, kan de samme tricks som dig, snor sig gennem tunneler boret tværs
gennem øerne og venter ikke. Enten hænger du på den hele banen, eller også gør
du ikke.

### Styring

Mus og tastatur virker, men spillet er lavet til **gamepad** — Xbox 360 og PS4
DualShock via Luantis indbyggede joystick-understøttelse, ingen ekstern mapper.
Venstre stick styrer flyet, højre sigter med våbnet uafhængigt af, hvor du
flyver hen. Krængning og hældning vises af et vaterpas i HUD'en, fordi Luanti
ikke kan krænge horisonten.

### Twitch-chat

Spillet har en valgfri Twitch-kobling via tjenesten
[chatbridge](https://github.com/lioilsources/chatbridge): seerne bruger
chatkommandoer (`!drak`, `!velryba`, `!meduzy`…) til at hidkalde væsner til
streamerens verden. Chatten kan kun tilføje væsner, der rydder op efter sig
selv, den rører aldrig terrænet, og `/chatoff` slår den fra med det samme.
Uden indstillinger i `minetest.conf` er koblingen slået fra.

### Installation

Du skal bruge **Luanti 5.12 eller nyere** og **intet andet** — siden version
2.0 er DoggioWars et selvstændigt spil, ikke et mod, så Minetest Game er ikke
længere nødvendigt.

Pak arkivet ud i mappen `games/` i din Luanti-datamappe. På Windows er det
`%APPDATA%\Minetest\games\`, i den bærbare zip-version `games\` direkte i
spillets mappe. På macOS `~/Library/Application Support/minetest/games/`, på
Linux `~/.minetest/games/`.

Den udpakkede mappe skal hedde **`doggiowars_game`**. Start derefter Luanti,
vælg DoggioWars i den nederste bjælke i hovedmenuen, og tryk på **New**.

Har du stadig en ældre version som **mod** i mappen `mods/`, så slet den —
siden version 2.0 er det et spil, og begge dele på én gang giver ingen mening.
