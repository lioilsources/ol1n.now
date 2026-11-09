---
tagline: A factory for Roblox accessories — from a prompt to a 3D model with no manual modelling
---
UGC Factory makes avatar accessories for the Roblox Marketplace. You write what you want —
*“an ornate samurai helmet with neon accents”* — and out the other end comes a
textured 3D model ready to upload. No manual modelling.

## How it runs

The work is split across three machines. A **DGX Spark** with a GPU draws the concept (Illustrious for items,
Juggernaut XL for things worn on the body — picked by category), removes the background and turns the image
into a 3D model. A **NAS** holds the queue, the catalogue and a headless Blender that brings the model within
Roblox limits — under 4,000 triangles, UVs, a baked texture, the right attachment
point. The **phone** is for sorting.

The fast lane (SF3D) builds a model in a second and a half, so you can experiment at
scale. The slower, finer TRELLIS only runs when packaging a piece that has passed
your eye — the expensive compute is spent only on what you actually want to sell.
Ornate pieces like tiaras and helmets go straight through TRELLIS.

## The app

The mobile client is the heart of the whole thing. **Composer** sends out a batch — category × style ×
variants, fifty pieces at once if you like. **Queue** shows live what's being made right now and
at which stage. **Triage** is the main event: one piece on screen, a toggle between the
concept and a rotatable 3D model, three buttons — approve, reject, try again
with a different seed. You get through it faster than you could read. **Review** shows the
converted piece: triangle count against the limit, UVs, whether the mesh is closed,
the texture and a PASS, WARN or FAIL verdict. From there a piece can be converted again or
packaged for upload. Repackaging never overwrites the name, descriptions, price and tags
you filled in in the app.

It runs on Android, iOS, macOS and in the browser. The server serves it on its own
origin, so the web version is always up to date.

## Decorated all the way round

The model is made from a single image, so nobody has ever seen the back, and it comes out
flat and plain. For pieces that really are radially symmetric (a cake,
a crown), the front wedge is copied all the way round and the seam is welded. You switch it on
in Composer, or on a finished piece when converting again, with no extra generation.
It's no good for a flat piece — that falls apart into a patchwork of wedges.

## Categories

What comes out best are things that exist **on their own** in the training data too:
backpacks, handbags, tiaras, hats, cakes, masks, shields, rings.
Millinery creations with feathers and flowers, quilted monogrammed handbags, crowns
with pearls and agates, masks inspired by five cultures, fluffy fox and raccoon
tails, kawaii shoulder pets.

The images look good almost every time — the models, not nearly so, and the model is
what decides. Compact shapes with volume (backpack, cake, ring) hold up well. Thin openwork
structures tear in the fast lane, so tiaras go straight down the slower path.
And cartoon input has few shadows, so it turns into relief instead of volume — pastel
animals therefore need a prompt that forces soft shading.

Clothing and hair are a tough nut: the model only knows them on a figure, so from the prompt
*“dragon dress”* it draws a dragon. What helps is switching to a photorealistic model and
phrasing it as a product shot — *“a dress on an invisible mannequin”*.

On top of that, Roblox handles dresses, shoes and gloves as layered clothing with a cage mesh,
which the factory can't do yet. For fingers and hands Roblox has no attachment point at all.
