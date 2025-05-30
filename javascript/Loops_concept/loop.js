// // loop (intialization;stop condition; updation)
// // for loop concept
// for (let i =1; i<5; i++){
//     // you want to print 1to 5 number
//     console.log(i)
//     // rpeat a name 5 times 
//     console.log("name");
// }
// // const you can asign only one time
// let sum =0
// for (let i =1; i<=5; i++){
//     sum = sum+i
    
// }
// console.log ("sum =", sum)
// let sumn =0
// let n = 5
// for (let i =1; i<=n; i++){
//     sumn = sumn+i
    
// }
// console.log ("sumn =", sumn)

// // Print even numbers from 1 to 20

// for (i=2; i<=20; i+=2){
//     // with in block it prints 
//     console.log(i)
// }
// // out side block it prints=22
//     console.log(i)
// // Print odd numbers from 1 to 20
// for (i=1; i<=20; i+=2){
//     console.log (i)
// }   

// // 4. Print multiplication table of 5

// for (i=1; i<=10; i++){
//     console.log ("5*"+i+"="+(5*i))
// }

// // Reverse counting from 10 to 1
// for (let i=10; i>=1; i--){
//     console.log (i)
// }


// // Print squares of numbers from 1 to 5
// for (i =1; i<=5; i++){
//     console.log(i*1)
// }
// // infinity loop (never stop)
// for (i =1; i>=0; i++){
//     console.log(i);
// }


// // while loop
// let i =1
// while(i<=10){
//     console.log("name")
//     i++;
// }

// let i =1;
// do{
//     console.log (i)
//     i++;
// }while (i<=10); //it prints 1 to 10

// let j =1;
// do{
//     console.log ("name")
//     j++;
// }while (j<=10);//it prints 1 time - name
// // Print only odd numbers from 1 to 9
// var i =1 
// do{
//     console.log (i)
//     i+=2
// }while (i<=9);
// Print "Hello" 3 times
// var i =1
// do{
//     console.log ("hello")
//     i++
// }while (i<=3)

// // Count backward from 5 to 1
// var i=5
// do {
//     console.log (i)
//     i--
// }while (i>=1)

// for of
var str = "name"
var size =0
for (var i of str){  // i is iterator -> charcters
    console.log (i) 
    size++; 
}
console.log (size)

