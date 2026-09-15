// ol1n.now store — minimal client behaviour.
// Currently a no-op placeholder; reserved for future enhancements
// (screenshot lightbox, platform auto-detection of default download, search).
(function () {
  "use strict";

  // Highlight the download button matching the visitor's OS, if present.
  var p = navigator.platform || "";
  var ua = navigator.userAgent || "";
  var os = /Mac/.test(p) ? "macOS"
         : /Win/.test(p) ? "Windows"
         : /Linux/.test(p) && !/Android/.test(ua) ? "Linux"
         : null;
  if (!os) return;
  document.querySelectorAll(".dl-btn").forEach(function (btn) {
    if ((btn.textContent || "").indexOf(os) !== -1) {
      btn.classList.remove("secondary");
    }
  });
})();

// Parallax: brand logo rises slower than content on scroll (and slides under tiles).
(function () {
  "use strict";
  var logo = document.querySelector(".brand-logo");
  var reduce = window.matchMedia && matchMedia("(prefers-reduced-motion: reduce)").matches;
  if (!logo || reduce) return;
  var f = 0.45; // < 1 → logo stoupá pomaleji než obsah
  var tick = function () {
    logo.style.transform = "translateY(" + (-(window.scrollY || 0) * f) + "px)";
  };
  addEventListener("scroll", tick, { passive: true });
  tick();
})();

