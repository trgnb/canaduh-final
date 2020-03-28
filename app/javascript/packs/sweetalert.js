import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert', {
  title: "Your appointment is booked.",
  text: "Check dashboard for confirmation",
  icon: "success"
}, (value) => {
  console.log(value);

  if (value) {
    const link = document.querySelector('#book-appointment')
    link.click();
  }
});


initSweetalert('#sweet-alert2', {
  title: "Your ride is booked.",
  text: "Check dashboard for confirmation",
  icon: "success"
}, (value) => {
  console.log(value);

  if (value) {
    const link = document.querySelector('#book-ride')
    link.click();
  }
});
