//= require_tree .
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


import "bootstrap";
import "../plugins/flatpickr"
import "./sweetalert"

require("flickity")
import "flickity/dist/flickity.min.css";

$(".main-carousel").flickity({
  contain: true
});


// MILESTONES //
document.getElementById("milestone").addEventListener("click", displayEditForm;
  function displayEditForm() {
  document.getElementById("milestone-input-form").style.display = "block";
}
