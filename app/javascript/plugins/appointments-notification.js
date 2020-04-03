import { fetchWithToken } from "../utils/fetch_with_token";

const  appNotification = () => {
  setInterval(() => {
    const appointmentList = document.querySelectorAll(".card-inline-appointment[data-appointment-pending='pending confirmation']");
    const appointmentIds = [];

    appointmentList.forEach((appointment) => {
      appointmentIds.push(appointment.dataset.appointmentId);
    })

      fetchWithToken("/appointments", {
        method: "POST",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ appointments: appointmentIds })
      })
        .then(response => response.json())
        .then((data) => {
          // handle JSON response from server
          data.appointments.forEach((appointmentId)=> {
            const appointment = document.querySelector(`.card-inline-appointment[data-appointment-id='${appointmentId}']`);
            appointment.querySelector(".appointment-status").innerHTML = "<strong>Status: </strong>Confirmed";
            const advisor = document.querySelector('#advisor-name').innerText;
            const appStat = appointment.getAttribute('data-appointment-pending');
            console.log(appStat);
            if (appStat == 'confirmed') {
              alert(`Your appointment ${advisor} is now confirmed.`);
              appointment.setAttribute("data-appointment-pending", "pending confirmation");
            }
          })
          console.log(data);
        });
  }, 5000)
}

export {appNotification};
