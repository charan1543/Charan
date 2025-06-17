function factorial(n) {
  let result = 1;
  for (let i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

console.log(factorial(4));

function reverseString(str) {
  return str.split('').reverse().join('');
}

console.log(reverseString("hello"))

function findMax(arr) {
  let max = arr[0];
  for (let i = 1; i < arr.length; i++) {
    if (arr[i] > max) max = arr[i];
  }
  return max;
}

console.log(findMax([1, 22, 3, 99, 14]));

var num = 15;
if (num % 3 === 0 || num % 5 === 0) {
  console.log("Yes");
} else {
  console.log("No");
}

// var secretNumber = Math.floor(Math.random() * 10) + 1;
// var guess;
// var tries = 0;

// while (guess !== secretNumber) {
//   guess = parseInt(prompt("Guess a number between 1 and 10:"));
//   tries++;

//   if (guess === secretNumber) {
//     alert("Correct! You guessed it in " + tries + " tries.");
//   } else if (guess < secretNumber) {
//     alert("Too low. Try again.");
//   } else if (guess > secretNumber) {
//     alert("Too high. Try again.");
//   } else {
//     alert("Please enter a valid number.");
//   }
// }
for (let i = 1; i <= 5; i++) {
  let row = "";
  for (let j = 1; j <= 5; j++) {
    row += "* ";
  }
  console.log(row);
}

for (var i = 1; i <= 5; i++) {
  var line = "";
  for (var j = 1; j <= i; j++) {
    line += j + " ";
  }
  console.log(line);
}

var i = 1;
do {
  console.log('i =', i);
  i++;
} 
while (i <= 5);

for (let i = 1; i <= 10; i++) {
  if (i > 5) break; 
  console.log('i =', i);
}

for (let i = 1; i <= 5; i++) {
  if (i === 3) continue; 
  console.log('i =', i);
}

let person = {
  name: "Alice",
  age: 30,
  city: "New York"
};
for (let key in person) {
  console.log(key + ": " + person[key]);
}

// | Loop Type    | Use For                                 |
// | ------------ | --------------------------------------- |
// | `for`        | Known number of times / arrays          |
// | `while`      | Unknown number of times                 |
// | `do...while` | At least once, then check condition     |
// | `for...of`   | Looping through array values            |
// | `for...in`   | Looping through object properties       |
// | `break`      | Stops the loop immediately              |
// | `continue`   | Skips current iteration, continues loop |


var word = "hello";

for (let char of word) {
  console.log(char);
}

var values = [10, 15, 20, 25];
var evens = [];

for (var val of values) {
  if (val % 2 === 0) {
    evens.push(val);
  }
}

console.log("Even numbers:", evens);

var pets = ["cat", "dog", "rabbit"];

for (let pet of pets) {
  console.log("I have a pet " + pet + ".");
}

// Write a function using for...of that:

// Takes an array of numbers
// Returns only numbers greater than 50

// Control statements

var marks = 75;

if (marks >= 90) {
  console.log("Grade A");
} else if (marks >= 75) {
  console.log("Grade B");
} else if (marks >= 60) {
  console.log("Grade C");
} else {
  console.log("Grade D");
}

// switch Statement

var day = "Tuesday";

switch (day) {
  case "Monday":
    console.log("Start of the week");
    break;
  case "Tuesday":
    console.log("Second day");
    break;
  case "Friday":
    console.log("Almost weekend!");
    break;
  default:
    console.log("Another day");
}

// | Statement   | Use When...                     |
// | ----------- | ------------------------------- |
// | `if`        | One condition to check          |
// | `if...else` | One true/false decision         |
// | `else if`   | Many possible conditions        |
// | `switch`    | One variable, many exact values |
// | `break`     | Exit loop or switch early       |
// | `continue`  | Skip one loop step and move on  |

// Login Check (if...else)
var username = "admin";
var possword = "8970";
if (username === "admin" && possword == "8970"){
    console.log ("Login successful!");
} else {
  console.log("Invalid login.");
}

// switch_case

var a = 10;
var b = 5;
var operator = "*";
switch (operator) {
  case "+":
    console.log("Result =", a + b);
    break;
  case "-":
    console.log("Result =", a - b);
    break;
  case "*":
    console.log("Result =", a * b);
    break;
  case "/":
    console.log("Result =", a / b);
    break;
  default:
    console.log("Invalid operator");
}
