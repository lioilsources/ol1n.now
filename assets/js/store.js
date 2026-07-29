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

  function paint() {
    root.querySelectorAll(".sfx-btn.is-playing").forEach(function (b) { b.classList.remove("is-playing"); });
    root.querySelectorAll('.tracklist li[aria-current="true"]').forEach(function (li) { li.removeAttribute("aria-current"); });
    root.querySelectorAll(".p-play").forEach(function (b) { b.textContent = "▶"; b.setAttribute("aria-label", "Přehrát"); });
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
    play.setAttribute("aria-label", au.paused ? "Přehrát" : "Pozastavit");
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