// Skins gallery: tab switching + a single shared audio channel, so only one
// sound can ever play at a time. Never autoplays — every play() comes from a
// click, so the browser autoplay policy is never in the way.
(function () {
  "use strict";
  var root = document.querySelector(".skins");
  if (!root) return;
  document.documentElement.classList.add("js"); // unlocks .js .skin-panel[hidden]

  var chips = [].slice.call(root.querySelectorAll(".skin-chip"));
  var panels = [].slice.call(root.querySelectorAll(".skin-panel"));
  if (!chips.length || !panels.length) return;

  var au = new Audio();
  au.preload = "none";
  var queue = [];   // [{src, label, el}]
  var qi = -1;      // index into queue
  var scope = null; // the [data-audio] box that currently owns playback

  // The play button is the one control whose label changes at runtime, so the
  // page hands both wordings down on the .player element — the script must not
  // decide what language the page is in.
  function label(btn, which) {
    var p = btn.closest(".player");
    return (p && p.dataset[which]) || (which === "pause" ? "Pozastavit" : "Přehrát");
  }

  function paint() {
    root.querySelectorAll(".sfx-btn.is-playing").forEach(function (b) { b.classList.remove("is-playing"); });
    root.querySelectorAll('.tracklist li[aria-current="true"]').forEach(function (li) { li.removeAttribute("aria-current"); });
    root.querySelectorAll(".p-play").forEach(function (b) { b.textContent = "▶"; b.setAttribute("aria-label", label(b, "play")); });
    root.querySelectorAll(".p-title").forEach(function (t) { t.textContent = ""; });
    root.querySelectorAll(".p-bar").forEach(function (b) { b.value = 0; });
    if (qi < 0 || !queue[qi] || !scope) return;
    var el = queue[qi].el;
    if (el.classList.contains("sfx-btn")) {
      if (!au.paused) el.classList.add("is-playing");
      return;
    }
    var li = el.closest("li");
    if (li) li.setAttribute("aria-current", "true");
    var player = scope.querySelector(".player");
    if (!player) return;
    player.querySelector(".p-title").textContent = queue[qi].label;
    var play = player.querySelector(".p-play");
    play.textContent = au.paused ? "▶" : "⏸";
    play.setAttribute("aria-label", label(play, au.paused ? "play" : "pause"));
  }

  function stop() {
    au.pause();
    au.removeAttribute("src");
    qi = -1; scope = null;
    paint();
  }

  function playAt(i) {
    if (i < 0 || i >= queue.length) { stop(); return; }
    qi = i;
    au.src = queue[i].src;
    au.play().then(paint, paint);
    paint();
  }

  function load(box, index) {
    scope = box;
    queue = [].slice.call(box.querySelectorAll("a[data-src]")).map(function (a) {
      var d = a.querySelector(".d");
      return {
        src: a.getAttribute("data-src"),
        label: ((d ? a.textContent.replace(d.textContent, "") : a.textContent) || "").replace(/\s+/g, " ").trim(),
        el: a
      };
    });
    playAt(index);
  }

  au.addEventListener("ended", function () {
    if (scope && scope.getAttribute("data-audio") === "music" && qi + 1 < queue.length) playAt(qi + 1);
    else { qi = -1; paint(); }
  });
  au.addEventListener("timeupdate", function () {
    if (!scope) return;
    var bar = scope.querySelector(".p-bar");
    if (bar && au.duration) bar.value = (au.currentTime / au.duration) * 100;
  });

  // one delegated listener for all panels
  root.addEventListener("click", function (e) {
    var a = e.target.closest("a[data-src]");
    if (a) {
      e.preventDefault();
      var box = a.closest("[data-audio]");
      var list = [].slice.call(box.querySelectorAll("a[data-src]"));
      var i = list.indexOf(a);
      if (scope === box && qi === i && !au.paused) { au.pause(); paint(); return; }
      load(box, i);
      return;
    }
    var btn = e.target.closest(".player button");
    if (btn) {
      var pbox = btn.closest("[data-audio]");
      if (scope !== pbox) { load(pbox, 0); return; }
      if (btn.classList.contains("p-prev")) playAt(qi - 1 < 0 ? queue.length - 1 : qi - 1);
      else if (btn.classList.contains("p-next")) playAt((qi + 1) % queue.length);
      else if (au.paused) { au.play().then(paint, paint); }
      else { au.pause(); paint(); }
      return;
    }
    var chip = e.target.closest(".skin-chip");
    if (chip && chip.dataset.skin) { e.preventDefault(); show(chip.dataset.skin); }
  });

  function show(id) {
    var hit = panels.some(function (p) { return p.dataset.skin === id; });
    if (!hit) id = chips[0].dataset.skin;
    panels.forEach(function (p) { p.hidden = p.dataset.skin !== id; });
    chips.forEach(function (c) { c.setAttribute("aria-selected", String(c.dataset.skin === id)); });
    if (history.replaceState) history.replaceState(null, "", "#" + id);
    stop(); // switching skins never leaves audio playing
    // The fleets page keeps sections outside the panels (maneuvers) that fly
    // the chosen fleet's ships, so the choice has to leave this closure.
    document.dispatchEvent(new CustomEvent("gallery:select", { detail: { id: id } }));
  }

  root.querySelectorAll(".player").forEach(function (p) { p.hidden = false; });
  show(decodeURIComponent((location.hash || "").slice(1)) || chips[0].dataset.skin);
  addEventListener("hashchange", function () { show(decodeURIComponent(location.hash.slice(1))); });

  root.querySelector(".skin-picker").addEventListener("keydown", function (e) {
    if (e.key !== "ArrowLeft" && e.key !== "ArrowRight") return;
    var i = chips.indexOf(document.activeElement);
    if (i < 0) return;
    var n = (i + (e.key === "ArrowRight" ? 1 : chips.length - 1)) % chips.length;
    chips[n].focus(); show(chips[n].dataset.skin);
    e.preventDefault();
  });
})();

