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
