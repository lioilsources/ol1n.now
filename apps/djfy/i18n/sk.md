---
tagline: DJ deck s chytrým playlistom a párty režimom, v ktorom hudbu vyberajú hostia z mobilu
---
DJfy je mobilná DJ aplikácia s chytrým generovaním playlistov. Zadáš
interpreta a aplikácia k nemu poskladá skladby podľa tempa a odporúčaní.
Potom ich mieša na dekoch s pitchom, efektmi a crossfaderom.

Integruje **Last.fm** (odporúčania, scrobbling), **GetSongBPM** (BPM dáta)
a **SoundCloud** (streaming).

### Párty režim

Na párty zvyčajne hudbu púšťa ten, kto je práve pri telefóne, a ostatní mu
kričia priania do ucha. V DJfy sa z telefónu hostiteľa stane DJ pult a
reproduktor len hrá. Hostia naskenujú QR kód a otvoria si párty v
prehliadači. Nepotrebujú aplikáciu ani účet, stačí zadať meno.

- **Hostia navrhujú a hlasujú.** Každý môže hľadať skladby, pridať ich do
  fronty a dávať palec hore alebo dole. Aby jeden hosť nezabral celú
  frontu, môže v nej mať naraz najviac tri skladby.
- **Chytrá fronta.** Poradie neurčuje len počet hlasov. Aplikácia berie do
  úvahy aj to, ako dlho skladba čaká, či rovnaký interpret nehral pred
  chvíľou a či tempo sedí k tej, ktorá práve hrá.
- **Mood lock.** Hostiteľ nastaví rozsah BPM, napríklad 110–130, a skladby
  mimo neho idú na koniec fronty. Večer tak drží tempo, aj keď niekto
  navrhne baladu.
- **Auto-DJ.** Skladby na seba nadväzujú plynulým crossfadom. Keď sa tempá
  líšia najviac o 8 %, aplikácia počas prechodu zladí BPM a potom sa vráti
  k pôvodnej rýchlosti.
- **Párty nekončí.** Keď vo fronte dôjdu skladby, aplikácia sama pridá
  ďalšiu, podobnú tým, ktoré hrali naposledy, a označí ju ako Auto.
  Skladby od hostí majú vždy prednosť a vetované sa už nevrátia. Dá sa to
  vypnúť prepínačom vedľa Auto-DJ.
- **Hostiteľ má posledné slovo.** Môže skladbu vetovať, vymenovať
  spolu-DJa, ktorý smie zasahovať do fronty, alebo hosťa vyhodiť.
- **Zvuk kamkoľvek.** Telefón hrá do slúchadiel, do reproduktora cez
  Bluetooth alebo cez AirPlay napríklad do Sonosu.

Telefón hostiteľa drží celú párty. Malý server v Go medzi ním a hosťami
len preposiela správy a nič neukladá.

Postavené vo Flutteri. Beží na mobile aj macOS.
