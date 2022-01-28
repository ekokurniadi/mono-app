// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("DOMContentLoaded", function() {
    document.querySelector("#btn-home").addEventListener("click", function() {
        alert("Hello World!");
    });
})