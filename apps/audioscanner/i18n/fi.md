---
tagline: Huoneesi akustinen kartta puhelimen mikrofonista
---
Soitat kaiuttimista testisignaalin, kuljet puhelimen kanssa huoneen läpi ja
jokaisessa pisteessä mitataan spektri. AR-seuranta pitää samalla kirjaa siitä,
missä seisot. Tuloksena on pohjapiirroksen päälle piirretty lämpökartta: missä
basso jumputtaa, missä se katoaa, minne kaiuttimet kannattaa sijoittaa ja minne
kuuntelija.

**Tämä ei korvaa REW:tä ja kalibroitua mikrofonia.** Se on suhteellinen työkalu —
erot saman huoneen eri paikkojen välillä. Kalibroimattomasta puhelimesta ei saa
absoluuttista SPL:ää, eikä sovellus väitä sellaista missään.

### Mittaus

SPL-mittari ja RTA kolmessakymmenessäyhdessä terssikaistassa 20 Hz:stä 20 kHz:iin,
FFT 8192 Hann-ikkunalla ja energiakeskiarvolla. Testisignaalit viedään
WAV-tiedostoiksi — vaaleanpunainen kohina ja logaritminen pyyhkäisy, vasen ja oikea
kanava erikseen.

RTA:ssa on peak hold, maksimi- ja minimikäyrät sekä jäädytys; jäädytetyn kuvan voi
tallentaa pisteeksi. Mikrofonin kalibrointitiedoston (UMIK tai REW) ja SPL-offsetin
voi ladata, mutta ne eivät koskaan muuta tallennettuja tietoja.

Mittaat pisteen napautuksella kolmen sekunnin keskiarvolla, tai annat sovelluksen
mitata jatkuvasti puolen metrin välein. Pisteistä syntyy IDW-lämpökartta, jossa on
liukusäädin kaistojen läpi, ja suositus tasaisimmasta kuuntelupaikasta.

Logaritmisesta pyyhkäisystä Farinan dekonvoluutio laskee impulssivasteen: suora
ääni, ensimmäinen heijastus ja taajuusvaste vaiheineen, säädettävällä
gating-ikkunalla ja 1/3–1/24 oktaavin tasoituksella. Lisäksi jälkikaiunta
oktaaveittain (EDT, T20, T30), C50 ja C80, Schroederin käyrä, impulssikuvaaja,
ETC ja spektrogrammi. Samasta pyyhkäisystä saadaan myös HD2- ja HD3-särö. Kun
heijastus tulee lähempää kuin impulssi ehtii soida, sitä ei voi erottaa —
sovellus palauttaa mieluummin ei mitään kuin nimeää sivukeilan seinäksi.

Mitä tahansa kahta pistettä voi verrata, myös istuntojen välillä. Ulos saa
FRD:n REW:lle ja VituixCADille, impulssit ja koko istunnon JSONina.

### Järjestelmän suunnittelu

LiDARilla se hakee huoneen geometrian RoomPlanin kautta, laskee moodit
moodisummauksella, ajaa ohjelmallisesti ”subwoofer crawlin”, löytää
peilaamalla ensimmäisten heijastusten pisteet ja tarkistaa kulmat Dolbyn
suosituksia vasten. Näistä se osaa luoda asetukset Integra DRX-8.4:lle sen
viidentoista EQ-kaistan kera.

Kuuntelupaikalla jokainen kanava mitataan omalla pyyhkäisyllään. EQ lähtee
kuuntelijan ympärillä olevien pisteiden keskiarvosta; kaista, joka vaihtelee
niiden välillä yli 6 dB, saa vain puolet korjauksesta. Leikataan reilusti,
korostetaan tuskin lainkaan, eikä Schroederin taajuuden yläpuolelle kosketa.
Esikatselu näyttää tilanteen ennen, tavoitteen ja ennusteen jälkeen, ja
tavoitekäyrää voi muokata. Toinen mittaus sen jälkeen, kun olet syöttänyt EQ:n
vahvistimeen, näyttää, mitä sen suodin todella teki.

### Mitä sovellus sanoo ääneen

Yksi mikrofoni ei pysty paikantamaan lähdettä, joten tallennetaan vain puhelimen
sijainti, ei koskaan sen asentoa äänen suuntana. Kun järjestelmä käsittelee
signaalia hiljaisesti — AGC, kohinanvaimennus, kaiunpoisto — natiivikerros
raportoi, mitä se todella salli: AGC:n läpi tehty mittaus ei ole huonompi mittaus,
se on AGC:n mittaus. Bluetooth-mikrofoni tunnistetaan ja siitä varoitetaan.

### Mitä tietoisesti puuttuu

Signaalin toisto puhelimesta. Puhelimen kaiutin loppuu noin 500 Hz:iin, eli
jokaisen etsimisen arvoisen moodin yläpuolelle — WAV:n vienti kunnon
järjestelmään on ainoa järkevä tapa.

RoomPlania ei ole Androidilla. Sen sijaan ARCoren pystytasoista kootaan laatikko:
ne näkevät seinät, joihin kamera on katsonut, harvoin nurkat, eivät koskaan
huonekalujen taakse. Moodin nimeämiseen se riittää, heijastuspisteisiin ei — ja
geometria kantaa tämän tiedon itsestään mukanaan.

Vaiheenkorjaus, parametrinen EQ ja useampi subwoofer. Vahvistin ottaa vain
etäisyyden ja viisitoista graafista kaistaa; enempään tarvitaan ulkoinen DSP ja
FRD-vienti REW:hen.
