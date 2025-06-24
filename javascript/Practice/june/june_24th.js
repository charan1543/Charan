// setTimeout(() => {
//   console.log("This runs after 2 seconds");
// }, 2000);

// setInterval(() => {
//   console.log("This runs every 3 seconds");
// }, 3000);

// Get DOM elements
var title = document.getElementById("title");
var input = document.getElementById("textInput");
var changeBtn = document.getElementById("btnChange");
var resetBtn = document.getElementById("btnReset");
var list = document.getElementById("list");
// Change title text to input value
changeBtn.addEventListener("click", () => {
  var newText = input.value.trim();
  if (newText) {
    title.textContent = newText;
  }
});

// Reset title to default
resetBtn.addEventListener("click", () => {
  title.textContent = "DOM Practice Page";
  input.value = "";
});

// Add item to list when Enter is pressed
input.addEventListener("keydown", (e) => {
  if (e.key === "Enter" && input.value.trim() !== "") {
    const newItem = document.createElement("li");
    newItem.textContent = input.value.trim();
    list.appendChild(newItem);
    input.value = "";
  }
});

// setInterval(() => {
//   console.log("This runs every 1 second");
// }, 1000