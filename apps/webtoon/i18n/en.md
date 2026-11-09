---
tagline: Vertical comics that work offline — free stories, gamebooks where you choose, and panels that come alive
visuals: {n} images — panels from five kids' stories, a side-by-side of two styles and character sheets.
---
Toonfork (working title Webtoon) is a vertical comics reader that works offline, too. Right after install it holds 15 free stories, no account and no sign-up. The stories are made on our own GPU server: a language model writes the script, an image model draws the panels, and the speech bubbles are added only by the reader, so text can be fixed without regenerating the image.

Finished strips from five kids' stories are on the Strips subpage, and the game loop with a choice at the end of each episode is on the Gamebook subpage.

### Reader

A story is one long strip of panels with speech bubbles, thoughts, shouts and sound effects that you scroll with your thumb from top to bottom. Selected panels come alive as short loops: rain on a window, light on the water, wind in someone's hair. At the end of an episode you see what was chosen and a **Next episode** button. After the last episode comes **The End** and a suggestion for the next story.

### Gamebooks

In a gamebook you decide what happens. At the end of each part you choose what comes next, and the story branches. The app remembers where you are, which way you went and which endings you found; the path map shows only what you have already visited. You can start over or step back. Gamebooks are free: for kids **Sara and the Black Crown**, for adults for example the chamber drama in a therapist's office **Learning to Be Silent**, **Metal Sky Above Us** or **The Blooming Meadow That Turned Grey**. The dramas take on difficult topics and the kids' profile hides them.

The branch editor is in beta: add your own continuation to any choice, assemble it from the gamebook's images and write the bubbles. You can play the branch right away and send it to the author via sharing, no server involved.

### Packs

Optional packs add up to 50 stories: **Romance** (light love stories for adults, nothing explicit), **Kids** and **Superheroes**. A pack downloads after purchase and reads offline. One purchase unlocks everything, including packs released later.

### Profile and parental gate

On first launch you pick the **Kids** or **Adults** profile. The kids' profile hides romance and the dramas in both the library and the store. Every purchase and every switch to Adults is guarded by a parental gate with a times-table question.

### 12 languages

Stories, gamebooks and the reader's texts come in 12 languages: Czech, English, German, French, Italian, Polish, Brazilian Portuguese, Japanese, Korean, Vietnamese, Russian and Ukrainian. Switch the bubble language in Settings.

### Privacy

No account, no ads, no tracking. Toonfork collects no personal data; your device remembers what you bought, and purchases can be restored in Settings.

## Studio: how the stories are made

The other face of the same app is the Studio for authors. The author builds a world: lore, characters, places and a canon every story has to pass through. The Studio can also be played interactively: at the end of an episode the reader picks what the character does next, or writes it in their own words, and the choice becomes the next episode. Free text goes through moderation first; in a kids' world it is stricter and refuses when in doubt. The screenshots on this page are from the Studio.

### World editor

The author has a **Create** tab in the app:

- **Basics:** title, synopsis, tone, language, audience (For kids, 13+, For adults), visibility and an art style that applies to the whole world.
- **Lore and canon:** the world's rules, factions, canon nodes in a fixed order and guardrails, meaning what must not happen.
- **Characters and locations:** a description in your own words. An LLM turns it into fixed booru tags for the image model. Tags the model doesn't know are dropped using the WD14 vocabulary, and the author fine-tunes the rest.
- **Character sheet:** four variants of the character on a white background. The one that best matches the tags becomes the reference image.
- **Overview:** campaigns, where readers stopped, which choices they picked and how far they got in the canon.

### Models

- **Script and moderation:** Qwen3.6-35B-A3B via vLLM. It suggests tags for characters and locations and writes the storyboard for episodes (6–8 panels, 2–3 choices and a free-text field). A validator then checks characters, places and the world's rules.
- **Panels:** SDXL via ComfyUI. The default is NoobAI-XL eps 1.1, the second style is Hassaku XL (Illustrious) 3.4. Only these models draw human characters.
- **Living panels:** Wan 2.2 turns a finished panel into a 1–3 s loop, at most two moving panels per episode.
- **Content check:** the WD14 tagger (SmilingWolf/wd-swinv2-tagger-v3). It checks every panel and, depending on the audience, discards it and redraws it with a new seed. For kids it also rejects tight and revealing clothing. The same tagger measures whether a character in a panel matches its design.

Character identity is held by the tags alone. IP-Adapter is ready, but in the first measurement it tended to break the image. The model can't keep two human characters in one shot; it swaps their hair and clothes. That's why the kids' stories give each character its own panel.

### Styles

A style is a named preset: checkpoint, sampler, step count, CFG and aesthetic tags. The author picks it once for the whole world. **clean_webtoon_noartist** has flat colours and clean lines, **hassaku_soft** soft shading and pastel colours. The visuals show the same episode in both styles side by side.

### Status

Toonfork is in alpha: builds for macOS and Android can be downloaded from GitHub, App Store and Google Play are in preparation. The Studio runs only against its own backend (Go with a job queue in Postgres) and is not publicly available. Images and texts are made on our own GPU server.

The screenshots are from the web version of the Studio at phone width against a local backend. Episode 2 in them has only a script; its panels are still waiting to be drawn. The source code is at [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
