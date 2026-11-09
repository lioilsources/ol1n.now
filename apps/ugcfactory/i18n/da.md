---
tagline: En fabrik til Roblox-tilbehør — fra prompt til 3D-model uden at modellere i hånden
---
UGC Factory laver avatartilbehør til Roblox Marketplace. Du skriver, hvad du vil have —
*”en udsmykket samuraihjelm med neonaccenter”* — og ud i den anden ende kommer en
tekstureret 3D-model, klar til upload. Ingen modellering i hånden.

## Sådan kører det

Arbejdet er delt mellem tre maskiner. En **DGX Spark** med GPU tegner konceptet (Illustrious til genstande,
Juggernaut XL til det, man har på kroppen — valgt efter kategori), fjerner baggrunden og laver billedet om til
en 3D-model. En **NAS** holder køen, kataloget og en headless Blender, der får modellen inden for
Roblox’ grænser — under 4.000 trekanter, UV’er, bagt tekstur, det rigtige
fæstnelsespunkt. **Mobilen** bruges til at sortere.

Det hurtige spor (SF3D) bygger en model på halvanden sekund, så man kan eksperimentere i
stor stil. Det langsommere, finere TRELLIS kører først, når et stykke, der er kommet forbi
dit øje, pakkes — den dyre beregning bruges kun på det, du faktisk vil sælge.
Udsmykkede stykker som diademer og hjelme går direkte gennem TRELLIS.

## Appen

Mobilklienten er kernen i det hele. **Composer** sender et parti af sted — kategori × stil ×
varianter, gerne halvtreds stykker ad gangen. **Kø** viser live, hvad der laves lige nu, og
i hvilken fase. **Triage** er det vigtigste: ét stykke på skærmen, en kontakt mellem
konceptet og en 3D-model, du kan dreje, tre knapper — godkend, afvis, prøv
igen med et andet seed. Man kommer hurtigere igennem, end man kan læse. **Review** viser det
konverterede stykke: antal trekanter mod grænsen, UV’er, om meshet er lukket,
tekstur og en dom: PASS, WARN eller FAIL. Herfra kan stykket konverteres igen eller
pakkes til upload. Ompakning overskriver ikke navn, beskrivelser, pris og tags,
du har udfyldt i appen.

Kører på Android, iOS, macOS og i browseren. Serveren leverer den fra sin egen
origin, så webversionen altid er opdateret.

## Udsmykket hele vejen rundt

Modellen laves ud fra ét billede, så ingen har set bagsiden, og den bliver
flad og uden udsmykning. Ved stykker, der virkelig er radialt symmetriske (en kage,
en krone), kopieres det forreste udsnit derfor hele vejen rundt, og sømmen svejses. Det slås til
i Composer eller på et færdigt stykke ved ny konvertering, uden ekstra generering.
Til et fladt stykke duer det ikke — det falder fra hinanden i et kludetæppe af udsnit.

## Kategorier

Bedst lykkes ting, der også findes **for sig selv** i træningsdataene:
rygsække, håndtasker, diademer, hatte, kager, masker, skjolde, ringe.
Modistekreationer med fjer og blomster, quiltede håndtasker med monogram, kroner
med perler og agater, masker inspireret af fem kulturer, luftige ræve- og
vaskebjørnehaler, kawaii-kæledyr til skulderen.

Billederne ser gode ud næsten hver gang — det gælder langtfra modellerne, og det er
modellen, der afgør det. Kompakte former med volumen (rygsæk, kage, ring) holder godt. Tynde gennembrudte
strukturer flænses på det hurtige spor, så diademer går direkte den langsommere vej.
Og tegnet input har få skygger, så det bliver til relief i stedet for volumen — pastelfarvede
smådyr har derfor brug for en prompt, der tvinger blød skygge frem.

Tøj og hår er en hård nød: modellen kender dem kun på en figur, så ud fra prompten
*”dragekjole”* tegner den en drage. Det hjælper at skifte til en fotorealistisk model og
formulere det som et produktfoto — *”kjole på en usynlig mannequin”*.

Kjoler, sko og handsker håndterer Roblox desuden som layered clothing med et cage mesh,
som fabrikken ikke kan endnu. Til fingre og hænder har Roblox slet intet fæstnelsespunkt.
