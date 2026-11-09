---
tagline: 用积木拼漫画、照片换风格、试新发型、让照片动起来的 Telegram 机器人
---
TsumikiMangaBot（原名 MangaPrompts）用拼 LEGO 的方式组装 AI 绘图提示词——你在大约二十五个维度上挑选积木（媒介、艺术传统、头部风格、漫画风格、历史时期），它们就组成一条完整的提示词。不止如此：它会直接把提示词送去生成，再把图片发回给你。

### 更多卡片

除了组装器，Mini App 还有卡片切换：

- **照片换风格** — 上传一张照片，选一种风格，就能得到同一个人、同一个姿势的该风格版本。用照片 / 插画开关选择媒介，共有九十多种风格，分为六组（热门、画家、各地区艺术传统）。
- **试试发型** — 只重绘肖像中的头发，也可以顺便换个发色。每种发型都有同一张脸上的预览，所以你只需要比较头发。
- **让照片动起来** — 用一张照片和选定的场景生成一段短视频，直接发到聊天里。

### 如何开始

无需安装，它以 Telegram Mini App 的形式运行：

1. 在 Telegram 中打开 [@tsumikimanga_bot](https://t.me/tsumikimanga_bot)——或者搜索名字 **Tsumiki**。
2. 输入 `/start`。机器人会回复一个 **🎨 Open Tsumiki** 按钮。
3. 点击按钮，拼好积木，开始生成。

生成的图片会直接显示在应用里，**同时也会发到聊天中**，因此它会留在历史记录里，你也能马上转发。如果跳过 `/start` 直接打开应用，生成同样可用——只是图片不会发到聊天里，因为 Telegram 不允许机器人主动先发消息。

### 价格

**每 24 小时可免费生成三次。** 之后 1 积分 = 1 张图片，积分可在应用内直接用 **Telegram Stars** 购买——10 积分 25 ⭐，50 积分 100 ⭐，250 积分 400 ⭐。换风格和换发型与一张图片价格相同，发型只有在分析通过照片后才会扣费。动画单独计数：每天免费一次，之后每次 10 ⭐。如果生成失败，积分会退回。付款遇到问题可以使用 `/paysupport` 命令，退款我会在 48 小时内处理。

### 背后的技术

Mini App 是部署在 Cloudflare Pages 上的 Flutter web。提示词从这里发送到运行在家用 NAS 上的后端（FastAPI + aiogram），再交给 **ComfyUI**——根据所选模板决定工作流（FLUX、Pony、Juggernaut XL Lightning 或 WAI Illustrious）。换风格通过 PuLID 或 InstantID 保持面部，通过 depth ControlNet 保持姿势，动画则基于 Wan 2.2。积分和付款记录保存在后端的 SQLite 中。

### 原生应用

下方的 macOS、Windows、Linux、Android 和 iOS 版本是完整的提示词组装器，并额外提供 Telegram 中没有的 **Repose** 模式：上传一张脸，选一个姿势，应用就会生成这个人摆出该姿势的图片，并忠实保留面部（InstantID + depth ControlNet + hi-res + FaceDetailer）。不过 Repose 直接连接 ComfyUI，所以原生应用必须能访问到它。

使用 Flutter 构建。
