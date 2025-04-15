// 1.	JavaScript Recap Practice
// Create an object studentInfo with name, age, and an array of subjects.
// Add a function getDetails() to return a summary string with student details.

var studentInfo = {
    name: "Alex Johnson",
    age: 20,
    subjects: ["HTML", "CSS", "JS"],
   };
  console.log(studentInfo)

//Add a function getDetails() to return a summary string with student details.
  var studentInfo = {
    name: "Alex Johnson",
    age: 20,
    subjects: ["HTML", "CSS", "JS"],
    
    getDetails: function() {
        return `Name: ${this.name}, Age: ${this.age}, Subjects: ${this.subjects.join(", ")}`;
    }
};

console.log(studentInfo.getDetails());
 


// Prime Number Checker
// Task:
// Write a function isPrime(num) that:

// Returns true if the number is prime
// Returns false if not prime

    function isPrime(num) {
        if (num <= 1) {
            console.log("false");
        }
    
        if (num === 2) {
            console.log("true");
        }
    
        if (num % 2 === 0) {
            console.log("false");
        }
    
        for (let i = 3; i <= num / 2; i += 2) {
            if (num % i === 0) {
                console.log("false"); 
            }
        }
        console.log("true");
    }
    isPrime(12)

    // Factorial Calculator

    // Task:
    // Implement factorial(n) that:
    
    // Calculates factorial using a loop (not recursion)
    // Returns 1 for input 0
    // Returns -1 for negative inputs
    
    let n = 1; 
    if (n == 1) {
        console.log(0);  
    } else if (n === -1) {
        console.log("negative_inputs");  
    } else {
        console.log(n);  
    }
    
    function Function_expression(n) {
        let y = 1;
        for (let i = 1; i <= n; i++) {
            y *= i;
        }
        console.log (y);
    }
    
    Function_expression(3);

    //Arrow Function

    var Arrow_function = (n) => {
        let result = 1;
        for (let i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }
    
    console.log(Arrow_function(4));