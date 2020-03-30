var completed = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");
var hey = document.querySelector(".card-task");
var checkBox = document.querySelector(".far fa-square");

// to-do:
// add milestone tasks under recommended tasks
// select them unique id
//once they're added to task list, add a click event, which will toggle "complete" in the progress bar with matching id


console.log(hey);

function add(){

}


function toggleComplete(){
  var lastComplete = completed[completed.length - 1];
  lastComplete.classList.toggle('complete');
}

toggleButton.onclick = toggleComplete;
document.addEventListener("change", add());
