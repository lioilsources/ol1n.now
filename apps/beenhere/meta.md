---
slug: beenhere
name: Been Here
repo: lioilsources/been-here
icon_src: assets/icon/icon.png
tagline: Fotky z místa, kde právě stojíš
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
desktop:
mobile: android,ios
artifacts: android
appstore:
playstore:
testflight:
---
Dorazíš někam, kde jsi už byl. Been Here ti ukáže fotky, které jsi tam
vyfotil — po návštěvách: loni, před pěti lety, ten jeden víkend v roce 2019.

Důležitý je okamžik příchodu, ne galerie. Proto se appka umí ozvat sama: kolem
míst, na kterých ti záleží, si drží geofence, a když se vrátíš, přijde
notifikace.

### Všechno zůstává v telefonu

Žádný server, žádný účet, žádná analytika třetích stran. Fotky ani jejich
souřadnice telefon neopouštějí. Appka si fotky nekopíruje — drží si jen index,
tedy id a metadata; zdrojem pravdy zůstává systémová knihovna.

Ven můžou jen dvě věci, obě jsou ve výchozím stavu vypnuté a obě jdou přepnout
v nastavení: souřadnice poslaná systémovému geokodéru, aby místo dostalo
jméno, a mapové dlaždice z OpenStreetMap, dokud je mapa otevřená.

### Místa, kde bydlíš, tě nemají budit

Z fotek se vyklastrují místa. To, kde fotíš v příliš mnoha různých dnech, se
samo ztlumí — místo, kde žiješ, není místo, kam jezdíš. Okruh hledání kolem
sebe si nastavíš posuvníkem.

Notifikace navíc mlčí v okruhu kolem domova, výchozí je 25 km a v nastavení
jde od nuly do sta. Domov se nenastavuje: je to místo, kde máš fotky z nejvíc
různých dní. Nastavení pak spočítá, proč je appka zticha: kolik míst systém
hlídá, jak daleko je nejbližší a kdy přišla poslední notifikace.

### Mapa

Mapa je ve výchozím stavu vypnutá. Když ji zapneš, ukáže fotky jako tečky
kolem místa, kde stojíš. Ťuknutím na tečku se otevře ta fotka v návštěvě, ke
které patří. Posunutím mapy se podíváš jinam a obrazovka se přesune s ní.
Okruh jde měnit posuvníkem i gestem na mapě.

Druhý posuvník se dvěma úchyty říká, jak staré tečky kreslit: třeba posledních
14 dní, nebo od dvou týdnů do dvou let zpátky. Výchozí jsou poslední dva roky.
Filtruje jen tečky, časová osa návštěv ukazuje dál všechno.

### Pak a teď

U staré fotky si můžeš stoupnout na stejné místo a vyfotit ji znovu. Výsledná
dvojice se vykreslí na plátno, ne jako screenshot obrazovky — sdílí se ty dvě
fotografie, tak se kreslí ty dvě fotografie, obě ve stejné výšce a v plném
rozlišení.

Míří na iOS 15+ a Android 8+.
