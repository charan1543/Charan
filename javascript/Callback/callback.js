// call back
//AsynchronousJs
//Async and await
//Permis

// call back
//A function that can be as a argument

// call back hell?
function one (nextFunction){
    var a =10
    console.log ("one function")
    window.setTimeout (()=>{
        nextFunction()
    },2000)
    
}

function two (ForwardFunction){

    console.log ("second_function")
    window.setTimeout (()=>{
        ForwardFunction()
    },2000)
    
}

function three (next_last){
    console.log("third function ")
    window.setTimeout (()=>{
        next_last()
    },2000)
}
function fourth (lastFunction){
    console.log ("fourth function")
    lastFunction()
}
one (()=>{two(()=>{three()})})