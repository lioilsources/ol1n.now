---
tagline: Nálepky z vlastného rukopisu
---
Napíš text a aplikácia ho poskladá znak po znaku z ručne písaných písmen — a
uloží ako priehľadné PNG, ktoré sa dá poslať ako nálepka.

Prvá sada je skutočný detský rukopis: Laurinka vyplnila šablónu na A4, tá sa
odfotila a nástroj z nej vyrezal 160 znakov vrátane celej českej diakritiky.
Rovnakú šablónu si môže vytlačiť a vyplniť ktokoľvek. Druhá naskenovaná sada,
písaná Jessie 1, má písmená v slove spojené ťahom pera ako písané písmo.

K tomu viac než osemdesiat ďalších sád v troch kategóriách — rukopis, kaligrafia
a typografia — a detské a materiálové sady: bublina, plastelína, medovník, neón.
Sady sa prepínajú priamo v editore a text sa sadzá na účiar s proporcionálnymi
medzerami, takže nevyzerá ako vystrihovačka.

### Presety a emoji

Preset je sada spolu so štýlom: rozostupy, výška riadka, rozkolísanie účiara,
veľkosť a natočenie písmen. Vstavané sú Úhľadne, Bežne, Rýchly odkaz a Chaos,
ďalšie patria k balíčkom (Ľúbostný list, Nápis na tortu, Detský odkaz, Neónový
nápis…). Vlastné nastavenie sa dá uložiť ako nový preset. Aplikácia si pri
ďalšom spustení pamätá posledný stav.

K správe môžeš pridať jednu zo 41 kreslených emoji nálepiek, ktorá sa jemne
pohojdáva. S ňou sa nálepka uloží ako animovaný GIF, ktorý zvládnu poslať aj
messengery.

### Zadarmo, balíčky navyše

Editor, vstavané presety, export PNG aj GIF, emoji a spájanie písmen sú zadarmo.
Platiť sa bude za obsah navyše, tematické balíčky písiem s vlastnými presetmi
(Rukopisy, Kaligrafia, Plagát a nápisy, Pre deti, Materiály), a za ukladanie
vlastných presetov. Zamknutú sadu si môžeš v editore vyskúšať, platenie príde na
rad až pri uložení. Balíčky sa budú kupovať v App Store a Google Play, kde
aplikácia zatiaľ nie je. Vo verzii pre Windows a Linux je odomknuté všetko.

Dve časti: nástroj v Go, ktorý zo skenu šablóny alebo z fontu vyrobí sadu
znakov, a aplikácia vo Flutteri, ktorá z nich skladá text (repo
`HandWrittenStickers`).
