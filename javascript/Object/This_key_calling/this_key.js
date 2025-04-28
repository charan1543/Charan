//this key word
//it refers current object
//with in funtion this keyword calling shows the object
//outr side function calls it's change to window object
//arrow function not have own this keyword.

//normal function use
var obj = {
    name: "cherry",
    age: 28,
    city: "JMD",
    play: function (){
        console.log (obj)
        console.log (this)
    }
}
obj.play ()
console.log (obj)
console.log (this)


// with in object created arrow functioin.
// In arrow functions, this is lexically bound, which means:
//Arrow functions don’t get their own this — they use the this from the outer (parent) scope.
// var obj = {
//     name: "cherry",
//     age: 28,
//     city: "JMD",
//     play : () => {
//         console.log (obj)
//         console.log (this)
//     }
// }
// obj.play()
// console.log (obj)
// console.log (this)

var obj = {
    name: "cherry",
    age: 28,
    city: "JMD",
    play: function (a,b,c,d){
        console.log (obj)
        console.log (this)
        console.log (obj.name)
        console.log (this.name)
        console.log(a)
        console.log (a+b+c+d)
    var hello = () => {
        console.log (this)
        console.log (obj)
        console.log (obj.name)
        console.log (this.name)
        console.log (1,2,3,4)
    }
    hello()
    }
    
}
obj.play (1,2,3,4)
// console.log(hello())
console.log (obj)
console.log (this)

var age =28

var obj2 = {
    name: "rammi",
    age: 28,
    play: function (){
        console.log(this.age)
        console.log (this)
    }  
}
obj2.play(obj)
obj2.play (1,2,3,4)
console.log (obj2.name)
console.log(this.age)


 // Change of this keyword
 //call apply bind
 // n number argument pass
 //call   
//  obj.play.call (obj2)
// obj.play.call (obj2, 1,2,3,4)

 //apply
 // 2 argumernts pass 1 is object reference and 2arguments.
//obj.play.apply (obj2,[1,2,3,4,5])
// obj.play.bind (obj2,1,2,3,4,5) ()
var m = obj.play.bind (obj2,1,2,3,4,5)
m()
console.log (m)