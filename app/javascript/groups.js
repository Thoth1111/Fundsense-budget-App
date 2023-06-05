document.addEventListener("DOMContentLoaded", function() {
    const searchIcon = document.querySelector(".search-icon");
    const searchForm = document.querySelector(".search-form");

    searchIcon.addEventListener("click", function() {
        searchForm.classList.toggle("hidden");
        searchForm.querySelector("input").focus();
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const menuButton = document.querySelector(".menu-btn");
    const menu = document.querySelector(".menu");

    menuButton.addEventListener("click", function() {
        menu.classList.toggle("hidden");
    });
});
