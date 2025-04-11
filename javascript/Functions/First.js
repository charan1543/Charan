//Keyword Scope   Hoiisting

// Keyword             Scope           Hoisting
// var                 Function       initialized as undefined
// let                 Block           but not initialized
// const               Block           but not initialized

console.log(a,b)
var a =10
var b =20
console.log (a,b)
// by using var before insert value it sows "undefined"
// after insert value it showing value

// sum()

// var sum = function hello () {
//     console.log ("HEllo")
// }
// sum() sum consider as a variable(Uncaught TypeError: sum is not a function)

// Hoisting ( acdessing memore value even besfore execution)

//scope
//Accessibility andlife time of that variable

function sum( ){
    console.log (a+b)
}
sum( )


function sum( a,b){

    console.log (a+b)

}
sum(1,2)

// let is local scope/ block
// var is globle scope/ function
// const is constant scope/ block

function sum( ) {
    a=30

    console.log(a+b)

}
console.log(a,b)
let A =90
function sum ( ){

{
    let A=1
    let B=2

    console.log(A,B)
}
let A=2
let B=2
console.log(A,B)
}
