---
tagline: Stående serier, även utan internet — gratis berättelser, spelböcker där du väljer och rutor som blir levande
visuals: {n} bilder — rutor ur fem barnberättelser, en jämförelse av två stilar och character sheets.
---
Toonfork (arbetsnamn Webtoon) är en läsare för serier i stående format som fungerar även utan internet. Direkt efter installationen finns 15 gratis berättelser i den, utan konto och utan registrering. Berättelserna skapas på en egen GPU-server: en språkmodell skriver manuset, en bildmodell ritar rutorna och pratbubblorna med text lägger läsaren på först i slutet, så att texten kan rättas utan att bilden behöver genereras om.

Färdiga strippar ur fem barnberättelser finns på undersidan Strips, spelloopen med ett val i slutet av avsnittet på undersidan Gamebook.

### Läsare

En berättelse är en enda lång remsa av rutor med pratbubblor, tankar, utrop och ljudeffekter som du scrollar med tummen uppifrån och ner. Utvalda rutor blir levande i korta loopar: regn på rutan, ljus på vattnet, vind i håret. I slutet av avsnittet ser du vad som valdes och knappen **Nästa avsnitt**. Efter sista avsnittet kommer **Slut** och ett förslag på nästa berättelse.

### Spelböcker

I en spelbok bestämmer du själv handlingen. I slutet av varje del väljer du hur det fortsätter, och berättelsen förgrenar sig. Appen kommer ihåg var du är, vilken väg du gick och vilka slut du har hittat; kartan över vägen visar bara det du redan besökt. Du kan börja om eller gå ett steg tillbaka. Spelböckerna är gratis: för barn **Sara and the Black Crown**, för vuxna till exempel kammardramat på en psykologmottagning **Learning to Be Silent**, **Metal Sky Above Us** eller **The Blooming Meadow That Turned Grey**. Dramerna tar upp svåra ämnen och barnprofilen döljer dem.

I beta finns en grenredigerare: till vilket val som helst lägger du till en egen fortsättning, sätter ihop den av spelbokens bilder och skriver pratbubblorna. Grenen spelar du direkt och kan skicka till författaren via delning, helt utan server.

### Paket

Valfria paket lägger till upp till 50 berättelser: **Romantik** (lätta kärlekshistorier för vuxna, utan explicita scener), **För barn** och **Superhjältar**. Ett paket laddas ner efter köpet och läses offline. Ett enda köp låser upp allt, även paket som kommer senare.

### Profil och föräldralås

Första gången du startar appen väljer du profilen **Barn** eller **Vuxna**. Barnprofilen döljer romantik och draman både i biblioteket och i butiken. Varje köp och varje byte till Vuxna skyddas av ett föräldralås med ett tal ur multiplikationstabellen.

### 12 språk

Berättelser, spelböcker och läsarens texter finns på 12 språk: tjeckiska, engelska, tyska, franska, italienska, polska, brasiliansk portugisiska, japanska, koreanska, vietnamesiska, ryska och ukrainska. Språket i pratbubblorna byter du i Inställningar.

### Integritet

Inget konto, inga annonser, ingen spårning. Toonfork samlar inte in några personuppgifter; vad du har köpt minns enheten, och köp kan återställas i Inställningar.

## Studio: så blir berättelserna till

Den andra sidan av samma app är Studio för författaren. Författaren bygger en värld: lore, figurer, platser och en kanon som varje berättelse måste passera. I Studio kan man också spela interaktivt: i slutet av avsnittet väljer läsaren vad figuren gör härnäst, eller skriver det med egna ord, och ur valet växer nästa avsnitt fram. Egen text går först genom moderering; i en barnvärld är den strängare och avvisar hellre vid tvekan. Skärmbilderna på den här sidan kommer från Studio.

### Världsredigerare

Författaren har fliken **Skapa** i appen:

- **Grund:** titel, synopsis, ton, språk, publik (För barn, Från 13 år, För vuxna), synlighet och en bildstil som gäller för hela världen.
- **Lore och kanon:** världens regler, fraktioner, kanoniska noder i fast ordning och gränser, alltså det som inte får hända.
- **Figurer och platser:** en beskrivning med egna ord. Utifrån den föreslår en LLM fasta booru-taggar för bildmodellen. Taggar som modellen inte känner till sorteras bort enligt WD14:s ordförråd, och författaren finslipar resten.
- **Character sheet:** fyra varianter av figuren på vit bakgrund. Den som bäst stämmer med taggarna blir referensbilden.
- **Översikt:** kampanjer, var läsarna slutade, vilka val de gjorde och hur långt de kom i kanon.

### Modeller

- **Manus och moderering:** Qwen3.6-35B-A3B via vLLM. Den föreslår taggar för figurer och platser och skriver storyboard för avsnitten (6–8 rutor, 2–3 val och ett fält för egen text). Därefter kontrollerar en validerare figurer, platser och världens regler.
- **Rutor:** SDXL via ComfyUI. Standard är NoobAI-XL eps 1.1, den andra stilen är Hassaku XL (Illustrious) 3.4. Bara dessa modeller ritar mänskliga figurer.
- **Levande rutor:** Wan 2.2 gör om en färdig ruta till en loop på 1–3 s, högst två rörliga rutor per avsnitt.
- **Innehållskontroll:** taggern WD14 (SmilingWolf/wd-swinv2-tagger-v3). Den kontrollerar varje ruta och kastar den beroende på publik och ritar om den med nytt seed. För barn avvisar den dessutom tajta och utmanande kläder. Samma tagger mäter om figuren i rutan stämmer med sin design.

Figurens identitet hålls uppe av taggarna ensamma. IP-Adapter är förberett, men i den första mätningen förstörde det snarare bilden. Modellen klarar inte att hålla två mänskliga figurer i samma bild; den byter hår och kläder mellan dem. Därför ger barnberättelserna varje figur en egen ruta.

### Stilar

En stil är ett namngivet preset: checkpoint, sampler, antal steg, CFG och estetiska taggar. Författaren väljer den en gång för hela världen. **clean_webtoon_noartist** har platta färger och en ren linje, **hassaku_soft** mjuk skuggning och pastellfärger. I visualerna står samma avsnitt i båda stilarna sida vid sida.

### Status

Toonfork är i alfa: Android-versionen finns på Google Play, bygget för macOS kan laddas ner från GitHub och App Store förbereds. Studio körs bara mot sin egen backend (Go med en jobbkö i Postgres) och är inte offentligt tillgängligt. Bilder och texter skapas på en egen GPU-server.

Skärmbilderna kommer från webbversionen av Studio i mobilbredd mot en lokal backend. Avsnitt 2 har där bara manus; rutorna väntar fortfarande på att ritas. Källkoden finns på [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
