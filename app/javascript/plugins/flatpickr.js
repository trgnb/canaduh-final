import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/material_red.css"

// Appointment Calendar //
flatpickr(".datepicker",
  {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minTime: "09:00",
    maxTime: "17:00",
    // inline: true,
    // static: false,
    // position: "above",
  }
)

// Milestones Calendar //
flatpickr(".datepicker1",
  {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  }
)

// Rides Calendar //
flatpickr(".datepicker2",
  {
    dateFormat: "Y-m-d H:i",
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  }
)
