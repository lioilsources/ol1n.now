---
tagline: DJ deck s pametnim seznamom predvajanja in načinom zabave, v katerem glasbo izbirajo gostje s telefona
---
DJfy je mobilna DJ aplikacija s pametnim ustvarjanjem seznamov predvajanja. Vpišeš izvajalca, aplikacija pa okoli njega sestavi skladbe glede na tempo in priporočila. Nato jih miksa na dekih s pitchem, učinki in crossfaderjem.

Povezuje **Last.fm** (priporočila, scrobbling), **GetSongBPM** (podatki o BPM) in **SoundCloud** (pretakanje).

### Način zabave

Na zabavi glasbo navadno vrti tisti, ki je ravno pri telefonu, drugi pa mu kričijo želje v uho. Z DJfy telefon gostitelja postane DJ pult, zvočnik pa samo predvaja. Gostje skenirajo kodo QR in odprejo zabavo v brskalniku. Ne potrebujejo ne aplikacije ne računa, dovolj je ime.

- **Gostje predlagajo in glasujejo.** Vsak lahko išče skladbe, jih doda v vrsto in jim da palec gor ali dol. Da en gost ne bi zasedel cele vrste, ima lahko v njej hkrati največ tri skladbe.
- **Pametna vrsta.** Vrstnega reda ne določa samo število glasov. Aplikacija upošteva tudi, kako dolgo skladba že čaka, ali isti izvajalec ni igral pred kratkim in ali se tempo ujema s skladbo, ki se predvaja.
- **Mood lock.** Gostitelj nastavi razpon BPM, recimo 110–130, skladbe zunaj njega pa gredo na konec vrste. Tako večer drži tempo, tudi če kdo predlaga balado.
- **Auto-DJ.** Skladbe se prelivajo ena v drugo z gladkim crossfadom. Ko se tempa razlikujeta za največ 8 %, aplikacija med prehodom uskladi BPM in se nato vrne na prvotno hitrost.
- **Zabava se ne konča.** Ko v vrsti zmanjka skladb, aplikacija sama doda novo, podobno tistim, ki so igrale nazadnje, in jo označi kot Auto. Skladbe gostov imajo vedno prednost, tiste z vetom pa se ne vrnejo. Izklopiš lahko s stikalom poleg Auto-DJ.
- **Gostitelj ima zadnjo besedo.** Na skladbo lahko da veto, imenuje so-DJ-ja, ki sme posegati v vrsto, ali gosta vrže ven.
- **Zvok kamorkoli.** Telefon predvaja v slušalke, na zvočnik prek Bluetootha ali prek AirPlaya, na primer na Sonos.

Telefon gostitelja nosi celo zabavo. Majhen strežnik v Go med njim in gosti le posreduje sporočila in ničesar ne shranjuje.

Narejeno s Flutterjem. Deluje na mobilnih napravah in macOS.
