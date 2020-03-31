var completed = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");
var hey = document.querySelector(".card-task");
var checkBox = document.querySelectorAll("i#status");
var tasks = document.querySelectorAll("#CSQ")
var taskDetails = document.querySelector(".task-details #milestone").innerText;
var journeyDetails = document.querySelector(".timestamp .author").innerText;

// to-do:
// add milestone tasks under recommended tasks
// select them unique id
//once they're added to task list, add a click event, which will toggle "complete" in the progress bar with matching id

console.log(checkBox);
console.log(tasks);
console.log(hey);
console.log(taskDetails);
console.log(journeyDetails);



function toggleComplete(){
  var lastComplete = completed[completed.length - 1];
  lastComplete.classList.toggle('complete');
}

// tasks.onclick = add;


// toggleButton.onclick = toggleComplete;
// document.addEventListener("change", add());

checkBox.onchange = function(){
  if (taskDetails == journeyDetails) {

  }

};
