// function A (a,b,c,d,e,f){
//     return function B(){
//         return a+b+c+d+e+f
//     }
// }
// console.log(A(1,2,3,4,5,6)())

// function A (a){
//     return function B(b){
//         return function C(c){
//             return function D(d){
//                 return a+b+c+d
//             }
//         }
//     }
// }
// console.log (A(1)(2)(3)(4))

// function A (a){
//     return function B(b){
//         return function C(c){
//             return function D(d){
//                 return a+b+c+d
//             }
//         }
//     }
// }
// console.log (A(1,2,3,4)()());
// function Hello(a){
//     let sum=0
//     for(let i=1; i<=a; i++){
//         sum+= i
//         return sum;
//     }
// }
// console.log(Hello(5)); //1
// function hello(a){
//     return a+(a-1)+(a-2)+(a-3)+(a-4)
//     //a=5 + 4 + 3 + 2 + 1 = 15
// }
// console.log(hello(5))

function hello(a){
    if (a===0){
        return 0
    }
    return a+ hello(a-1);
}
console.log(hello(5))

//print the product of 1st 3 natutral numbers by using recursive function 

function prod (a) {
    if (a===0){
    return 1
    }
    return a*prod(a-1)

}
console.log(prod(4));

var b = function Dude (){
    return "this is hello function "
}

function Hai(M){
    return M()

}
console.log(Hai(b))