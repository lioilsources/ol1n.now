---
tagline: Et akustisk kart over rommet ditt fra telefonens mikrofon
---
Du spiller av et testsignal gjennom høyttalerne, går rundt i rommet med telefonen,
og spekteret måles i hvert punkt. AR-sporingen holder samtidig styr på hvor du
står. Resultatet er et varmekart over planløsningen: hvor bassen dundrer, hvor
den forsvinner, hvor høyttalerne skal stå og hvor lytteren skal sitte.

**Det er ikke en erstatning for REW med kalibrert mikrofon.** Det er et relativt
verktøy — forskjeller mellom steder i ett og samme rom. Absolutt SPL fra en
ukalibrert telefon finnes ikke, og appen påstår det ingen steder.

### Måling

SPL-måler og RTA i trettien tersbånd fra 20 Hz til 20 kHz, FFT 8192 med
Hann-vindu og energimidling. Testsignalene eksporteres som WAV — rosa støy
og logaritmisk sveip, venstre og høyre kanal hver for seg.

RTA-en har peak hold, maks- og minkurver og frys; et fryst bilde kan lagres som
et punkt. Du kan laste inn en kalibreringsfil for mikrofonen (UMIK eller REW)
og en SPL-offset, men de endrer aldri lagrede data.

Du måler et punkt med et trykk, med tre sekunders midling, eller lar appen måle
fortløpende for hver halvmeter. Punktene blir et IDW-varmekart med en glidebryter
over båndene og en anbefaling av den jevneste sitteplassen.

Fra det logaritmiske sveipet regner Farina-dekonvolusjon ut impulsresponsen:
direktelyd, første refleksjon og frekvensrespons med fase, med justerbart
gating-vindu og glatting fra 1/3 til 1/24 oktav. I tillegg etterklang per oktav
(EDT, T20, T30), C50 og C80, Schroeder-kurven, en impulsgraf, ETC og et
spektrogram. Det samme sveipet gir også HD2- og HD3-forvrengning. Når en
refleksjon kommer nærmere enn impulsen ringer, kan den ikke skilles ut — appen
returnerer heller ingenting enn å kalle en sidelobe for en vegg.

To vilkårlige punkter kan sammenlignes, også på tvers av økter. Ut går FRD for
REW og VituixCAD, impulser og hele økten som JSON.

### Utforming av anlegget

Med LiDAR henter den rommets geometri via RoomPlan, beregner modene med modal
summering, kjører en «subwoofer crawl» i programvare, finner de første
refleksjonspunktene ved speiling og sjekker vinklene mot Dolby. Ut fra dette kan
den generere innstillinger for Integra DRX-8.4, inkludert de femten EQ-båndene.

Ved lytteposisjonen måles hver kanal med sitt eget sveip. EQ-en tar utgangspunkt
i gjennomsnittet av punktene rundt lytteren; et bånd som varierer mer enn 6 dB
mellom dem, får bare halv korreksjon. Det kuttes raust, løftes knapt, og over
Schroeder-frekvensen røres ingenting. Forhåndsvisningen viser før, mål og
forventet etter, og målkurven kan justeres. En ny måling etter at du har lagt
inn EQ-en i receiveren, viser hva filteret faktisk gjorde.

### Hva appen sier rett ut

Én mikrofon kan ikke lokalisere en kilde, så bare telefonens posisjon lagres,
aldri orienteringen som lydens retning. Når systemet i det stille bearbeider
signalet — AGC, støydemping, ekkokansellering — melder det native laget tilbake
hva det faktisk har slått på: en måling gjennom AGC er ikke en dårligere måling,
det er en måling av AGC-en. En Bluetooth-mikrofon blir oppdaget, og appen
advarer om den.

### Hva som bevisst mangler

Avspilling av signalet fra telefonen. Telefonhøyttaleren gir seg rundt 500 Hz,
altså over hver mode som er verdt å lete etter — å eksportere en WAV til et
skikkelig anlegg er den eneste veien som gir mening.

RoomPlan finnes ikke på Android. I stedet settes vertikale plan fra ARCore sammen
til en boks: de ser veggene kameraet har sett på, sjelden hjørnene, aldri bak
møblene. Det holder til å navngi en mode, ikke til refleksjonspunkter — og
geometrien bærer den informasjonen om seg selv.

Fasekorreksjon, parametrisk EQ og flere subwoofere. Receiveren tar bare avstand
og femten grafiske bånd; for mer trengs en ekstern DSP og FRD-eksport til REW.
