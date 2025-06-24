// // | Concept             | Example                                       |
// // | ------------------- | --------------------------------------------- |
// // | Get element         | `document.getElementById("main-title")`       |
// // | Change text         | `element.textContent = "New Text"`            |
// // | Change style        | `element.style.color = "red"`                 |
// // | Listen to events    | `element.addEventListener("click", callback)` |
// // | Change input values | `input.value = "Hello"`                       |
// // | Create new elements | `document.createElement("p")`                 |
// // | Add element to page | `parent.appendChild(newElement)`              |
// // | Remove element      | `element.remove()`                            |


// // Get elements
// var title = document.getElementById("text"); 
// var input = document.getElementById("change"); 
// var changeBtn = document.getElementById("click"); 
// var resetBtn = document.getElementById("Reset"); 

// // Change title when button is clicked
// changeBtn.addEventListener("click", () => {
//   const newText = input.value.trim();

//   if (newText !== "") {
//     title.textContent = newText;
//   } else {
//     alert("Please enter some text.");
//   }
// });

// // Reset title and clear input
// resetBtn.addEventListener("click", () => {
//   title.textContent = "Dom Practice";
//   input.value = "";
// });

// // Optional: Pressing Enter in input also triggers title change
// input.addEventListener("keydown", (event) => {
//   if (event.key === "Enter") {
//     changeBtn.click(); // Same as clicking the change button
//   }
// });

// document.addEventListener("DOMContentLoaded", () => {
//   var title = document.getElementById("text");
//   var input = document.getElementById("change");

//   document.body.addEventListener("click", (event) => {
//     if (event.target.id === "click") {
//       const val = input.value.trim();
//       if (val) {
//         title.textContent = val;
//       } else {
//         alert("Please enter some text.");
//       }
//     } else if (event.target.id === "Reset") {
//       title.textContent = "Dom Practice";
//       input.value = "";
//     }
//   });

//   input.addEventListener("keydown", (e) => {
//     if (e.key === "Enter") {
//       document.getElementById("click").click();
//     }
//   });
// });

document.addEventListener("DOMContentLoaded", () => {
  var title = document.getElementById("text");
  var input = document.getElementById("change");
  var changeBtn = document.getElementById("click");
  var resetBtn = document.getElementById("Reset");

  function changeTitle() {
    const val = input.value.trim();
    if (val) title.textContent = val;
    else alert("Please enter some text.");
  }

  function resetTitle() {
    title.textContent = "Dom Practice";
    input.value = "";
  }

  changeBtn.addEventListener("click", changeTitle);
  resetBtn.addEventListener("click", resetTitle);
  input.addEventListener("keydown", (e) => {
    if (e.key === "Enter") changeTitle();
  });
});

