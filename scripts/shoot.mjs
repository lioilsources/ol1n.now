// Mobile screenshots from headless Chrome over the DevTools protocol.
//
//   node shoot.mjs plan.json
//
// plan.json = { "device": {...optional}, "dark": true, "steps": [ ... ] }
// Steps (executed in order):
//   {"goto": url}                 navigate and wait for load
//   {"wait": ms}                  sleep
//   {"waitFor": css, "timeout"}   wait until a selector exists
//   {"click": css}                click the element's centre
//   {"clickText": text, "in": css} click the smallest element whose text contains `text`
//   {"tap": [x, y]}               tap at CSS pixel coordinates
//   {"type": text}                insert text into the focused element
//   {"key": "Enter"}              press a key
//   {"scroll": dy}                scroll the page by dy CSS pixels
//   {"eval": js}                  run JS in the page (result is logged)
//   {"shot": "out.png", "full": false}  screenshot (viewport, or full page)
// Needs nothing but Node >= 22 (global WebSocket) and Chrome.
import { spawn } from "node:child_process";
import { mkdtempSync, readFileSync, writeFileSync, mkdirSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { dirname, join } from "node:path";

const CHROME = process.env.CHROME ||
  "/Volumes/YOTTA/Applications/Google Chrome.app/Contents/MacOS/Google Chrome";
const plan = JSON.parse(readFileSync(process.argv[2], "utf8"));
const dev = { width: 402, height: 874, scale: 3, ...(plan.device || {}) };
const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

const profile = mkdtempSync(join(tmpdir(), "shoot-"));
const port = 9300 + Math.floor(Math.random() * 500);
const chrome = spawn(CHROME, [
  "--headless=new", `--remote-debugging-port=${port}`, `--user-data-dir=${profile}`,
  "--no-first-run", "--hide-scrollbars", "--mute-audio",
  // software WebGL, so three.js / model-viewer pages render headless
  "--use-angle=swiftshader", "--enable-unsafe-swiftshader", "--ignore-gpu-blocklist",
  "--autoplay-policy=no-user-gesture-required", "about:blank",
], { stdio: "ignore" });

let ws, seq = 0;
const pending = new Map();
function send(method, params = {}) {
  const id = ++seq;
  ws.send(JSON.stringify({ id, method, params }));
  return new Promise((res, rej) => pending.set(id, { res, rej, method }));
}

async function connect() {
  for (let i = 0; i < 240; i++) {
    try {
      const list = await (await fetch(`http://127.0.0.1:${port}/json/list`)).json();
      const page = list.find((t) => t.type === "page");
      if (page) return page.webSocketDebuggerUrl;
    } catch {}
    await sleep(250);
  }
  throw new Error("Chrome did not start");
}

async function evalJs(expr) {
  const r = await send("Runtime.evaluate", { expression: expr, returnByValue: true, awaitPromise: true });
  if (r.exceptionDetails) throw new Error("eval failed: " + JSON.stringify(r.exceptionDetails).slice(0, 300));
  return r.result.value;
}

async function tap(x, y) {
  for (const type of ["mousePressed", "mouseReleased"]) {
    await send("Input.dispatchMouseEvent", { type, x, y, button: "left", clickCount: 1, pointerType: "mouse" });
  }
}

async function centreOf(js) {
  const r = await evalJs(`(() => { const el = ${js}; if (!el) return null;
    el.scrollIntoView({block: "center", inline: "center"});
    const b = el.getBoundingClientRect(); return [b.x + b.width / 2, b.y + b.height / 2]; })()`);
  if (!r) throw new Error("element not found: " + js);
  return r;
}

try {
  ws = new WebSocket(await connect());
  await new Promise((r) => (ws.onopen = r));
  ws.onmessage = (m) => {
    const msg = JSON.parse(m.data);
    if (msg.id && pending.has(msg.id)) {
      const p = pending.get(msg.id); pending.delete(msg.id);
      msg.error ? p.rej(new Error(`${p.method}: ${msg.error.message}`)) : p.res(msg.result);
    }
  };
  await send("Page.enable");
  await send("Runtime.enable");
  await send("Emulation.setDeviceMetricsOverride",
    { width: dev.width, height: dev.height, deviceScaleFactor: dev.scale, mobile: dev.mobile !== false });
  if (dev.mobile !== false) {
    await send("Emulation.setTouchEmulationEnabled", { enabled: true, maxTouchPoints: 5 });
    await send("Emulation.setUserAgentOverride", { userAgent:
      "Mozilla/5.0 (iPhone; CPU iPhone OS 26_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1" });
  }
  if (plan.locale) {
    await send("Emulation.setLocaleOverride", { locale: plan.locale });
    await send("Network.enable");
    await send("Network.setUserAgentOverride", { userAgent: await evalJs("navigator.userAgent"),
      acceptLanguage: plan.locale, platform: "iPhone" });
    await evalJs(`Object.defineProperty(navigator, "languages", {get: () => ["${plan.locale}"]})`);
    await send("Page.addScriptToEvaluateOnNewDocument", { source:
      `Object.defineProperty(navigator, "language", {get: () => "${plan.locale}"});
       Object.defineProperty(navigator, "languages", {get: () => ["${plan.locale}", "${plan.locale.split("-")[0]}"]});` });
  }
  await send("Emulation.setEmulatedMedia", { features: [
    { name: "prefers-color-scheme", value: plan.dark === false ? "light" : "dark" },
    { name: "prefers-reduced-motion", value: "reduce" }] });

  for (const s of plan.steps) {
    if (s.goto) {
      await send("Page.navigate", { url: s.goto });
      for (let i = 0; i < 120; i++) { if ((await evalJs("document.readyState")) === "complete") break; await sleep(250); }
      await sleep(s.settle ?? 1500);
    } else if (s.wait) await sleep(s.wait);
    else if (s.waitFor) {
      const until = Date.now() + (s.timeout || 20000);
      while (!(await evalJs(`!!document.querySelector(${JSON.stringify(s.waitFor)})`))) {
        if (Date.now() > until) throw new Error("timeout waiting for " + s.waitFor);
        await sleep(250);
      }
    } else if (s.waitJs) {
      const until = Date.now() + (s.timeout || 60000);
      while (!(await evalJs(s.waitJs))) {
        if (Date.now() > until) { console.log("waitJs timed out:", s.waitJs.slice(0, 80)); break; }
        await sleep(1000);
      }
      await sleep(s.settle ?? 800);
    } else if (s.click) {
      const [x, y] = await centreOf(`document.querySelector(${JSON.stringify(s.click)})`);
      await tap(x, y); await sleep(s.settle ?? 800);
    } else if (s.clickText) {
      const scope = s.in || "body";
      const [x, y] = await centreOf(`[...document.querySelectorAll(${JSON.stringify(scope + ", " + scope + " *")})]
        .filter(e => e.offsetParent !== null && (e.innerText || e.getAttribute("aria-label") || "").includes(${JSON.stringify(s.clickText)}))
        .sort((a, b) => (a.innerText || "").length - (b.innerText || "").length)[0]`);
      await tap(x, y); await sleep(s.settle ?? 800);
    } else if (s.drag) {
      // drag through the points; with "hold" the pointer stays down so the
      // in-progress gesture (e.g. a swipe trail) can be photographed
      const pts = s.drag;
      await send("Input.dispatchMouseEvent", { type: "mousePressed", x: pts[0][0], y: pts[0][1], button: "left", clickCount: 1 });
      for (let i = 1; i < pts.length; i++) {
        const [ax, ay] = pts[i - 1], [bx, by] = pts[i];
        for (let k = 1; k <= 12; k++) {
          await send("Input.dispatchMouseEvent", { type: "mouseMoved", x: ax + (bx - ax) * k / 12, y: ay + (by - ay) * k / 12, button: "left", buttons: 1 });
          await sleep(16);
        }
      }
      if (!s.hold) { const [lx, ly] = pts[pts.length - 1];
        await send("Input.dispatchMouseEvent", { type: "mouseReleased", x: lx, y: ly, button: "left", clickCount: 1 }); }
      await sleep(s.settle ?? 600);
    } else if (s.release) {
      await send("Input.dispatchMouseEvent", { type: "mouseReleased", x: s.release[0], y: s.release[1], button: "left", clickCount: 1 });
      await sleep(s.settle ?? 800);
    } else if (s.tap) { await tap(s.tap[0], s.tap[1]); await sleep(s.settle ?? 800); }
    else if (s.type) { await send("Input.insertText", { text: s.type }); await sleep(300); }
    else if (s.key) {
      for (const type of ["keyDown", "keyUp"]) await send("Input.dispatchKeyEvent",
        { type, key: s.key, code: s.key, windowsVirtualKeyCode: s.key === "Enter" ? 13 : 0 });
      await sleep(s.settle ?? 800);
    } else if (s.scroll) { await evalJs(`window.scrollBy(0, ${s.scroll})`); await sleep(500); }
    else if (s.eval) console.log("eval:", JSON.stringify(await evalJs(s.eval)).slice(0, 400));
    else if (s.shot) {
      const params = { format: "png", captureBeyondViewport: !!s.full };
      if (s.full) {
        const h = await evalJs("document.documentElement.scrollHeight");
        params.clip = { x: 0, y: 0, width: dev.width, height: Math.min(h, 6000), scale: 1 };
      }
      const r = await send("Page.captureScreenshot", params);
      mkdirSync(dirname(s.shot), { recursive: true });
      writeFileSync(s.shot, Buffer.from(r.data, "base64"));
      console.log("shot:", s.shot);
    }
  }
} catch (e) {
  console.error("ERROR:", e.message);
  process.exitCode = 1;
} finally {
  try { ws && ws.close(); } catch {}
  chrome.kill("SIGKILL");
  await sleep(300);
  rmSync(profile, { recursive: true, force: true });
}
