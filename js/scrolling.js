"use strict";
// Smooth scrolling

document.querySelectorAll("a:link").forEach(function (link) {
  link.addEventListener("click", function (e) {
    const href = link.getAttribute("href");
    if (href !== "#" && !href.startsWith("#")) {
      return; // Nie wywołuj preventDefault dla linków z innym adresem URL, bez #
    }
    e.preventDefault();

    if (href === "#")
      window.scrollTo({
        top: 0,
        behavior: "smooth",
      });

    if (href !== "#" && href.startsWith("#")) {
      const sectionEl = document.querySelector(href);
      sectionEl.scrollIntoView({ behavior: "smooth" });
    }
  });
});
