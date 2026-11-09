---
tagline: A neon physics game — hold, drag, release
---
Keep your finger on the screen and a pressure cloud grows beneath it. Drag it
wherever you need it, and at just the right moment let go — the pressure bursts
out and scatters the geometry drifting towards the centre.

It all comes down to one question: **when to let go**. The longer you hold, the
harder the blast, but past the overpressure limit the cloud just hisses, blows
nothing up and costs you points on top. During the last quarter of the charge
the cloud's rim flashes a warning, so if you overdo it, you know exactly whose
fault it was. And shapes that make it inside the cloud keep draining your charge.

### Four environments, same controls

**Vacuum** dampens nothing, so every blast becomes a slingshot. In **air** there
is light gravity and wind. **Water** cuts blasts down to blunt shoves and
everything slowly sinks to the bottom. In **plasma**, arcs jump between nearby
shapes. The background changes along with the environment.

### Things shatter

A hit doesn't break an enemy into pre-made pieces — the shape cracks into convex
shards depending on where the blast landed, and those can be shattered further.
Whatever is too small is left behind as dust.

On top of that come five modifiers that flip the rules: **implosion** pulls
instead of pushing, **magnet** and **gravity well** bend trajectories, **chain
spark** leaps from shape to shape. Hits in a row build up a score multiplier.

### The game heats up

The longer a run lasts, the harder it gets: shapes grow bigger, faster and more
of them are metal, and blasts and effects get stronger. The screen announces
every tier — HEAT II, HEAT III, OVERDRIVE. After about a minute and a half the
**Colossus** shows up, a huge polygon a blast barely moves — you have to crack
it. In the higher tiers shapes come flying in volleys.

### Music

Every environment has its own two tracks, and the menu and the game-over screen
have their own as well. When you start a new attempt the music doesn't jump back
to the beginning; you can skip to the next track from the pause menu. Music has
its own switch next to sound effects.

### Leaderboards and the weekly challenge

On iPhone, Game Center has a separate leaderboard for each environment and 14
achievements. The **weekly challenge** gives everyone the same environment, the
same modifier and the same layout of shapes, so scores can be compared fairly.
You can share your result as an image.

There are six colour palettes, with a holiday one added in season. There is a
**reduced flashes** toggle (it turns on by itself when the system has reduced
motion enabled). The game is available in 15 languages.

Built in Flutter on Flame and Forge2D (Box2D v3), rendered with fragment shaders
on Impeller. Runs on mobile.
