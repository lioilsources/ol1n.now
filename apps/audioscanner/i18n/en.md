---
tagline: An acoustic map of your room from your phone's microphone
---
Play a test signal through your speakers, walk around the room with your phone
and the spectrum is measured at every point. AR tracking keeps track of where
you're standing. The result is a floor-plan heatmap: where the bass booms, where
it vanishes, where to put the speakers and where to put the listener.

**It's not a replacement for REW with a calibrated microphone.** It's a relative
tool — differences between spots in one room. There's no such thing as absolute
SPL from an uncalibrated phone, and the app never claims it.

### Measuring

SPL meter and RTA in thirty-one third-octave bands from 20 Hz to 20 kHz, FFT 8192
with a Hann window and energy averaging. Test signals export to WAV — pink noise
and a log sweep, left and right channel separately.

The RTA has peak hold, max and min traces and freeze; a frozen snapshot can be
saved as a point. You can load a microphone calibration file (UMIK or REW) and
an SPL offset, but they never change the saved data.

Measure a point with a tap, with three seconds of averaging, or let the app
measure continuously every half meter. The points become an IDW heatmap with
a slider across the bands and a recommendation for the flattest seat.

Farina deconvolution turns the log sweep into an impulse response: direct
sound, first reflection and frequency response with phase, with an adjustable
gating window and smoothing from 1/3 to 1/24 octave. Plus decay per octave
(EDT, T20, T30), C50 and C80, the Schroeder curve, an impulse plot, ETC and
a spectrogram. The same sweep also gives you HD2 and HD3 distortion. When
a reflection arrives sooner than the impulse stops ringing, it can't be
separated — the app would rather return nothing than label a sidelobe as a wall.

Any two points can be compared, even across sessions. Export FRD for REW and
VituixCAD, impulses and the whole session as JSON.

### Designing the system

With LiDAR it grabs the room geometry through RoomPlan, computes the modes by
modal summation, runs a software “subwoofer crawl”, finds first-reflection
points by mirroring and checks the angles against Dolby. From all that it can
generate settings for the Integra DRX-8.4, including its fifteen EQ bands.

At the listening position each channel is measured with its own sweep. EQ comes
from the average of the points around the listener; a band that differs between
them by more than 6 dB gets only half the correction. Cuts are generous, boosts
barely there, and nothing above the Schroeder frequency is touched. The preview
shows before, target and predicted after, and the target curve is adjustable.
A second measurement after you enter the EQ into the receiver shows what its
filter actually did.

### What the app says out loud

A single microphone can't localize a source, so only the phone's position is
stored, never its orientation as the direction of sound. When the system quietly
processes the signal — AGC, noise suppression, echo cancellation — the native
layer reports back what it actually allowed: a measurement through AGC isn't
a worse measurement, it's a measurement of the AGC. A Bluetooth microphone is
detected and flagged with a warning.

### What's deliberately missing

Playing the signal from the phone. A phone speaker gives out around 500 Hz,
above every mode worth hunting for — exporting a WAV to a proper system is the
only approach that makes sense.

RoomPlan doesn't exist on Android. Instead, vertical planes from ARCore get boxed
up: they see the walls the camera looked at, rarely the corners, never behind
furniture. That's enough to name a mode, not enough for reflection points — and
the geometry carries that information about itself.

Phase correction, parametric EQ and multiple subwoofers. The receiver only takes
distance and fifteen graphic bands; anything more needs an external DSP and an
FRD export to REW.
