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
arr = [...new Set(arr)]; // Remove duplicates and keep arr iterable

function hello(arr) {
    var newarr = [];

    for (let i of arr) {

        if (!newarr.includes(i)) {

            newarr.push(i);
        }
    }
    return newarr;
}

let result = hello(arr);
console.log(result);

//flatting of arrey 
var ar = [1,2,3,4,"hello","hi",[[]],[],[[],[]]]

console.log (ar)

var ar = [1,2,3,4,"hello","hi",[1,2,3,[98,90[4,23,1]]],[0,1,20],[[90,87],[11,43]]]
console.log (ar)

//flat()

    console.log (ar.flat ())
    console.log (ar.flat (3))
//type of finds the wich type of database using 
console.log (typeof(ar))
// Array.isArray is used for we are using array then it show "boolen" type "true" not used then "false".
console.log (Array.isArray (ar))

