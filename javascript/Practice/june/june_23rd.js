function add(a, b) {
  return a + b;
}
var result = add(3,5);
console.log (result);

// arrow function
var add = (a,b)=> (a+b);
var result = add (17,20);
console.log (result);

var greet=() => 'hello' ;
console.log (greet);
console.log (greet());

function double(x) {
  return x * 2;
}

var double =(x) => x*2;
console.log (double(3));

var user = () => ({
    name: "charan",
    age: 28
});

// | Method      | Purpose                   | Returns                    |
// | ----------- | ------------------------- | -------------------------- |
// | `.map()`    | Transforms each item      | New array (same length)    |
// | `.filter()` | Keeps only matching items | New array (can be shorter) |
// | `.find()`   | Finds first match         | Single item or `undefined` |

// Double the numbers in an array:

var nums = [1, 2, 3, 4];
var doubled = nums.map(num => num * 2);
console.log(doubled); 

// Add 10 to each number:

var scores = [5, 10, 15];
var add = scores .map(scores=> scores+10)
console.log (add);
// Get lengths of each word:
var words = ["hi", "hello", "world"];
var lengths = words.map (words => words.length)
console.log (lengths);
// From users, get just the names:
var user = [{
    name : "cherry",
    age: 27,
    id : 9513
}]
var result =user .map(user=> user.name)
console.log(result);

var numbers = [1, 2, 3, 4];
var even = numbers.filter(num => num % 2 === 0);

console.log(even);

// Keep numbers greater than 10:

var nums = [3, 12, 9, 20];
var greater = nums.filter(nums => nums >10);
console.log (greater);

// Keep words longer than 4 letters:
var words = ["cat", "elephant", "dog", "giraffe"];
var longer = words.filter(words => words.length>4)
console.log (longer);

// Filter users aged 18+:
var people =[{
    id: 12, age:20},
    {id :13, age:17},
    {id:14, age:19},
    {id:15, age:18
}];
var people = people .filter(people => people.age ==18);
console.log(people);

// Find the first number over 10:
var nums = [2, 4, 15, 8];
var words = nums.find(n => n > 10);
console.log (words);

// Find the first word starting with "h":
var words = ["apple", "hello", "banana"];
var finds = words.find (words => words.startsWith("h"));
console.log (finds);
// Find the user named "Bob":
var users = [
  { name: "dharma" },
  { name: "somu" },
  { name: "lava" }
];
var result = users.find(u => u.name === "Bob");
console.log (result);
var result = users.find (users => users.name ==="Bob");
console.log (result); 

// Find first number divisible by 7:
var nums = [4, 5, 14, 28];
var result = nums.find(nums => nums % 7 === 0);
console.log (result);

// Square each number
var number = [2, 4, 6, 8];
var result = number.map (number => number+2)
console.log (result);
// Keep names starting with “A”
var names = ["Alice", "Bob", "Adam", "Charlie"];
var result = names.filter (names => names.startsWith("A"));
console.log(result);

// Find the first number less than 5
var nums = [10, 8, 6, 3, 1];
var result = nums.find (nums => nums<5);
console.log(result);

// Get uppercase names
var users = ["alice", "bob", "carol"];
var result = users.map (users => users.toUpperCase());
console.log (result);

// Keep only active users
var users = [
  { name: "ramesh", active: true },
  { name: "sesi", active: false },
  { name: "madhu", active: true }
];
var active = users.filter (users => users.active);
console.log (users);

// Get names of users who are 18 or older:

var people =[{
    id: 12, age:20},
    {id :13, age:17},
    {id:14, age:19},
    {id:15, age:18
}];
var result = people.filter(people => people.age == 18).map(people => people.id);
console.log(result);

// Filter items under ₹100, and show with tax added (18%)

products = [
  { name: "Pen", price: 50 },
  { name: "Bag", price: 500 },
  { name: "Notebook", price: 80 }
];

var result = products .filter(products => products.price < 100) .map(products => products.price * 1.18); 
console.log (result);