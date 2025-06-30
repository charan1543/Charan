// Default Parameters
// Functions can now have default values for parameters.
function greet(name = "Guest") {
  console.log('hello',+ name);
}

greet();
greet("John");

function calculatePrice(price, discount = price * 0.1) {
  return price - discount;
}

console.log(calculatePrice(100));
console.log(calculatePrice(100, 20));

function sum(a = 0, b = 0, ...others) {
  let total = a + b;
  others.forEach(num => total += num);
  return total;
}

console.log(sum(1, 2));
console.log(sum(1, 2, 3, 4, 5));

function Person({ name = "teja", age = 27 } = {}) {
  console.log('Name:', name, 'age:', age);
}

Person({ name: "charan", age: 28 });
Person({});
Person();

// Destructuring Assignment
// Destructuring makes it easy to extract data from arrays and objects.

var numbers = [1, 2, 3];
var [a, b, c] = numbers;

console.log(a);
console.log(b);

var person = { name: "charan", age: 28 };
var { name: firstName, age: yearsOld } = person;

console.log(firstName);
console.log(yearsOld);

function factorial(n, accumulator = 1) {
  if (n <= 1) {
    return accumulator;
  } else {
    return factorial(n - 1, n * accumulator);
  }
}

console.log(factorial(4))

// Multiple Default Parameters in Functions
function createAccount(name = "Anonymous", age = 18, country = "USA") {
  console.log(`Name: ${name}, Age: ${age}, Country: ${country}`);
}

createAccount();
createAccount("cherry", 25);
createAccount("Divyans", 30, "JMD");

// Spread Operator (...)
// The spread operator allows you to expand or copy elements from an array or object.
// The spread operator looks like three dots: ... and its meaning depends on the context:

// In function calls, it spreads an array into individual arguments.

// In array literals, it spreads array elements into a new array.

// In object literals, it spreads object properties into a new object.

// | Use Case                     | Example                         |
// | ---------------------------- | ------------------------------- |
// | Expand array into arguments  | `func(...arr)`                  |
// | Forward arguments            | `anotherFunc(...args)`          |
// | Clone arguments in function  | `const copy = [...args]`        |
// | Merge arrays in function     | `return [...arr1, ...arr2]`     |
// | Spread inside arrow function | `const f = (...x) => sum(...x)` |

var arr1 = [1, 2, 3];
var arr2 = [...arr1, 4, 5];

console.log(arr2);

var obj1 = { a: 1 };
var obj2 = { b: 2 };
var merged = { ...obj1, ...obj2 };
console.log(merged);

function logAll(...args) {
  console.log("Arguments:", args);
  anotherFunction(...args);
}

function anotherFunction(a, b, c) {
  console.log("Received:", a, b, c);
}

logAll(1, 2, 3);


// ccd
// Rest parameters collect the remaining arguments passed to a function into an array.

function greet(greeting, ...names) {
  names.forEach(name => {
    console.log(`${greeting}, ${name}!`);
  });
}

greet("Hello", "charan", "teja", "Cherry");

// | Feature        | **Rest Parameters**                          | **Spread Operator**                                   |
// | -------------- | -------------------------------------------- | ----------------------------------------------------- |
// | **Purpose**    | **Collect** multiple arguments into an array | **Expand** an array (or object) into individual items |
// | **Used in...** | Function **declarations/definitions**        | Function **calls**, array/object **literals**         |
// | **Direction**  | "Pack values into an array"                  | "Unpack array or object values"                       |

// | Action     | Concept            | Analogy                      |
// | ---------- | ------------------ | ---------------------------- |
// | **Rest**   | Collect into array | "Pack items into a suitcase" |
// | **Spread** | Expand from array  | "Unpack suitcase into items" |

// | Syntax                | What it does                    | Used where                 |
// | --------------------- | ------------------------------- | -------------------------- |
// | `function f(...args)` | Collects arguments → array      | In **function definition** |
// | `f(...array)`         | Spreads array → individual args | In **function call**       |
// | `[...arr1, ...arr2]`  | Spreads into new array          | In **arrays**              |
// | `{...obj1, ...obj2}`  | Spreads properties              | In **objects**             |

