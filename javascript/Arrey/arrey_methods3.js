var s = new Set ()


s.add (1)
s.add (2)
s.add (1)
s.add (3)
s.add (4)

s.delete (1)
s.add (1)
console.log (s)
// s.size count uniq values only
console.log (s.size)
// .has method checking particular element is stored in arrey if it is stored then it's represent "true" else it's represent "false" 
console.log (s.has (1))
// .clear it's clear entaier entair elements in arrey
s.clear ()
console.log (s)

//remove dulpicates from array
var arr = [1,2,3,4,5,6,1,2,3,7,3,7,8,9]
var asset = new Set (arr)
console.log (arr)

var arr = [...new Set (arr) ]; 

var newarr =[]

// includes
// for (i of arr){
//     if (newarr.includes(i)){
//         continue
//     }
//     else{
//         newarr.push(i)
//     }
// }
// console.log(newarr)

// function hello (arr) {

//     var newarr  =[];

//     for (i of arr){

//         if (newarr.includes(i)){
//             continue
//         }
//         else{
//             newarr.push(i)
//         }
//     }
//     return newarr;
// }
// hello ()
// console.log(hello (arr))

var arr = [1, 2, 3, 1, 2, 4, 5];
// arr = [...new Set(arr)]; // Remove duplicates and keep arr iterable

// function hello(arr) {
//     var newarr = [];

//     for (let i of arr) {

//         if (!newarr.includes(i)) {

//             newarr.push(i);
//         }
//     }
//     return newarr;
// }

// let result = hello(arr);
// console.log(result);

// //flatting of arrey 
// var ar = [1,2,3,4,"hello","hi",[[]],[],[[],[]]]

// console.log (ar)

// var ar = [1,2,3,4,"hello","hi",[1,2,3,[98,90[4,23,1]]],[0,1,20],[[90,87],[11,43]]]
// console.log (ar)

// //flat()

//     console.log (ar.flat ())
//     console.log (ar.flat (3))
// //type of finds the wich type of database using 
// console.log (typeof(ar))
// // Array.isArray is used for we are using array then it show "boolen" type "true" not used then "false".
// console.log (Array.isArray (ar))

// Index of ()

// function hello(arr) {
//     var newarr = [];

//     for (var i = 0; i < arr.length; i++) {
//         if (newarr.indexOf(arr[i]) === -1) {
//             newarr.push(arr[i]);
//         }
//     }
//     return newarr;
// }

// console.log(hello(arr));
 // Create a copy to avoid changing original
// remove duplicates
function hello(arr) {
    let sorted = arr.slice().sort();
    let newarr = [];

    for (let i = 0; i < sorted.length; i++) {
        if (i === 0 || sorted[i] !== sorted[i - 1]) {
            newarr.push(sorted[i]);
        }
    }

    return newarr;
}

console.log(hello(arr))

var a = "hello"

var k = Array.from (a) // A needs to capital witout that it coinsider as a function
console.log (k)

var m = [1,2,3,4,5,69,23,43,45]
console.log (m.indexOf(69)) // it finds 69 index value  ..5

//now find with index value 
// array name.at
console.log (m.at(2))//3

//fill
// it is usednto fill the array with some value
//fill (value starting filled, starting, ending)
m.fill (0,0,1)
console.log(m)
m.fill (0,0,2)
console.log (m)
m.fill (0,0,m.length)
console.log (m)
m.fill (0)// all array change to '0'
console.log(m)
// sort
// its helps to values change assending & disending orders.
var m = [1,2,3,4,5,69,23,43,45]
m.sort ()//IT JUST single value sorting 
console.log (m)
m.sort ((a,b) => a-b)
console.log (m)
m.sort ((a,b) => b-a)
console.log (m)
var m = [1,2,3,4,5,69,23,43,45]
// for (var i =0; i<= m.length; i++){
//     var k = m[i]
//     for (var j = i+1; j<= m.length;j++){
//         if (m[j] < m[i]){
//             m.splice(i,0,m[j])
//             m.splice(j,0,k)
//             k=m[j]
//         }
//     }
// } //wrong
// for (var i = 1; i < m.length; i++) {
//     for (var j = 0; j < i; j++) {
//         if (m[i] < m[j]) {
//             m.splice(j, 0, m[i]);  // insert m[i] at correct position
//             m.splice(i + 1, 1);    // remove original m[i] (now at i + 1)
//             break;                // stop inner loop once inserted
//         }
//     }
// }
var m = [1,2,3,4,5,69,23,43,45]
for (var i = 0; i < m.length; i++) {
    for (var j = i + 1; j < m.length; j++) {
        if (m[j] < m[i]) {
            m.splice(i, 1, m.splice(j, 1, m[i])[0]);
            break;
        }
    }
}
console.log(m)

