// itterators
// value
// Done true / false.
var arr =[1,2,3,4,5]
var a = arr [Symbol.iterator]();
console.log (a.next())
console.log (a.next())
console.log (a.next())
console.log (a.next())
console.log (a.next())
console.log (a.next())

// Manual Iteration with while
var arr = ['c','d','f'];
var iter = arr[Symbol.iterator]();
    var result= iter.next();
    while (!result.done) {
    console.log(result.value);
    result = iter.next();
}

// Custom Iterator (Using Object)
var str = "hello";
var it = str[Symbol.iterator]();

console.log(it.next().value); // h
console.log(it.next().value);//e

// Iterating with for...of (Under the Hood Uses Iterator)

var n = [1, 2, 3];

for (const num of n) {
    console.log(num); // 1 2 3
}

// genaretors
function* genaretors(){
    yield "learn"
    yield "js"
    yield "genaretor"
}
var a = genaretors()
console.log(a.next())
console.log(a.next())
console.log(a.next())
console.log(a.next())

function* countToThree() {
    yield 1;
    yield 2;
    yield 3;
}

for (let num of countToThree()) {
    console.log(num); // 1, 2, 3
}

// Promises 
// timer function
// synchronous code

console.log ("hi")
window.setTimeout(()=>{
    console.log ('two')
},1000)

window.setTimeout(()=>{
    console.log ('three')
},2000)
Promise.resolve().then (()=>{
    console.log ("four")
})
console.log ("five")

// synchronous code
// -> call stag store exicution 1 -> web api deciaded to move micro / macro

// promises micro task queue 3

// timer function macro task queue.2
var a= 10
var b = "20"

console.log (a+b)//1020
// The + operator with a string coerces the number into a string, then concatenates:

console.log (a-b)
// The - operator does not support string concatenation, so JavaScript tries to coerce both to numbers.

console.log(true + false);//1

console.log(undefined + 1); //NaN

console.log([] + 1);//1

console.log([1,2] + [3,4]);// 1,23,4

// Global Execution Context
// When a JS file is run, the interpreter first creates a global execution context.

// It has two phases:

// Creation Phase: Memory is allocated for variables and functions (hoisting).

// Execution Phase: Code is executed line by line.

// // Execution Order Rules
// a) Hoisting
// Function declarations and variables declared with var are moved to the top of their scope.

console.log(x); // undefined
var x = 5;

foo(); // works
function foo() {
  console.log("hello");
}

// // Function Execution Context
// Every time a function is called:

// A new execution context is created.

// It goes through its own creation and execution phase.

// JavaScript uses a call stack to keep track of function calls.

function one() {
  two();
}
function two() {
  console.log("Two");
}
one()

// // Global Execution Context
// ↳ one()
//    ↳ two()

// // Asynchronous Code & Event Loop
// JavaScript is single-threaded, but uses the event loop to handle asynchronous operations like:

// setTimeout

// fetch

// Promises

// Event listeners

// These go to the Web APIs, then the callback queue, and are processed by the event loop after the call stack is empty.
console.log("Start");
setTimeout(() => console.log("Timeout"), 0);
console.log("End");
