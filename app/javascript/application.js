
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
// import flatpickr from "flatpickr"
// flatpickr(".datepicker", {
//   altInput: true,
//   altFormat: "F j, Y",
//   dateFormat: "Y-m-d",
// });


import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

document.addEventListener("DOMContentLoaded", () => {
  const startDateInput = document.querySelector("#booking_start_date");
  const endDateInput = document.querySelector("#booking_end_date");
  const unavailableDiv = document.querySelector("#booking-dates");

  if (!startDateInput || !endDateInput || !unavailableDiv) return;

  const unavailable = JSON.parse(unavailableDiv.dataset.unavailableDates);
  const dates = unavailable.map(d => d.split("T")[0]); // format yyyy-mm-dd

  flatpickr(startDateInput, {
    dateFormat: "Y-m-d",
    minDate: "today",
    disable: dates
  });

  flatpickr(endDateInput, {
    dateFormat: "Y-m-d",
    minDate: "today",
    disable: dates
  });
});

import FlashController from "./controllers/flash_controller"
application.register("flash", FlashController)

document.addEventListener("DOMContentLoaded", () => {
  const dateDiv = document.getElementById("booking-dates");
  if (!dateDiv) return;

  const unavailableDates = JSON.parse(dateDiv.dataset.unavailableDates);

  const startDateField = document.getElementById("booking_start_date");
  const endDateField = document.getElementById("booking_end_date");

  const disableUnavailableDates = (input) => {
    input.addEventListener("input", () => {
      const selectedDate = input.value;
      if (unavailableDates.includes(selectedDate)) {
        alert("Cette date est déjà réservée !");
        input.value = "";
      }
    });
  };

  if (startDateField) disableUnavailableDates(startDateField);
  if (endDateField) disableUnavailableDates(endDateField);
});
