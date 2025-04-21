let fruite = "Orange"
if (fruite == "Apple"){
    console.log ("yummi it's Apple")
}
else if (fruite == "Banana"){
    console.log ("Yes it look like banana")
}
else if (fruite == "Orange"){
    console.log("It's test like orange")
}
else {
    console.log("it's not a fruite")
}

let animal = "cat"
if (animal === "cat"){
    console.log("yes it is animal")
}
else if (animal === "dog"){
    console.log (" Correct it is dog")
}
else if (animal === "cow"){
    console.log ("it is cow")
}
else{
    console.log("it is not animal")
}

let gueess = 8
if (gueess === 10){
    console.log("Wow! You guessed it!")
}
else if (gueess < 10){
    console.log("Too low!")
}
else if (gueess > 10){
    console.log("Too high!")
}
// let guess =8
// let secret =8
// if (guess===secret ){
//     console.log("🎉 Wow! You guessed it!")
// }
// if (guess > secret){
//     console.log ("Too low!")
// }
// if (guess < secret){
//     console.log("Too High!")
// }
// 

//   function guessGame(guess) {
//     let secret = Math.floor(Math.random() * 10) + 1;
  
//     if (guess === secret) {
//       console.log("🎉 You guessed it right!");
//     } else {
//       console.log("❌ Wrong guess.");
//       console.log("You guessed:", guess);
//       console.log("Secret number was:", secret);
//     }
//   }
  
//   guessGame(5); 
  
//   function guessTheNumber(guess) {
    //     let secret = Math.floor(Math.random() * 10) + 1;
      
    //     if (guess === secret) {
    //       console.log("🎉 Wow! You guessed it!");
    //     } else if (guess > secret) {
    //       console.log("Too high!");
    //     } else if (guess < secret) {
    //       console.log("Too low!");
    //     }
      
    //     console.log("The secret number was:", secret);
    //   }
    //   guessTheNumber(5);
    
    //   function guessGame(userGuess) {
    //     let secret = Math.floor(Math.random() * 10) + 1;
    //     while (userGuess !== secret) {
    //         console.log("Wrong guess. Try again!");
    //         console.log("You guessed:", userGuess, "but secret was:", secret);
    //         userGuess = Math.floor(Math.random() * 10) + 1;
    //     }
    
    //     console.log("🎉 Correct! The secret number was:", secret);
    //   } 
    //   guessGame(1);

    // let number =1

    // while (number =1){
    //     console.log("Number is:",number)
    //     number = number+1;
    // }
    // let secret = Math.floor(Math.random)*10 + 1
    // let guess =1

    // while (guess !== secret) {
    //     console.log("Wrong guess. You guessed:", guess);
    //     guess = guess + 1; // just for demo, increases guess by 1 each time
    //   }

    // //   console.log("🎉 Correct! Secret number was:", secret);