var m = [1, 2, 3, 4, 5, 69, 23, 43, 45];

// for (var i = 0; i < m.length; i++) {
//     for (var j = i + 1; j < m.length; j++) {
//         if (m[j] < m[i]) {
//             // Swap without temp:
//             m.splice(i, 1, m.splice(j, 1, m[i])[0]);
//         }
//     }
// }

// for (var i = 0; i < m.length; i++) {
//     for (var j = i + 1; j < m.length; j++) {
//         if (m[j] < m[i]) {
//             // Swap using splice
//             var temp = m[i];
//             m.splice(i, 1, m[j]);  // Replace m[i] with m[j]
//             m.splice(j, 1, temp);  // Replace m[j] with temp
//         }
//     }
// }

var details = [
    {name:"kiran", age: 28, address: "kdp", job: "electrition", job_id: 4},
    {name:"ravi", age: 29, address: "kndp", job: "electrition", job_id: 2},
    {name: "akil",age:28, address: "plvd", job :"electrition", job_id:1},
    {name: "fayz", age: 30, address: "ryd", job: "electrition", job_id:3}
]
console.log (details)
details.sort ((a,b)=> a.age - b.age)
console.log (details)
//  for name sorting use 'localeCompare'
details.sort ((a,b)=> a.name.localeCompare (b.name))

// Map set weekmap weekset
// Map
// it is used store the data in the form of key values
// key can be of any data type  and value can be of any data type
// in this key will of any data type and value will you of any data type

var M = new Map ()

M.set ("name","ravi")
M.set ("age", 28)
console.log (M)
console.log (M.size)
var arr = [1,2,3,4,5]
for (i of arr){
    M.set(i,arr[i])
}
console.log(M)

// for of loop to itterate the Map
// set-> add a new item into the Map
// size difine the length of Map
// get(key)
// has(key)
// delete(key)
// clear
// set no duplicate values

M.set ({name: "ravi "},details)
console.log(M)
//weekmap:- In a WeakMap, the keys must be objects (not primitive values like strings, numbers, etc.).
// Values: The values can be any type (objects, primitive values, etc.).



var N = new Map([ 
    ["Monday", "Gym"],
    ["Tuesday", "Work from home"],
    ["Wednesday", "Team meeting"],
    ["Thursday", "Project work"],
    ["Friday", "Remote work"],
    ["Saturday", "Hiking"],
    ["Sunday", "Rest"]
  ]);
console.log (N.get("Friday"));
console.log (N.delete("Wednesday"))
console.log (N.has ("Wednesday"))
console.log (N)

// WeakSet:- Values: The values in a WeakSet must be objects (like in WeakMap), and it cannot store primitive values.

// Weak References: Similar to WeakMap, WeakSet holds weak references to its values, meaning that if there are no other
//  references to an object stored in the set, it will be eligible for garbage collection.
// It’s especially useful for scenarios where you need to track objects, but you don't want to keep those objects alive 
// unnecessarily.

var M = new Map ()

M.set ("name","ravi")
M.set ("age", 28)
console.log (M)
console.log (M.size)
var arr = [1,2,3,4,5]
for (i of arr){
    M.set(i,arr[i])
}
console.log(M)
