---
tagline: Bit-perfect player for USB DACs — file, RAM, ASIO and nothing in between
---
Elfton Player is a local music player for Windows 11 with a single priority:
the samples that reach your USB DAC are exactly the ones in the file.
The signal path is **file → decoder → RAM → ASIO → DAC**. No volume control,
no equalizer, no resampling, no streaming. You set the volume on the
converter or the amplifier.

### What it does

- **Bit-perfect output** over ASIO, or WASAPI in exclusive mode. The whole chain
  is shown next to the track (`FLAC 24/96k → 32-bit · bit-perfect`), and the green
  dot goes out the moment anything touches the signal.
- **Playback from memory.** The whole track is decoded into RAM, so the disk stays
  idle while it plays; the next track is loaded ahead and follows **gaplessly**.
- **Sample-accurate A-B loop** with millisecond nudging of the points — for practising
  a passage or comparing two spots in a recording.
- **Folder-based library**: the directory tree just as you have it on disk, cover art,
  search, queue, favourites, history, M3U playlists, single-file albums with CUE,
  synced lyrics from LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg and DSD** (native, DoP, or converted to PCM).
- **Mono (L+R)/2** as the only change to the signal, always clearly marked.
- **L and R buttons** play just one speaker and mute the other. With mono on, both
  play the same thing, so from your armchair you can instantly compare the left
  and right side of your system with your phone (cables, components); without mono
  you hear only the left or only the right channel of the recording.
- **A seek bar drawn as the track's loudness** across the full width of the window:
  a quiet intro is visible and can be skipped with one click.
- **A heart on each track** and a "favourites only" filter right inside the album.
- **Three themes**: dark, black and light.
- **Remote on your phone**: Elfton Remote pairs via a QR code over your home network
  and does everything the window on your computer does.

### Playback mode

On request it switches the power plan while playing, turns off USB selective suspend
and core parking, and puts everything back afterwards. To be honest: with an
asynchronous USB DAC the converter holds the clock, so these tweaks have no
measurable effect on the sound. They are optional, each one is written to the log,
and none of them is needed.

The same goes for the "rituals" borrowed from the Bug head player, which live in the
settings and are off by default: locking the music in RAM, a pause after a track
loads, and launching your own helper program (for example MinorityClean) together
with the player. MinorityClean is not included.

### Status

**Version 0.2, pre-release.** The first version ran on Windows 11 for one
listener over ASIO (Behringer UMC204HD and SMSL D200): WAV 24/192 went out
as 32-bit ASIO with no conversion and no dropouts, and the phone remote works.
That is the player's own report of the signal path; nobody has yet captured
the output and compared it bit by bit. The new features in 0.2 are covered by tests
but have not run on Windows yet. The screenshots are from the first version,
from a macOS development build with a sample library — the loudness bar
and the L/R switch are not on them yet.

The Windows build is a zip: unpack it and run `Elfton Player.exe`, or run the bundled
`install.ps1`, which adds a shortcut to the Start menu. Nothing else gets
installed. For ASIO, your converter's driver must be installed; without it the
player offers WASAPI. The phone remote is Android-only for now (APK);
the iOS version is done in code but has no public build.

The engine is written in Go on top of FFmpeg (LGPL, dynamically linked), the interface in Flutter.
