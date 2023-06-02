document.addEventListener("DOMContentLoaded", function() {
    const searchIcon = document.querySelector(".search-icon");
    const searchForm = document.querySelector(".search-form");

    searchIcon.addEventListener("click", function() {
        searchForm.classList.toggle("hidden");
        searchForm.querySelector("input").focus();
    });
});