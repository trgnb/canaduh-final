import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/material_red.css"

flatpickr(".datepicker",
  {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    minTime: "09:00",
    maxTime: "17:00",
    inline: true,
    static: false,
    position: "above",
  }
)
