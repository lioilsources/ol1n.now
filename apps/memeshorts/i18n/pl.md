---
tagline: Pionowe shorty z szablonów memów, z własnymi postaciami
visuals: {n} portretów z biblioteki postaci — cztery postacie, każda w dwunastu emocjach.
---
Narzędzie wiersza poleceń, które z szablonu mema robi pionowego shorta trwającego od sześciu do piętnastu sekund. Oryginalny mem służy tylko jako wzór struktury żartu — do wyniku nigdy nie trafia. Zamiast niego grają własne postacie.

Postaci nie utrzyma ani prompt, ani seed, więc obrazy nie są generowane osobno dla każdego shorta. Powstają raz, jako zatwierdzona biblioteka *postać × emocja*: Kiro, Mei, Taro i Yuki, każde w dwunastu minach, od samozadowolenia po wyczerpanie.

Short przechodzi potem przez potok `classify → storyboard → generate → animate → compose → qa`. Każdy krok zapisuje się osobno i jest kluczowany hashem swoich opcji, więc ponowne uruchomienie nic nie kosztuje, a zmiana tekstu przelicza tylko to, co musi. Żart napisze LLM albo wpiszesz go ręcznie; napisy renderują się bezpośrednio w Go.

Wynik to 1080×1920, H.264, 30 fps, głośność −14 LUFS i oznaczenie „AI generated” w obrazie i w metadanych.

Na razie działa tylko lokalnie i nie ma wydanej wersji, więc nie ma tu czego pobrać.
Napisane w Go, obrazy generuje FLUX.1-schnell na moim własnym komputerze.
