let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

for (let i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 === 0) {
    console.log(numbers[i]);
  }
}

function Result(num) {
  if (num > 0) {
    console.log("Positive");
  } else if (num < 0) {
    console.log("Negative");
  } else {
    console.log("Zero");
  }
}
Result(5)


let fruits = ["Apple", "Banana", "Cherry", "Date"];

for (let i = 0; i < fruits.length; i++) {
  console.log(fruits[i]);
}

var greeting = "Hello";
var name = "Alice";

var message = greeting + " " + name;
console.log(message);  // Output: Hello Alice

var upperMessage = message.toUpperCase();
console.log(upperMessage);

let person = {
  name: "Alice",
  age: 30,
  greet: function() {
    console.log("Hello, " + this.name);
  }
};

console.log(person.name);
console.log(person.age);
person.greet();

function Person(age) {
  if (age >= 18) {
    console.log("You are an adult.");
  } else {
    console.log("You are a minor.");
  }
}
Person();
reverseString("hello");