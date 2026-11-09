---
tagline: A Telegram bot for block-built manga, photo restyles, new hairstyles and photo animation
---
TsumikiMangaBot (formerly MangaPrompts) builds prompts for AI image generation
LEGO-style — you pick building blocks on roughly twenty-five axes (medium,
art tradition, head style, manga style, historical period) and they add up to a
complete prompt. It doesn't stop there: it sends the prompt straight to
generation and sends the image back to you.

### More cards

Next to the builder, the Mini App has a card switcher:

- **Photo restyle** — upload a photo, pick a style and get the same
  person in the same pose in that style. A photo / illustration toggle picks
  the medium, and there are over ninety styles in six groups (popular,
  painters, art traditions by region).
- **Try a hairstyle** — redraws only the hair on a portrait, optionally with
  a new colour too. Every hairstyle has a preview on the same face, so you
  compare just the hair.
- **Bring a photo to life** — a photo plus a chosen scene becomes a short
  video that lands in your chat.

### Getting started

Nothing to install, it runs as a Telegram Mini App:

1. In Telegram, open [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) —
   or search for it by the name **Tsumiki**.
2. Type `/start`. The bot replies with a **🎨 Open Tsumiki** button.
3. Tap it, put your blocks together and hit generate.

The finished image shows up right in the app **and also lands in your chat**,
so it's in your history and you can forward it straight away. If you skip
`/start` and open the app directly, generation still works — the image just
won't reach your chat, because Telegram doesn't let a bot write first.

### What it costs

**Three free generations every 24 hours.** After that, 1 credit = 1 image, and
credits are bought with **Telegram Stars** right in the app — 10 credits for
25 ⭐, 50 for 100 ⭐, 250 for 400 ⭐. Restyles and hairstyles cost the same as an
image, a hairstyle only once the analysis accepts the photo. Animation has its
own counter: one a day for free, more for 10 ⭐. If a generation fails, the
credit comes back. The `/paysupport` command helps with payment trouble, and I
handle refunds within 48 hours.

### Under the hood

The Mini App is Flutter web on Cloudflare Pages. The prompt travels from it to
a backend (FastAPI + aiogram) running on a home NAS and on to **ComfyUI** — the
chosen template picks the workflow (FLUX, Pony, Juggernaut XL Lightning or
WAI Illustrious). Restyle keeps the face with PuLID or InstantID and the pose
with depth ControlNet, and animation runs on Wan 2.2. Credits and payments live
in SQLite on the backend.

### Native apps

The builds below for macOS, Windows, Linux, Android and iOS are the full prompt
builder and add a **Repose** mode that Telegram doesn't have: upload a face,
pick a pose and the app generates an image of that person in that pose with a
faithful face (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose
talks to ComfyUI directly, though, so the native app has to be able to reach it.

Built with Flutter.
