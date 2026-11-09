---
tagline: Volley with a single swipe — where the instep meets the ball, with how much curl and in which millisecond
---
Fotball Simulator simulates one single move: the volley. The ball bounces in front of you, differently every time, and one swipe of your finger kicks it at the goal. No team, no match, just the question of where and when your instep meets the ball. Everything else, the flight, the curl, the bounce and whether it's a goal, follows from that through physics.

### One swipe, four decisions

At the bottom of the screen there's a big ball, and a swipe across it says everything at once:

- **Where you put your finger** is where the instep hits the ball. Below the centre the ball rises, above the centre you kick it into the ground, from the side it picks up spin.
- **The arc of the swipe** is the curl. The more you bend the swipe, the more the ball swerves in flight.
- **The speed of the swipe** is the power of the kick.
- **The moment you lift your finger** is the moment of contact. A volley has a window: after the bounce the ball rises, stops and falls, and the ideal moment is when it drops to instep height. The game knows it in advance, because it calculates the ball's flight when it's tossed in.

The error is measured in milliseconds. Within ±30 ms it's PERFECT, then GOOD, LATE and EARLY. Late is late: the instep hits the falling ball from above, it gets topspin and ends up in the ground or falls short. Miss it completely and you kick thin air.

### Freeze-frame and flight

At the moment of contact the world stops for a split second. A dot on the ball shows where the instep hit it, and an arrow shows where it's going. At the top you see the speed in km/h, the spin in revolutions per second and the timing rating with the exact error. Then the ball flies with a trail behind it, so you can see it curve. The result is GOAL, WIDE or SHORT, and after a moment the next ball bounces in.

If you need more time, turn on **slow-mo**: when your finger touches the screen the game slows down so you can finish the swipe. Timing is measured in game time, though, so slowing down won't help you cheat.

### Physics

The ball's flight is a custom calculation, not engine physics: gravity, air drag, the Magnus effect (that's why a spinning ball curves) and gradual spin decay. A bounce on the grass takes away height and turns spin into direction. Contact accounts for the speed the ball came in at, so a weakly kicked ball just bounces off instead of hanging in the air. The results are held in place by automated tests against an independent reference implementation of the same model in Python.

The game was made in Godot 4.7, and what goes to your phone is its Flutter rewrite with the same constants and the same tests. The scene is drawn with a custom perspective projection, no 3D engine.

### Status

The first phase is done: a playable loop of toss, kick, freeze-frame, flight and result. The pitch and the goal are simple for now; still missing are a leg that swings, a net that bulges on a goal and a camera that follows the ball. After that comes tuning the feel, a heatmap of shots on goal and statistics.

The APK below is a test build (alpha). On iPhone, only through TestFlight for testers for now.
