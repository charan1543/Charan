// // var fruit = 'Apple'

// // switch (fruit){
// //     case 'Apple':
// //         console.log("this is Apple")
// //     case 'Banana':
// //         console.log ("this is Banana")
// //     case 'Orange':
// //         console.log ("this is Orange")
// //     break;
// // }

var fruit = 'Apple'

switch (fruit){
    case 'Apple':
        console.log("this is Apple")
    break;
    case 'Banana':
        console.log ("this is Banana")
    break;
    case 'Orange':
        console.log ("this is Orange")
    break;
}
// loops are used to exicute a piece of code again and again.
// loops are two types 
// 1)condition loop :
// i) Entry  control (condition checking then functionality), ii) exit control ( functionality checking then condition checking) 
// a)for loop ( minimum number of itration 0)
// b)while loop (minimum number of itration 0)
// c)do while loop (minimum number of itration 1)
// d)infinity loop
// 2)Unconditional loop

for ( i = 0; i<10; i++){
    console.log(i)
}

for (let j=2; j<= 10; j++){
    console.log (j*2)
}

for (let m = 1; m<=20; m++){
    console.log(m*2)
}

for (value =1; value<=20; value++){
    if (value%2==0){
        console.log (value)
    }
}

var A =1
while (A < 10) {
    console.log(A)
    A++
}

var B =90
do {
    console.log(B)
    B++
}

while (B<10)