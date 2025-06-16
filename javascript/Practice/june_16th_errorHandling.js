// try...ctch So your app doesn't crash, and you can show a helpful message or take another action.
function divide(a, b) {
  if (b === 0) {
    throw new Error("Cannot divide by zero");
  }
  return a / b;
}

try {
  console.log(divide(10, 0));
} catch (error) {
  console.log("Custom error caught:", error.message);
}
function sayHello(name) {
  if (!name) {
    throw "Name is required!";
  }
  console.log("Hello, " + name);
}

try {
  sayHello("");
} catch (e) {
  console.log("Error:", e);
}

function divide(a, b) {
  if (b === 0) {
    throw "You can't divide by zero!";
  }
  return a / b;
}

try {
  let result = divide(10, 0);
  console.log("Result:", result);
} catch (e) {
  console.log("Math error:", e);
}

function checkLength(str) {
  if (str.length < 3) {
    throw "Too short! Must be at least 3 characters.";
  }
  console.log("Looks good:", str);
}

try {
  checkLength("Hi");
} catch (error) {
  console.log("Error caught:", error);
}

checkLength("Hello");

function FirstItem(arr) {
  if (arr.length === 0) {
    throw "The array is empty!";
  }
  console.log("First item is:", arr[0]);
}

try {
  FirstItem([]);
} catch (e) {
  console.log("Error caught:", e);
}

FirstItem([100, 200]);



function squareNumber(num) {
  if (typeof num !== "number") {
    throw "Input must be a number!";
  }
  console.log("Square is:", num * num);
}

try {
  squareNumber("hello");
} catch (err) {
  console.log("Caught error:", err);
}

squareNumber(5);

// Throttling
function throttle(func, delay) {
  let lastTime = 0;

  return function() {
    var now = Date.now();

    if (now - lastTime >= delay) {
      func();
      lastTime = now;
    }
  };
}

function throttle(func, delay) {
  var lastTime = 0;
  return function (...args) {
    var now = Date.now();
    if (now - lastTime >= delay) {
      func.apply(this, args); // passes arguments and keeps context
      lastTime = now;
    }
  };
}

function logMessage(msg) {
  console.log("Message:", msg);
}

var throttledMsg = throttle(logMessage, 1000);
throttledMsg("Hello!")

var lastRun = 0;
var delay = 2000;

function throttleAction() {
  var now = Date.now();

  if (now - lastRun >= delay) {
    console.log("Action run at", new Date().toLocaleTimeString());
    lastRun = now;
  }
}
var timer = null;

function throttleAction() {
  if (timer) return;

  console.log("Action run at", new Date().toLocaleTimeString());

  timer = setTimeout(() => {
    timer = null;
  }, 2000);
}
