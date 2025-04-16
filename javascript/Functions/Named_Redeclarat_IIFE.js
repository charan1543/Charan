
//Intialization - assigning a variable at the time declaration
// re- declaration

var m = "Hai"
console.log (m)
// re- declaration

var m = "Hello"
console.log (m)
//Re-Intialization
m = "dude"
console.log (m)

// using let keyword
let l="hi"
console.log (l)
// re- declaration

// let l = "Hello"
// console.log (l) //let keyword no re- declare value.

//Re-Intialization
l = "dude"
console.log (l) // //let keyword use to Re-Intialization.

//Closer
//it helps inner function to accept outer function variable even after the outer function execution
//  context is over

function Hello (a,b){

    return a+b
}

Hello ()
console.log (Hello ()) // Nan

function Hello (a,b){

    console.log (a+b)
}

// Hello ()
console.log (Hello ())

function Hi (a,b){
return function bye(){
    return a+b
}

}

Hi ()
console.log (Hi ())

function Dude (a,b){
return function Just(){
    return a+b
}

}

let k = Dude (1,2)
console.log (k)

function g (){
    return function B (){
        // return (a+b)
    }
}

var h =g(10, 20)
console.log (h())
console.log (h)

//Immediately Invoked Function Expression

let o1 = (()=> {

    var N = "hai"
    var M = "Hello"
    console.log(N,M)
})()
