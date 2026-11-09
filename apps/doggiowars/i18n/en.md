---
tagline: A voxel dogfight among floating sky islands (a standalone game for Luanti)
---
You are the fighter plane. Not the pilot inside it — the machine itself. In
DoggioWars there's no walking, no mining, no building: you're flying from the
very first second.

Below you stretches a sky full of **floating islands** in twelve biomes —
volcanoes with lava spilling over the crater, glacier mesas hung with icicles,
atoll lagoons, giant mushrooms, glowing crystal spires. They're generated from
a number called the seed, so no two worlds are alike, and the islands are
**destructible**: your shots knock chunks off them, which then tumble into the
void.

### Who's flying around

The sky isn't empty. **Serpent dragons** of five elements circle their islands —
fire over volcanoes and ash, ice over glaciers, water over atolls, mud over
swamps and electric over crystals. **Sand worms** porpoise through the deserts
like dolphins, a **stone guardian** watches over the barren islands, glowing
**jellyfish** drift above the green ones, and with a bit of luck you'll meet a
**sky whale**. For now they're all peaceful: they won't hurt you and you won't
hurt them. The same seed gives the same crew.

The **Z** key or the `/map` command opens a full-screen world map: islands
coloured by biome, dots for the creatures and your ship with its heading.

### Two machines in one

You switch between them with the `/mode` command, and they fly completely
differently.

The **submarine** is the default and forgives mistakes. It hovers in place —
let go of the controls and it eases to a stop, so you can calmly look around
an island or edge between rocks millimetre by millimetre. It can also strafe
sideways without changing course.

The **fighter** never stops. It holds whatever speed you set and turns by
**banking** — the left stick rolls it onto a wing and the nose comes round on
its own, the more eagerly the steeper you bank. A steep dive pushes it past top
speed, while climbing bleeds speed off, so you're always trading altitude for
speed and back. It can do a barrel roll, a loop and an Immelmann turn — and
flying close past a rock charges your boost, so taking risks pays off.

### Chasing the golden rabbit

The `/race` command starts a greyhound race: a golden rabbit dashes across the
sky, pulls the same tricks you can, weaves through tunnels bored right through
the islands and doesn't wait. Either you stay on its tail all the way, or you
don't.

### Controls

Mouse and keyboard work, but the game is made for a **gamepad** — Xbox 360 and
PS4 DualShock through Luanti's native joystick support, no external mapper.
The left stick flies the plane, the right one aims the gun independently of
where you're heading. Bank and pitch are shown by a level indicator in the HUD,
because Luanti can't roll the horizon.

### Twitch chat

The game has an optional Twitch hookup through the
[chatbridge](https://github.com/lioilsources/chatbridge) service: viewers use
chat commands (`!drak`, `!velryba`, `!meduzy`…) to summon creatures into the
streamer's world. Chat can only add creatures that clean up after themselves,
it never touches the terrain, and `/chatoff` switches it off instantly. Without
settings in `minetest.conf` the hookup stays off.

### Installation

You need **Luanti 5.12 or newer** and **nothing else** — since version 2.0
DoggioWars is a standalone game, not a mod, so Minetest Game is no longer
needed.

Unpack the archive into the `games/` folder in your Luanti data directory. On
Windows that's `%APPDATA%\Minetest\games\`, or for the portable zip version
`games\` right in the game's folder. On macOS it's
`~/Library/Application Support/minetest/games/`, on Linux `~/.minetest/games/`.

The unpacked folder must be named **`doggiowars_game`**. Then start Luanti,
pick DoggioWars in the bottom bar of the main menu and hit **New**.

If you still have an older version installed as a **mod** in the `mods/`
folder, delete it — since version 2.0 it's a game, and having both at once
makes no sense.
