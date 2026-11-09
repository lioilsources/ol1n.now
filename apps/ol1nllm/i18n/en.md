---
tagline: AI chat with roles, a Librarian and a Lawyer, a studio for images, video, fairy tales, music and voice
---
Ol1nLLM is one app on top of your own server: it chats, searches a library and the law, draws, turns a picture into video, makes a fairy tale, composes music and reads replies aloud in a recorded voice.
A detailed guide with screenshots is on the [What the app can do](ol1nllm-features.html) page.

### Chat

A conversation starts by picking a **role** — ten personalities from a five-year-old to a grandpa, and four assistants with their own data. The reply streams in as it's written, a conversation can **branch** and you can switch the role midway.

- **Librarian** answers from a corpus of philosophy and sacred texts in their original languages and shows the passages it drew on, with a Czech translation.
- **Lawyer** answers from the Czech laws in force and cites the sections.
- **Lawyer – contracts** drafts a contract from a template: it asks card by card and keeps an eye on the legal limits.
- **Leads** finds companies and institutions in the Czech Register of Contracts.

### Image Studio

An image takes shape in rounds that form a tree: text → image, then edits of the chosen variant. Nineteen models (FLUX, SDXL, anime lines), over three hundred art **styles** (cultures and eras, artists, media), **pose** templates, **LoRAs** from the server and a negative prompt written in capitals.

- **Keep pose** and **Keep face** — a new character in the stance of the reference, optionally with its face too.
- **Style map** — hundreds of images of the same subject arranged by similarity; slide your finger across the mosaic and the style changes like an animation, and the one you pick gets used.
- **Inpaint** — paint over an area and describe what should be there.
- **Hairdresser** — a new hairstyle or hair colour without drawing a mask.
- **Animate** — a short video from an image: dances and gestures from the server, or your own description of the motion.
- **3D** — a printable model (STL), or a dancing figure with a skeleton.

### Story Studio

Pick a fairy tale from ten scripts, cast the roles with your own pictures and the server turns it into a one-minute animated video with a narrator, music and subtitles. You can check the shots before animation and have the failed ones redrawn.

### Music Studio

Give the studio a music sample — from a file or recorded with the microphone — and it works out the genre, tempo and key. **Vibe** composes a new track in the same spirit, **Groove** rearranges the original into a different genre.

### Voice Studio

A short recording — even the audio track of a video — becomes your own **voice**. Any voice can be tried out on any sentence and assigned to a role in the chat. The speaker button under a reply then reads it in that role's voice.

### History

Conversations, sessions, projects and fairy tales stay on your phone. Long jobs run on the server: you can close the app and it reconnects to them by itself when you come back.

Built in Flutter, runs on mobile and desktop. The app is a client for your own model server; without it, it generates nothing.
