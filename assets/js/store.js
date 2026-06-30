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
