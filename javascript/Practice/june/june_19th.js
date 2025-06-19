// variables:
var name = "cherry";
var age = "28";
console.log(name,age);

// | Feature        | `var`                      | `let`                         | `const`                       |
// | -------------- | -------------------------- | ----------------------------- | ----------------------------- |
// | Scope          | Function-scoped or global  | Block-scoped                  | Block-scoped                  |
// | Re-declaration | Allowed                    | Not allowed in the same block | Not allowed in the same block |
// | Reassignment   | Allowed                    | Allowed                       | Not allowed                   |
// | Hoisting       | Yes (with undefined value) | Yes (but not initialized)     | Yes (but not initialized)     |

// array is a special type of variable that can hold multiple values at once
var cities = ["apple", "banana", "cherry"];
console.log(cities[0]);  // Outputs: apple
console.log(cities[2]);
// Modifying Array Elements:
var cities =["jmd","hyd","atp"];
cities[1] = "BNLR";
console.log (cities);
console.log(cities.length);
// Array Methods:
cities.push("KDP");
console.log(cities);
// Adding Elements to an Array:
cities.unshift("mm");
console.log(cities);
// Removing Elements from an Array:

cities.pop();  // Removes the last element ("cherry")
console.log(cities);  // Outputs: ["apple", "banana"]

cities.shift();  // Removes the first element ("apple")
console.log(cities)

var persons = ["ramesh", "sesi", "madhu"];
var combined = cities.concat(persons);
console.log (combined);

fruits.splice(1, 1, "Kdpm");  // Removes 1 element at index 1 and adds "orange"
console.log(cities);