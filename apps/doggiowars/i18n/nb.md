---
tagline: Voxel-luftkamp mellom svevende himmeløyer (frittstående spill for Luanti)
---
Du er jagerflyet. Ikke piloten i det — selve maskinen. I DoggioWars går man
ikke, graver ikke og bygger ikke: du flyr fra første sekund.

Under deg strekker det seg en himmel full av **svevende øyer** i tolv
biomer — vulkaner med lava som renner over kraterkanten, breplatåer med
istapper, atollaguner, kjempesopper, glødende krystalltårn. De genereres fra et
tall som kalles seed, så ingen to verdener er like, og øyene kan **ødelegges**:
skuddene dine slår løs biter som så stuper ut i tomrommet.

### Hvem som flyr rundt

Himmelen er ikke tom. Rundt øyene sine sirkler **slangedrager** av fem
elementer — ild over vulkaner og aske, is over isbreer, vann over atoller,
gjørme over myrer og elektrisitet over krystaller. Gjennom ørkenene svømmer
**sandormer** som delfiner, over de golde øyene holder en **steinvokter** vakt,
over de grønne svever selvlysende **maneter**, og med litt flaks møter du en
**himmelhval**. Foreløpig er alle fredelige: de gjør deg ikke noe, og du gjør
ikke dem noe heller. Samme seed gir samme beboere.

Tasten **Z** eller kommandoen `/map` åpner et verdenskart i fullskjerm: øyer
farget etter biom, prikker for skapningene og skipet ditt med flyretning.

### To maskiner i én

Du bytter med kommandoen `/mode`, og de flyr helt forskjellig.

**Ubåten** er standard og tilgir feil. Den henger stille på stedet — slipper du
kontrollene, stopper den mykt, så du i ro og mak kan se deg om på en øy eller
manøvrere millimeter for millimeter mellom klippene. Den kan også gli
sidelengs uten å endre kurs.

**Jageren** stopper aldri. Den holder farten du gir den, og svinger ved å
**krenge** — venstre spak legger den over på vingen, og nesen dreier rundt av
seg selv, villigere jo brattere du krenger. Et bratt stup driver den over
toppfarten, mens stigning tar fart fra den, så du hele tiden bytter høyde mot
fart og tilbake. Den kan barrel roll, looping og Immelmann-sving — og å fly
tett forbi en klippe lader opp boosten, så det lønner seg å ta sjanser.

### Jakten på gullkaninen

Kommandoen `/race` starter et mynderløp: en gyllen kanin suser over himmelen,
kan de samme triksene som deg, slynger seg gjennom tunneler boret tvers gjennom
øyene og venter ikke. Enten henger du med hele løypa, eller ikke.

### Styring

Mus og tastatur fungerer, men spillet er laget for **gamepad** — Xbox 360 og
PS4 DualShock via Luantis innebygde joystickstøtte, ingen ekstern mapper.
Venstre spak styrer flyet, høyre sikter med våpenet uavhengig av hvor du flyr.
Krengning og stigning vises med et vater i HUD-en, fordi Luanti ikke kan
krenge horisonten.

### Twitch-chat

Spillet har en valgfri Twitch-kobling via tjenesten
[chatbridge](https://github.com/lioilsources/chatbridge): seerne bruker
chatkommandoer (`!drak`, `!velryba`, `!meduzy`…) for å tilkalle skapninger til
streamerens verden. Chatten kan bare legge til skapninger som rydder opp etter
seg, den rører aldri terrenget, og `/chatoff` slår den av umiddelbart. Uten
innstillinger i `minetest.conf` er koblingen av.

### Installasjon

Du trenger **Luanti 5.12 eller nyere** og **ingenting annet** — siden versjon
2.0 er DoggioWars et frittstående spill, ikke en mod, så Minetest Game trengs
ikke lenger.

Pakk ut arkivet i mappen `games/` i Luanti-datamappen din. På Windows er det
`%APPDATA%\Minetest\games\`, i den bærbare zip-versjonen `games\` rett i
spillmappen. På macOS `~/Library/Application Support/minetest/games/`, på
Linux `~/.minetest/games/`.

Den utpakkede mappen må hete **`doggiowars_game`**. Start så Luanti, velg
DoggioWars i den nederste linjen i hovedmenyen og trykk **New**.

Har du fortsatt en eldre versjon som **mod** i mappen `mods/`, så slett den —
siden versjon 2.0 er det et spill, og begge deler samtidig gir ingen mening.
