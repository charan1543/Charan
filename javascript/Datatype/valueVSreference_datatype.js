// primitive datatype
//Deep copy: original memory location different from the copied memory location.
var m = 30 //memory location
var n = m// another memory location
console.log (m,n)
m =32
console.log (m,n)

//Reference data type
// we have three types used
//1. Deep copy: original memory location different from the copied memory location.

//2. normal copy

//3. shallow copy
// normal copy original memory location same as copied memory location. 
var original = {
    name : 'cherry',
    age : 28, 
    city : 'kadapa',
    job : {
        role: "Developer",
        dept: "IT",
        salary : 80000
    },
    arr : [1,2,3]
};

// var copy = original

// console.log (original)
// original.city = 'hyd'
// copy.name = 'Devid'
// original.job.salary = 10000
// console.log (copy)
// console.log (original)

// // deep copy
// //JSON.perse(JSON.stringfy)(object reference)
// // var copy = JSON.parse(JSON.stringify (original))

// original.name = 'rathod'
// copy.age = 31
// original.arr [0] =10
// console.log (copy)
// console.log (original)

// //lodash
// // import lodash from 'lodash';

// // var copy = lodash.cloondeep(original)

// // shallow copy

var original = {
    name : 'cherry',
    age : 28, 
    city : 'kadapa',
    job : {
        role: "Developer",
        dept: "IT",
        salary : 80000
    },
    arr : [1,2,3]
};

var copy = Object.assign ({}, original)//E.S - 5
original.age = 32
original.arr [0] = 10
copy.id =02
copy.job.salary=100000
console.log (original)
console.log (copy)

var copy ={...original}
original.age = 38
original.arr [0] = 20
copy.id =03
copy.job.salary=90000
console.log (original)
console.log (copy)