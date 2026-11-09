---
tagline: En fabrikk for Roblox-tilbehør — fra prompt til 3D-modell uten å modellere for hånd
---
UGC Factory lager avatartilbehør for Roblox Marketplace. Du skriver hva du vil ha —
*«en utsmykket samuraihjelm med neonaksenter»* — og ut i den andre enden kommer en
teksturert 3D-modell, klar til opplasting. Ingen modellering for hånd.

## Slik går det

Arbeidet er fordelt på tre maskiner. En **DGX Spark** med GPU tegner konseptet (Illustrious for gjenstander,
Juggernaut XL for det man har på kroppen — valgt etter kategori), fjerner bakgrunnen og gjør bildet om til
en 3D-modell. En **NAS** holder køen, katalogen og en headless Blender som får modellen innenfor
Roblox’ grenser — under 4000 trekanter, UV, bakt tekstur, riktig
festepunkt. **Mobilen** brukes til sortering.

Det raske sporet (SF3D) bygger en modell på halvannet sekund, så du kan eksperimentere i
stor skala. Det tregere, finere TRELLIS kjøres først når et stykke som har passert
øyet ditt, pakkes — den dyre beregningen brukes bare på det du faktisk vil selge.
Utsmykkede stykker som diademer og hjelmer går rett gjennom TRELLIS.

## Appen

Mobilklienten er kjernen i det hele. **Composer** sender av gårde en batch — kategori × stil ×
varianter, gjerne femti stykker på en gang. **Kø** viser direkte hva som lages akkurat nå og
i hvilken fase. **Triage** er det viktigste: ett stykke på skjermen, en bryter mellom
konseptet og en 3D-modell du kan rotere, tre knapper — godkjenn, avvis, prøv
igjen med et annet seed. Du kommer raskere gjennom enn du rekker å lese. **Review** viser det
konverterte stykket: antall trekanter mot grensen, UV, om meshen er lukket,
tekstur og dommen PASS, WARN eller FAIL. Herfra kan stykket konverteres på nytt eller
pakkes for opplasting. Ompakking overskriver ikke navn, beskrivelser, pris og tagger
du har fylt inn i appen.

Kjører på Android, iOS, macOS og i nettleseren. Serveren leverer den fra sin egen
origin, så nettversjonen alltid er oppdatert.

## Utsmykket hele veien rundt

Modellen lages av ett enkelt bilde, så ingen har sett baksiden, og den blir
flat og uten pynt. For stykker som virkelig er radialt symmetriske (en kake,
en krone), kopieres derfor det fremre utsnittet hele veien rundt, og skjøten sveises. Du slår det på
i Composer eller på et ferdig stykke ved ny konvertering, uten ekstra generering.
Til et flatt stykke duger det ikke — det faller fra hverandre i et lappeteppe av utsnitt.

## Kategorier

Best blir ting som også finnes **for seg selv** i treningsdataene:
ryggsekker, vesker, diademer, hatter, kaker, masker, skjold, ringer.
Modistkreasjoner med fjær og blomster, quiltede vesker med monogram, kroner
med perler og agater, masker inspirert av fem kulturer, luftige reve- og
vaskebjørnhaler, kawaii-kjæledyr til skulderen.

Bildene ser bra ut nesten hver gang — det gjelder langt fra modellene, og det er
modellen som avgjør. Kompakte former med volum (ryggsekk, kake, ring) holder seg godt. Tynne gjennombrutte
strukturer revner på det raske sporet, så diademer går rett den tregere veien.
Og tegnet input har få skygger, så det blir relieff i stedet for volum — pastellfargede
smådyr trenger derfor en prompt som tvinger fram myk skyggelegging.

Klær og hår er en hard nøtt: modellen kjenner dem bare på en figur, så ut fra prompten
*«dragekjole»* tegner den en drage. Det hjelper å bytte til en fotorealistisk modell og
formulere det som et produktbilde — *«kjole på en usynlig mannekeng»*.

Kjoler, sko og hansker håndterer Roblox dessuten som layered clothing med et cage mesh,
som fabrikken ikke kan ennå. For fingre og hender har Roblox ikke noe festepunkt i det hele tatt.
