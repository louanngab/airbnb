import flatpickr from "flatpickr"
flatpickr(".datepicker", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
});

import FlashController from "./controllers/flash_controller"
application.register("flash", FlashController)
