---
tagline: A szobád akusztikai térképe a telefon mikrofonjából
---
A hangfalakon lejátszol egy tesztjelet, végigsétálsz a szobán a telefonnal,
és minden pontban megmérődik a spektrum. Közben az AR-követés figyeli, hol
állsz. Az eredmény egy alaprajzi hőtérkép: hol dönget a basszus, hol tűnik el,
hová kerüljenek a hangfalak és hová a hallgató.

**Nem helyettesíti a kalibrált mikrofonos REW-t.** Relatív eszköz — egy szobán
belüli helyek közötti különbségeket mutatja. Kalibrálatlan telefonból abszolút
SPL nem létezik, és az app ezt sehol nem is állítja.

### Mérés

SPL-mérő és RTA harmincegy terzsávban 20 Hz-től 20 kHz-ig, FFT 8192 Hann-ablakkal
és energetikai átlagolással. A tesztjelek WAV-ba exportálhatók — rózsaszín zaj
és logaritmikus sweep, bal és jobb csatorna külön.

Az RTA tud peak holdot, maximum- és minimumgörbét és kimerevítést; a kimerevített
kép pontként menthető. Betölthető mikrofon-kalibrációs fájl (UMIK vagy REW)
és SPL-eltolás, de a mentett adatokat soha nem módosítják.

Egy pontot koppintással mérsz, három másodperces átlagolással, vagy hagyod, hogy
az app félméterenként folyamatosan mérjen. A pontokból IDW-hőtérkép lesz, sávok
közötti csúszkával, és ajánlást kapsz a legegyenletesebb ülőhelyre.

A logaritmikus sweepből Farina-dekonvolúcióval számolódik az impulzusválasz:
direkt hang, első visszaverődés és frekvenciaválasz fázissal együtt, állítható
gating-ablakkal és 1/3-tól 1/24 oktávig terjedő simítással. Mellé oktávonkénti
lecsengés (EDT, T20, T30), C50 és C80, Schroeder-görbe, impulzusgrafikon, ETC
és spektrogram. Ugyanebből a sweepből jön a HD2 és HD3 torzítás is. Ha egy
visszaverődés közelebb érkezik, mint ameddig az impulzus cseng, nem választható
le — az app inkább semmit nem ad vissza, mint hogy egy oldalnyalábot falnak
nevezzen.

Bármely két pont összehasonlítható, akár sessionök között is. Exportálható FRD
a REW-hez és a VituixCAD-hez, az impulzusok és a teljes session JSON-ban.

### A rendszer tervezése

LiDAR-ral a RoomPlanen keresztül átveszi a szoba geometriáját, modális
összegzéssel kiszámolja a módusokat, szoftveresen végigjár egy „subwoofer
crawlt”, tükrözéssel megkeresi az első visszaverődési pontokat, és a szögeket
a Dolby ajánlásaihoz méri. Mindebből beállításokat tud generálni az Integra
DRX-8.4-hez, a tizenöt EQ-sávjával együtt.

A hallgatási pozícióban minden csatornát külön sweeppel mér. Az EQ a hallgató
körüli pontok átlagából indul; az a sáv, amely ezek között több mint 6 dB-lel
eltér, csak fél korrekciót kap. Vágni bátran lehet, emelni alig, a Schroeder-frekvencia
fölé pedig nem nyúl. Az előnézet mutatja az előtte, a cél és a
várható utána állapotot, a célgörbe állítható. Egy második mérés, miután beírtad
az EQ-t a receiverbe, megmutatja, mit csinált valójában a szűrője.

### Amit az app kimond

Egyetlen mikrofon nem tud forrást lokalizálni, ezért csak a telefon pozíciója
mentődik, soha nem az iránya mint a hang iránya. Ha a rendszer csendben
feldolgozza a jelet — AGC, zajcsökkentés, visszhangszűrés —, a natív réteg
visszajelzi, mit engedélyezett valójában: az AGC-n át végzett mérés nem rosszabb
mérés, hanem az AGC mérése. A Bluetooth-mikrofont felismeri és figyelmeztet rá.

### Ami szándékosan hiányzik

A jel lejátszása a telefonról. A telefon hangszórója 500 Hz körül véget ér, vagyis
minden olyan módus fölött, amelyet érdemes keresni — a WAV exportálása egy
rendes rendszerre az egyetlen értelmes út.

Androidon nincs RoomPlan. Helyette az ARCore függőleges síkjaiból áll össze egy
doboz: azokat a falakat látják, amelyekre a kamera nézett, a sarkokat ritkán,
a bútorok mögé soha. Egy módus megnevezéséhez ez elég, a visszaverődési
pontokhoz nem — és a geometria ezt az információt magában hordozza.

Fáziskorrekció, parametrikus EQ és több mélysugárzó. A receiver csak távolságot
és tizenöt grafikus sávot fogad; ennél többhöz külső DSP és FRD-export kell
a REW-be.
