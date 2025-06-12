// index1.js

// Correctly importing named exports
import { factorial, add, subtract, concatenate, reverse, addi, subtrac } from './index.js';
import { person, number } from './index2.js';
import { checkEvenOdd } from './index2.js'; 
import greet, { userInfo } from './index2.js'; 

console.log(checkEvenOdd(4)); 
console.log(factorial(4));

console.log(add(5, 3));
console.log(subtract(10, 4));
console.log(concatenate("Hello", " World!"));
console.log(reverse("JavaScript"));

console.log(person.name);
console.log(person.age);
console.log(number);

console.log(greet(userInfo.username));
console.log(userInfo.level);

console.log(addi(10, 5));
console.log(subtrac(10, 4));

  
