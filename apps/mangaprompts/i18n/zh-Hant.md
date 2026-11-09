---
tagline: 用積木拼漫畫、照片換風格、試新髮型、讓照片動起來的 Telegram 機器人
---
TsumikiMangaBot（原名 MangaPrompts）用拼 LEGO 的方式組合 AI 繪圖提示詞——你在大約二十五個面向上挑選積木（媒材、藝術傳統、頭部風格、漫畫風格、歷史時期），它們就組成一段完整的提示詞。不只這樣：它會直接把提示詞送去生成，再把圖片傳回給你。

### 更多卡片

除了組合器，Mini App 還有卡片切換：

- **照片換風格** — 上傳一張照片、選一種風格，就能得到同一個人、同一個姿勢的該風格版本。用照片 / 插畫開關選擇媒材，共有九十多種風格，分成六組（熱門、畫家、各地區藝術傳統）。
- **試試髮型** — 只重繪肖像中的頭髮，也可以順便換個髮色。每種髮型都有同一張臉上的預覽，所以你只需要比較頭髮。
- **讓照片動起來** — 用一張照片和選定的場景生成一段短影片，直接傳到聊天室。

### 如何開始

不用安裝，它以 Telegram Mini App 的形式執行：

1. 在 Telegram 打開 [@tsumikimanga_bot](https://t.me/tsumikimanga_bot)——或搜尋名稱 **Tsumiki**。
2. 輸入 `/start`。機器人會回覆一個 **🎨 Open Tsumiki** 按鈕。
3. 點一下按鈕，拼好積木，開始生成。

完成的圖片會直接顯示在 App 裡，**同時也會傳到聊天室**，所以會留在紀錄中，你也能馬上轉傳。如果跳過 `/start` 直接打開 App，生成一樣能用——只是圖片不會傳到聊天室，因為 Telegram 不允許機器人主動先傳訊息。

### 價格

**每 24 小時可免費生成三次。** 之後 1 點 = 1 張圖片，點數可在 App 內直接用 **Telegram Stars** 購買——10 點 25 ⭐，50 點 100 ⭐，250 點 400 ⭐。換風格和換髮型跟一張圖片同價，髮型要等分析接受照片後才會扣點。動畫另外計算：每天免費一次，之後每次 10 ⭐。如果生成失敗，點數會退回。付款有問題可以使用 `/paysupport` 指令，退款我會在 48 小時內處理。

### 背後的技術

Mini App 是放在 Cloudflare Pages 上的 Flutter web。提示詞從這裡送到跑在家用 NAS 上的後端（FastAPI + aiogram），再交給 **ComfyUI**——依照選擇的範本決定工作流程（FLUX、Pony、Juggernaut XL Lightning 或 WAI Illustrious）。換風格透過 PuLID 或 InstantID 保留臉部，透過 depth ControlNet 保留姿勢，動畫則以 Wan 2.2 執行。點數和付款紀錄儲存在後端的 SQLite。

### 原生 App

下方的 macOS、Windows、Linux、Android 和 iOS 版本是完整的提示詞組合器，還多了 Telegram 沒有的 **Repose** 模式：上傳一張臉、選一個姿勢，App 就會生成這個人擺出該姿勢的圖片，並忠實保留臉部（InstantID + depth ControlNet + hi-res + FaceDetailer）。不過 Repose 直接連到 ComfyUI，所以原生 App 必須連得到它。

使用 Flutter 打造。