// Maneuvers (OrbitronTactics fleets page): a unit picker, and one looping
// canvas per maneuver flying the path sampled out of the game's catalog.
//
// The sampling lives in the game repo (tools/dump_maneuvers.dart) precisely so
// this file never reimplements the easing or the anchors — it only interpolates
// between samples and paints. Nothing here runs on any other page.
(function () {
  "use strict";
  var root = document.querySelector(".maneuvers");
  var gallery = document.querySelector(".fleets");
  if (!root || !gallery || !gallery.dataset.slug || !window.fetch) return;
  var BASE = "fleets/" + gallery.dataset.slug + "/";
  var reduce = window.matchMedia && matchMedia("(prefers-reduced-motion: reduce)").matches;

  // Shot colour per unit — the battle element the game arms it with.
  var ELEMENT = {
    pawn: "#dfe4ea", knight: "#4fc3f7", bishop: "#ff8a3d",
    rook: "#7fe7e0", queen: "#c08bff", king: "#c08bff"
  };
  var SHOT_MS = 700;   // how long a shot takes to cross the arena, for show

  var fleet = "vanguard";
  var data = null;
  var images = Object.create(null);
  var cards = [];
  var live = [];

  // Cached per fleet+unit+colour. Returns null until decoded, and the next
  // frame picks it up — no load callbacks to unwind when the fleet changes.
  function sprite(unit, color) {
    var key = fleet + "/" + color + "/" + unit;
    var img = images[key];
    if (!img) {
      img = images[key] = new Image();
      img.src = BASE + fleet + "/" + color + "/" + unit + ".webp";
    }
    return img.complete && img.naturalWidth ? img : null;
  }

  // Faithful to ArenaLayout: altitude 0 is a ship's own edge, 1 just short of
  // the divider, and the two halves face each other. The player's half gets the
  // larger share of the canvas because it is the one being demonstrated.
  function geom(w, h) {
    var div = h * 0.38;
    return {
      x: function (v) { return w * 0.1 + v * w * 0.8; },
      // the edges are pulled in by half a hull, so a ship sitting at altitude 0
      // is drawn whole instead of being clipped by the canvas
      own: function (a) { return (h * 0.86) + a * ((div + h * 0.06) - h * 0.86); },
      foe: function (a) { return h * 0.11 + a * ((div - h * 0.06) - h * 0.11); },
      div: div
    };
  }

  function poseAt(path, t) {
    var n = path.length - 1;
    var f = Math.max(0, Math.min(n, t * n));
    var i = Math.floor(f), k = f - i;
    var a = path[i], b = path[Math.min(n, i + 1)], out = [];
    for (var j = 0; j < 6; j++) out.push(a[j] + (b[j] - a[j]) * k);
    return out;
  }

  // A flat sprite under the game's 3-D attitude: a turn about the ship's long
  // axis is a horizontal squash, one through the vertical a vertical squash —
  // and cos going negative is the hull showing its back, exactly as it should.
  function drawShip(ctx, img, x, y, size, pose, bank) {
    if (!img) return;
    var sx = Math.cos(-bank * 0.7 - pose[2] * 2 * Math.PI);
    var sy = Math.cos(pose[3] * 0.45 + pose[4] * Math.PI);
    ctx.save();
    ctx.translate(x, y);
    ctx.rotate(-bank * 0.18);
    ctx.scale(Math.abs(sx) < 0.03 ? 0.03 : sx, Math.abs(sy) < 0.03 ? 0.03 : sy);
    ctx.drawImage(img, -size / 2, -size / 2, size, size);
    ctx.restore();
  }

  function drawFlame(ctx, x, y, size, boost, color) {
    if (boost <= 0.02) return;
    var top = y + size * 0.28, len = size * (0.2 + 0.5 * boost);
    var grad = ctx.createLinearGradient(0, top, 0, top + len);
    grad.addColorStop(0, color);
    grad.addColorStop(1, "rgba(255,255,255,0)");
    ctx.save();
    ctx.globalAlpha = 0.45 + 0.45 * boost;
    ctx.fillStyle = grad;
    ctx.beginPath();
    ctx.moveTo(x - size * 0.11, top);
    ctx.lineTo(x + size * 0.11, top);
    ctx.lineTo(x, top + len);
    ctx.closePath();
    ctx.fill();
    ctx.restore();
  }

  function makeCard(el) {
    var canvas = el.querySelector(".man-canvas");
    var man = data.paths[el.dataset.man];
    if (!canvas || !man) return null;
    var ctx = canvas.getContext("2d");
    var unit = el.dataset.unit;
    var color = ELEMENT[unit] || "#ffffff";
    var loop = Math.max(400, man.d) + 700;          // a beat of hold before it repeats
    var offset = Math.random() * loop;              // so thirteen cards do not pulse as one
    var fired = [], shots = [], last = -1, dpr = 0;

    function reset() { fired.length = 0; shots.length = 0; last = -1; }

    function resize() {
      var want = Math.min(3, window.devicePixelRatio || 1);
      var w = Math.round(canvas.clientWidth * want);
      if (!w || (w === canvas.width && want === dpr)) return;
      dpr = want;
      canvas.width = w;
      canvas.height = w;
    }

    function frame(now) {
      resize();
      var w = canvas.width, h = canvas.height, g = geom(w, h);
      var span = (now + offset) % loop;
      if (span < last) reset();
      last = span;

      var t = Math.min(1, span / man.d);
      var pose = poseAt(man.p, t);
      var prev = poseAt(man.p, Math.max(0, t - 0.03));
      var e = data.enemy[Math.min(data.enemy.length - 1, Math.round(t * (data.enemy.length - 1)))];
      var sx = g.x(pose[0]), sy = g.own(pose[1]);
      var size = w * 0.36 * (0.7 + 0.6 * pose[1]);

      ctx.clearRect(0, 0, w, h);

      ctx.save();
      ctx.strokeStyle = "rgba(255,255,255,0.14)";
      ctx.lineWidth = dpr; ctx.setLineDash([5 * dpr, 6 * dpr]);
      ctx.beginPath(); ctx.moveTo(0, g.div); ctx.lineTo(w, g.div); ctx.stroke();
      ctx.restore();

      // the whole path in outline, then the part already flown
      ctx.save();
      ctx.lineWidth = 2 * dpr; ctx.lineJoin = "round"; ctx.lineCap = "round";
      for (var pass = 0; pass < 2; pass++) {
        var upto = pass ? Math.floor(t * (man.p.length - 1)) : man.p.length - 1;
        ctx.strokeStyle = pass ? color : "rgba(255,255,255,0.22)";
        ctx.globalAlpha = pass ? 0.9 : 1;
        ctx.beginPath();
        for (var i = 0; i <= upto; i++) {
          var q = man.p[i];
          if (i) ctx.lineTo(g.x(q[0]), g.own(q[1])); else ctx.moveTo(g.x(q[0]), g.own(q[1]));
        }
        ctx.stroke();
      }
      ctx.restore();

      var foe = sprite(unit, "black");
      if (foe) {
        var halo = ctx.createRadialGradient(g.x(e[0]), g.foe(e[1]), 0, g.x(e[0]), g.foe(e[1]), w * 0.22);
        halo.addColorStop(0, "rgba(255,255,255,0.13)");
        halo.addColorStop(1, "rgba(255,255,255,0)");
        ctx.fillStyle = halo;
        ctx.fillRect(0, 0, w, g.div);
        var fs = w * 0.28 * (0.7 + 0.6 * e[1]);
        ctx.save();
        ctx.globalAlpha = 0.8;
        ctx.translate(g.x(e[0]), g.foe(e[1]));
        ctx.rotate(Math.PI);                       // the far ship faces back at us
        ctx.drawImage(foe, -fs / 2, -fs / 2, fs, fs);
        ctx.restore();
      }

      // shots leave at their cue and simply cross the arena; the engine's real
      // hit test is on altitude, which has no second axis to draw here
      (man.f || []).forEach(function (cue, ci) {
        if (t < cue[0] || fired.indexOf(ci) !== -1) return;
        fired.push(ci);
        for (var s = 0; s < cue[1]; s++) {
          shots.push({ x: pose[0] + cue[2] * (s - (cue[1] - 1) / 2), y: pose[1], born: span });
        }
      });
      ctx.save();
      ctx.strokeStyle = color; ctx.lineWidth = 2 * dpr; ctx.lineCap = "round";
      shots = shots.filter(function (s) { return span - s.born < SHOT_MS; });
      shots.forEach(function (s) {
        var k = (span - s.born) / SHOT_MS;
        var from = g.own(s.y), y = from - k * (from + h * 0.06);
        ctx.globalAlpha = 1 - k * 0.7;
        ctx.beginPath();
        ctx.moveTo(g.x(s.x), y); ctx.lineTo(g.x(s.x), y + 9 * dpr);
        ctx.stroke();
      });
      ctx.restore();

      // the untouchable window — shots pass straight through it
      if (man.u && t >= man.u[0] && t <= man.u[1]) {
        ctx.save();
        ctx.globalAlpha = 0.3 + 0.2 * Math.sin(now / 80);
        ctx.strokeStyle = "#7fe7e0"; ctx.lineWidth = 2 * dpr;
        ctx.beginPath(); ctx.arc(sx, sy, size * 0.55, 0, 2 * Math.PI); ctx.stroke();
        ctx.restore();
      }

      drawFlame(ctx, sx, sy, size, pose[5], color);
      drawShip(ctx, sprite(unit, "white"), sx, sy, size, pose, (pose[0] - prev[0]) * 14);
    }

    canvas.__card = { el: el, frame: frame, reset: reset };
    el.__card = canvas.__card;
    return el.__card;
  }

  // ---- one rAF loop for every visible card ----
  var running = false;
  function tick(now) {
    for (var i = 0; i < live.length; i++) live[i].frame(now);
    running = live.length > 0;
    if (running) requestAnimationFrame(tick);
  }
  function kick() {
    if (running || reduce || !live.length) return;
    running = true;
    requestAnimationFrame(tick);
  }

  // Only cards on screen inside the open unit panel are painted — seventy-four
  // canvases would otherwise all run at once.
  var io = window.IntersectionObserver ? new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      var card = entry.target.__card;
      if (!card) return;
      var i = live.indexOf(card);
      if (entry.isIntersecting && i === -1) { card.reset(); live.push(card); }
      else if (!entry.isIntersecting && i !== -1) live.splice(i, 1);
      if (reduce && entry.isIntersecting) card.frame(performance.now());
    });
    kick();
  }, { rootMargin: "160px" }) : null;

  var unitChips = [].slice.call(root.querySelectorAll(".unit-chip"));
  var unitPanels = [].slice.call(root.querySelectorAll(".unit-panel"));

  function showUnit(id) {
    if (!unitChips.some(function (c) { return c.dataset.unit === id; })) id = unitChips[0].dataset.unit;
    unitPanels.forEach(function (p) { p.hidden = p.dataset.unit !== id; });
    unitChips.forEach(function (c) { c.setAttribute("aria-selected", String(c.dataset.unit === id)); });
    live = live.filter(function (c) { return c.el.dataset.unit === id; });
    if (io) {
      cards.forEach(function (c) {
        io.unobserve(c.el);
        if (c.el.dataset.unit === id) io.observe(c.el);
      });
    } else {
      live = cards.filter(function (c) { return c.el.dataset.unit === id; });
      if (reduce) live.forEach(function (c) { c.frame(performance.now()); });
    }
    kick();
  }

  root.addEventListener("click", function (ev) {
    var chip = ev.target.closest(".unit-chip");
    if (!chip) return;
    ev.preventDefault();
    showUnit(chip.dataset.unit);
  });

  root.querySelector(".unit-picker").addEventListener("keydown", function (ev) {
    if (ev.key !== "ArrowLeft" && ev.key !== "ArrowRight") return;
    var i = unitChips.indexOf(document.activeElement);
    if (i < 0) return;
    var n = (i + (ev.key === "ArrowRight" ? 1 : unitChips.length - 1)) % unitChips.length;
    unitChips[n].focus(); showUnit(unitChips[n].dataset.unit);
    ev.preventDefault();
  });

  // The fleet picker lives in the panel section above; the ships flown down
  // here follow whatever it selected.
  document.addEventListener("gallery:select", function (ev) {
    fleet = ev.detail.id;
    root.querySelectorAll("[data-unit-img]").forEach(function (img) {
      img.src = BASE + fleet + "/white/" + img.getAttribute("data-unit-img") + ".webp";
    });
  });

  addEventListener("resize", function () { live.forEach(function (c) { c.frame(performance.now()); }); });

  fetch(BASE + "maneuvers.json").then(function (r) { return r.json(); }).then(function (json) {
    data = json;
    cards = [].slice.call(root.querySelectorAll(".man-card")).map(makeCard).filter(Boolean);
    if (!cards.length) return;
    document.documentElement.classList.add("js");   // unlocks .js .unit-panel[hidden]
    showUnit(unitChips[0].dataset.unit);
  }).catch(function () { /* no maneuvers.json: every panel stays open and static */ });
})();
