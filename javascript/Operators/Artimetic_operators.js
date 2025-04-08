//Arthimetic Operators
let a = 5
let b = 2

console.log ("a = ", a, "&b =", b)
console.log ("a+b = ", a+b)
console.log ("a-b =", a-b)
console.log  ("a*b =", a*b)
console.log  ("a/b=", a/b)
console.log  ("a%b =",a%b)

//Unary Operator

console.log ("a++ =", a++)
console.log ("a =",a)

console.log  ("++b =", ++b)
console.log ("a-- = ", a--)
console.log ("--a =", --a)
console.log ("a =", a)
// Assignment Operators

let c = 6
let d = 3
c += 3;
console.log (c += 3)
console.log (d-=2)

//Comparison operators
//equl to ==
// equal to to type ====

// not equl to !=
// equal to to type !===

let A = 10
// let B = 4
let B = 10

// console.log ("A==B =", A==B)
console.log ("A==B =", A==B)

console.log ("A!=B =", A != B)

// Logical Operators

// Logical AND && ( & biwise operatore )

// Logical or ||

// Logical NOT !

let f = 6
let g = 5

let cond1 = f>g 
let cond2 = f== 5
let cond3 = f==6

console.log ("cond1 && cond2 =", cond1 && cond2)
console.log ("cond1 && cond3 =", cond1 && cond3)

// cond1     cond2     result(&&)  result(||)
// T          T          T             T
// F          F          F             T
// F          T          F             T
// T          F          F             F

console.log ("cond1 || cond2 =", cond1 || cond2)
console.log ("cond1 || cond2 =", cond2 || cond1)
console.log ("cond4 || cond3 =", f<g || f==4)
//either one condition true in or (||) then its true.
// "!" it is work like opposite value ex ( true - false, null - not null..)

console.log ("cond4 || cond3 =", !f<g || !f==4)


// Conditional Statements : To implement some condition in the code.
// let color;
// if (mode === "dark-mode"){
//     color = "black";
// }
// if is preserve key word
// ( ) paralysis
// { } curly braces what ever code with in curly braces code executed
// mode is
// "Dark-mode" is 
// mode ==="dark-mode " is condition.
// condition show exprestion(true either false)

let age = 17

if (age>= 18){
    console.log("you can vote")
}

else {
    console.log("you CAN NOT vote")
}

var Student_marks =75
if (Student_marks >=35){
    console.log ("You are eligible next class")
    }
if (Student_marks <35) {
    console.log ("you are not eligible next class")
}

let mode = "dark"
let color

if ( mode === "dark"){
    color = "Black"
    console.log (color)
}

let G =225
if (G%2 ===0){
    console.log(G, "is even")
}
else if (G%2 === 1){
    console.log(G, "is odd")
}
else {
    console.log (G,"is odd")
}
//syntax --> rules

// Ternary operators
// condition? true output : false output

let age_a =28
let result = age_a >=18? "adult" : "not adult"
console.log (result)
age_a >=18 ? console.log ("adult"): console.log("not adult")
