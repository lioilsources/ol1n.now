---
tagline: DJ deck s pametnom playlistom i party načinom u kojem gosti biraju glazbu s mobitela
---
DJfy je mobilna DJ aplikacija s pametnim generiranjem playlista. Upišeš izvođača, a aplikacija oko njega složi pjesme prema tempu i preporukama. Zatim ih miksa na deckovima s pitchem, efektima i crossfaderom.

Integrira **Last.fm** (preporuke, scrobbling), **GetSongBPM** (BPM podaci) i **SoundCloud** (streaming).

### Party način

Na partyju glazbu obično pušta onaj tko je u tom trenutku kod mobitela, a ostali mu viču želje u uho. U DJfyju mobitel domaćina postaje DJ pult, a zvučnik samo svira. Gosti skeniraju QR kod i otvore party u pregledniku. Ne trebaju aplikaciju ni račun, dovoljno je upisati ime.

- **Gosti predlažu i glasaju.** Svatko može tražiti pjesme, dodati ih u red i dati palac gore ili dolje. Da jedan gost ne bi zauzeo cijeli red, u njemu može imati najviše tri pjesme odjednom.
- **Pametni red.** Redoslijed ne određuje samo broj glasova. Aplikacija uzima u obzir i koliko dugo pjesma čeka, je li isti izvođač svirao maloprije i odgovara li tempo pjesmi koja upravo svira.
- **Mood lock.** Domaćin postavi raspon BPM-a, recimo 110–130, a pjesme izvan njega idu na kraj reda. Tako večer drži tempo, čak i kad netko predloži baladu.
- **Auto-DJ.** Pjesme se nadovezuju glatkim crossfadeom. Kad se tempa razlikuju najviše 8 %, aplikacija tijekom prijelaza uskladi BPM, a zatim se vrati na izvornu brzinu.
- **Party ne prestaje.** Kad u redu ponestane pjesama, aplikacija sama doda novu, sličnu onima koje su svirale zadnje, i označi je kao Auto. Pjesme gostiju uvijek imaju prednost, a one stavljene pod veto se ne vraćaju. Može se isključiti prekidačem pokraj Auto-DJ-a.
- **Domaćin ima zadnju riječ.** Može staviti veto na pjesmu, imenovati su-DJ-a koji smije upravljati redom ili izbaciti gosta.
- **Zvuk bilo kamo.** Mobitel svira u slušalice, na zvučnik preko Bluetootha ili preko AirPlaya, na primjer na Sonos.

Mobitel domaćina drži cijeli party. Mali Go poslužitelj između njega i gostiju samo prosljeđuje poruke i ništa ne sprema.

Izrađeno u Flutteru. Radi na mobitelu i macOS-u.
