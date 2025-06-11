// Show numbers from 1 to 5 using a loop.
for (var i =0;i<=5; i++){
    console.log (i);
}
//  Print even numbers from 0 to 20 using a loop?
for (var i =0; i<=20; i+=2){
    if (i % 2 !==0){
        console.log ('GIVEN NUMER IS ODD=',i)
    }
    else{
        console.log ('given number even =', i);
    }
    
}

for (var i = 0; i <= 20; i++) {
    if (i % 2 === 0) {
        console.log('Given number is EVEN =', i);
    }
    if (i % 2 !== 0) {
        console.log('Given number is ODD =', i);
    }
}
console.log ('hello')

var check =[1,2,,3,4,6,5]
for (let i = 0; i < check.length; i++){
    console.log (i);
}

// Mini Project: Number Analyzer
// Take a number from you

// Tell if it’s even or odd

// Print all numbers from 1 up to that number

// Show the sum of all those numbers

let num = 10
if (num % 2 == 0){
    console.log ('given number is even:', num);

}
else{
    console.log('given number is odd:', num);
}

for (let i =1; i<=20; i++){
    console.log(i)
}

let sum =0
var n=10
for (let i=1; i<n; i++){
    sum+=i
}
console.log (n+'is'+sum);

// string methods
let text = "  Java Script is!  ";

console.log (text.length)
console.log (text.trim())
console.log (text.trimStart())
console.log (text.trimEnd())
console.log(text.toUpperCase())
console.log(text.toLowerCase())
console.log(text.includes("Java"))
console.log(text.slice(0, 10));
console.log(text.replace("is", "more"));
console.log(text.split(" "));

function formatText(text) {
  let trimmed = text.trim();
  let uppercased = trimmed.toUpperCase();
  return uppercased;
}

var result = formatText('  HELLO WORLD  ')
console.log(result)

// Function to check if a word exists in a sentence

function just (using, metods){
    return using.includes(metods);
}
console.log (just ("i love jmd", "jmd"));
console.log (just("i love jmd", "pdtr"))

// Function to get the first N characters of a string
function characters(str, n){
    return str.slice(n)
}
console.log(characters("just check n letters", 4));
console.log(characters("java script", 3));


// Arrey methods
