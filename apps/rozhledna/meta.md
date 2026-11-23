---
slug: rozhledna
name: Rozhledna
repo: lioilsources/Rozhledna
tagline: Obrazovky všech počítačů v síti na jedné zdi, s myší a klávesnicí
featured: false
langs: cs
desktop: macos
mobile:
artifacts: none
appstore:
playstore:
testflight:
---
Rozhledna ukáže obrazovky všech počítačů v domácí síti v jednom okně.
Na každý stroj kliknete a ovládáte ho myší a klávesnicí, jako byste
seděli u něj.

### Jak to funguje

Na sledovaném počítači běží agent v liště menu. Snímá obrazovku,
kóduje ji hardwarově do H.264 a posílá ji po QUIC do hubu. Hub je
aplikace, ve které se díváte a pracujete. Stroje se v síti najdou
samy. Spárují se jednou: na obou se ukáže stejný kód, který potvrdíte.
Spojení je pak šifrované a ověřené oběma stranami.

### Jen pro vlastní stroje

Rozhledna funguje jen v místní síti, nemá žádný server ani účet.
Bez párování potvrzeného na sledovaném stroji se nikdo nepřipojí.

### Stav

Rozhledna je ve vývoji. Teď se zkouší první verze: zeď obrazovek
mezi dvěma Macy, ovládání myší, klávesnicí a scrollem. Přenos
jednotlivých oken, skládání dlaždic, Linux a Windows jsou zatím jen
v plánu. Buildy ke stažení zatím nejsou. Zdrojový kód je na
[github.com/lioilsources/Rozhledna](https://github.com/lioilsources/Rozhledna).
