console.log("export&import file model")
// export can be 2 types 
// 1.named and defult
// named:- number of times use named export
// // defult it should use in single time
import hello from './Import.js';
import {login,d} from './export.js';
console.log (login)
console.log(hello)
console.log (d)

// de-stucturing

var arr =[1, 2, 3]

var [a, b, c] = arr

console.log (a,b,c)