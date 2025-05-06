//Arrey
// Arrey is reference datatype
// it stores Homogeneous or hetrogeneous
//Homog-> same kind of data
// hetrog-> Different kind of data (1,2,3,4,5...,apple, bannana,..... true/false...). single thred& multi thred
// JavaScript arrays come with over 30 built-in methods that you can use to manipulate and work with arrays. 
// Here's a list of the most commonly used ones:

// Mutating Methods (Methods that change the array)
// push() – Adds one or more elements to the end of an array.

// pop() – Removes the last element from an array.

// shift() – Removes the first element from an array.

// unshift() – Adds one or more elements to the beginning of an array.

// splice() – Changes the contents of an array by removing, replacing, or adding elements.

// sort() – Sorts the elements of an array in place.

// reverse() – Reverses the order of elements in an array.

// fill() – Fills all the elements of an array with a static value.

// copyWithin() – Shallow copies a part of the array to another part of the same array.

// 2. Non-mutating Methods (Methods that don’t change the array)
// concat() – Combines two or more arrays.

// join() – Joins all elements of an array into a string.

// slice() – Returns a shallow copy of a portion of an array.

// indexOf() – Returns the first index of a specified element.

// lastIndexOf() – Returns the last index of a specified element.

// includes() – Checks if a specified element exists in an array.

// find() – Returns the first element that satisfies a condition.

// findIndex() – Returns the index of the first element that satisfies a condition.

// map() – Creates a new array with the results of calling a function for every array element.

// filter() – Creates a new array with all elements that pass a test.

// reduce() – Applies a function against an accumulator and each element in the array (from left to right) to reduce it to a single value.

// reduceRight() – Applies a function against an accumulator and each element in the array (from right to left) to reduce it to a single value.

// some() – Tests whether at least one element in the array passes the test.

// every() – Tests whether all elements in the array pass the test.

// sort() – Sorts the array in place (can also be used in non-mutating scenarios with specific implementation).

// reverse() – Reverses the array in place (can also be used in non-mutating scenarios with specific implementation).

// 3.Utility Methods (General-purpose methods)
// forEach() – Executes a provided function once for each array element.

// some() – Tests if at least one element in the array passes the condition.

// every() – Tests if all elements in the array pass the condition.

// find() – Returns the first element that passes a test function.

// findIndex() – Returns the index of the first element that passes a test function.

// 4.Array Properties
// length – Returns the number of elements in an array.


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
