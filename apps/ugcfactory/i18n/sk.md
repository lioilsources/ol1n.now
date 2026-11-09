---
tagline: Továreň na doplnky do Robloxu — z promptu do 3D modelu bez ručného modelovania
---
UGC Factory vyrába doplnky pre avatary na Roblox Marketplace. Napíšeš, čo chceš —
*„zdobená samurajská prilba s neónovými akcentmi“* — a z druhej strany vypadne
textúrovaný 3D model pripravený na nahratie. Žiadne ručné modelovanie.

## Ako to beží

Práca je rozdelená medzi tri stroje. **DGX Spark** s GPU kreslí koncept (Illustrious na predmety,
Juggernaut XL na to, čo sa nosí na tele — vyberie sa podľa kategórie), zmaže pozadie a urobí z obrázka
3D model. **NAS** drží frontu, katalóg a headless Blender, ktorý model prevedie do
robloxových limitov — pod 4 000 trojuholníkov, UV, zapečená textúra, správny bod
uchytenia. **Mobil** slúži na triedenie.

Rýchla dráha (SF3D) postaví model za jeden a pol sekundy, takže sa dá skúšať vo
veľkom. Pomalší a jemnejší TRELLIS sa pustí až pri balení kusu, ktorý prešiel
tvojím okom — drahý výpočet sa minie len na to, čo naozaj chceš predávať.
Zdobené kúsky ako korunky a prilby idú TRELLISom rovno.

## Appka

Mobilný klient je jadro celej veci. **Composer** rozošle dávku — kategória × štýl ×
varianty, pokojne päťdesiat kusov naraz. **Fronta** ukazuje naživo, čo sa práve vyrába a
v akej fáze. **Triage** je to hlavné: jeden kus na obrazovke, prepínač medzi
konceptom a otáčateľným 3D modelom, tri tlačidlá — schváliť, zamietnuť, skúsiť
znova s iným seedom. Prechádza sa to rýchlejšie, než sa dá čítať. **Review** ukáže
skonvertovaný kus: počet trojuholníkov oproti limitu, UV, uzavretosť meshu,
textúru a verdikt PASS, WARN alebo FAIL. Odtiaľ sa dá kus skonvertovať znova alebo
zabaliť na nahratie. Meno, popisy, cenu a tagy vyplnené v appke prebalenie
neprepíše.

Beží na Androide, iOS, macOS aj v prehliadači. Server ju servíruje na svojom vlastnom
origine, takže webová verzia je vždy aktuálna.

## Zdobenie dookola

Model vzniká z jedného obrázka, takže zadnú stranu nikto nevidel a vyjde
plochá a nezdobená. Pri kusoch, ktoré sú naozaj radiálne symetrické (torta,
koruna), sa preto predný výsek skopíruje dookola a šev sa zvarí. Zapína sa
v Composeri alebo pri hotovom kuse pri novej konverzii, bez ďalšieho generovania.
Na plochý kus sa nehodí — rozpadne sa na zlepenec výsekov.

## Kategórie

Najlepšie vychádzajú veci, ktoré aj v trénovacích dátach existujú **samy osebe**:
batôžky, kabelky, korunky, klobúky, torty, masky, štíty, prstene.
Modistické kreácie s perím a kvetmi, prešívané kabelky s monogramom, koruny
s perlami a achátmi, masky inšpirované piatimi kultúrami, chlpaté líščie a medvedíkovie
chvosty, kawaii miláčikovia na plece.

Obrázky vyzerajú dobre skoro vždy — o modeloch to zďaleka neplatí, a rozhoduje
až ten. Kompaktné tvary s objemom (batoh, torta, prsteň) držia dobre. Tenké ažúrové
štruktúry sa na rýchlej dráhe trhajú, takže korunky idú rovno pomalšou cestou.
A kreslený vstup má málo tieňov, takže z neho vzniká reliéf namiesto objemu — pastelové
zvieratká preto potrebujú prompt, ktorý si vynúti mäkké tieňovanie.

Oblečenie a vlasy sú tvrdý oriešok: model ich pozná len na postave, takže z promptu
*„dračie šaty“* nakreslí draka. Pomáha prepnúť na fotorealistický model a
sformulovať to ako produktovú fotku — *„šaty na neviditeľnej figuríne“*.

Šaty, topánky a rukavice navyše Roblox rieši ako layered clothing s klietkovým meshom,
ktorý továreň zatiaľ nevie. Pre prsty a ruky nemá Roblox úchyt vôbec.
