---
tagline: A DJ deck with a smart playlist and a party mode where guests pick the music from their phones
---
DJfy is a mobile DJ app with smart playlist generation. Enter an artist
and the app builds a set of tracks around them based on tempo and
recommendations. Then it mixes them on decks with pitch, effects and a
crossfader.

It integrates **Last.fm** (recommendations, scrobbling), **GetSongBPM**
(BPM data) and **SoundCloud** (streaming).

### Party mode

At a party, the music is usually played by whoever is holding the phone,
while everyone else shouts requests in their ear. With DJfy, the host's
phone becomes the DJ booth and the speaker just plays. Guests scan a QR
code and open the party in their browser. No app, no account, just a name.

- **Guests suggest and vote.** Anyone can search for tracks, add them to
  the queue and give them a thumbs up or down. So that one guest can't take
  over the whole queue, each can have at most three tracks in it at a time.
- **Smart queue.** The order isn't decided by votes alone. The app also
  considers how long a track has been waiting, whether the same artist
  played a moment ago and whether the tempo fits the track that's playing.
- **Mood lock.** The host sets a BPM range, say 110–130, and tracks
  outside it go to the end of the queue. The night keeps its pace even when
  someone suggests a ballad.
- **Auto-DJ.** Tracks flow into each other with a smooth crossfade. When
  the tempos differ by 8 % or less, the app matches the BPM during the
  transition and then returns to the original speed.
- **The party never stops.** When the queue runs out, the app adds another
  track on its own, similar to the ones played last, and marks it as Auto.
  Guests' tracks always take priority and vetoed ones never come back. You
  can turn it off with the switch next to Auto-DJ.
- **The host has the final say.** They can veto a track, appoint a co-DJ
  who can manage the queue, or kick a guest out.
- **Sound anywhere.** The phone plays to headphones, to a speaker over
  Bluetooth or over AirPlay, for example to a Sonos.

The host's phone runs the whole party. A small Go server between it and
the guests only relays messages and stores nothing.

Built with Flutter. Runs on mobile and macOS.
