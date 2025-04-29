//Arrey
// Arrey is reference datatype
// it stores Homogeneous or hetrogeneous
//Homog-> same kind of data
// hetrog-> Different kind of data (1,2,3,4,5...,apple, bannana,..... true/false...). single thred& multi thred

// how to find length ( arrey.length).
var arr1 = [1,2,3,4,5,"good","morning","guys","how you start the day"]
console.log (arr1)
console.log (arr1,[5])//result is arr1 and [5]😂 ineed index value 5 th place 
//using with out coma (,) to find array value ✔ result: good
console.log (arr1[5])
console.log(arr1[arr1.length-1])

//how to update arrey @ ending
// using push ()
arr1.push ("hey hai ")

console.log (arr1)

//how to update arrey @ starting 
//using unsift()
arr1.unshift("Hi")
console.log (arr1)

//how to add/update arrey as you like 
//splice
// arr1.splice(7,0,"all good") arguments where iam intrested to add/updtae then choose index value, wich index value need to replace/remove, which value added.
arr1.splice(7,0,"all good")
console.log (arr1)

//remove arrey
// starting of arrey need to delete/remove
//using sift()
console.log (arr1.pop)// result be like😂 sift() { [native code] }
arr1.shift("")
console.log (arr1)

// Ending of arrey need to delete/remove
//using pop()
arr1.pop()
console.log (arr1)

//how to remove/delete arrey as you like 
//splice()
//arrey name.splice (0,arrey.length)

arr1.splice(6,1)//one index value removed/deleted
console.log(arr1)
//how to remove/delete all arrey as you like 
//splice()
//arr1=[] epty arrey assigning
//arr1.length = 0
// arr1.splice(0,arr1.length) deleted all arrey value
// arr1.length = 0
// arr1=[]

//given values need to reverese
// use reverse()
arr1.reverse()
console.log(arr1)

var fruits = ["apple", "banana", "cherry"];
fruits.push ("orange")
fruits.unshift ("mango")
fruits.shift ()
fruits.pop ()
fruits.splice (1,0,"grape","kiwi")
fruits.splice (2,1)

var colors = ["red", "green", "blue"];
colors.push ("yellow")
colors.unshift ("purple")
colors.shift()
colors.pop()
colors.splice(1,0,"orange","pink")
colors.splice(3,1)
console.log(colors[4-1])
console.log(colors[colors.length-1])
