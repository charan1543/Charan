// | Technique                 | Environment       | Use Case                               |
// | ------------------------- | ----------------- | -------------------------------------- |
// | `try...catch`             | All               | General synchronous error handling     |
// | `.catch()` on Promises    | Browser/Node      | Async code and Promises                |
// | Global error listeners    | Browser/Node      | Uncaught errors and rejections         |
// | Express middleware        | Node.js (Express) | Centralized server-side error handling |
// | Higher-order functions    | All               | Wrapping multiple async functions      |
// | React Error Boundaries    | React             | UI rendering error capture             |
// | Validation libraries      | All               | Preemptively catch bad input           |
// | Monitoring tools (Sentry) | All               | Production logging and diagnostics     |


console.log("this is error handler")
try {
    // Code that may throw an error
} catch (error) {
    // Handle the error here
} finally {
    // Optional: This block runs regardless of whether an error occurred
}

// throw new Error('Something went wrong!');
try {
    let result = 10 / 0; // This doesn't throw an error, but if you divide by zero in some cases, it might be considered an error
    console.log(result);
} catch (error) {
    console.log('An error occurred: ', error.message);  // Handles the error (skip if the error is there error.message not defined)
} finally {
    console.log('This always runs.');
}


// This line immediately throws an error and stops the execution of the script at this point. 
// No further code (including the try, catch, and finally blocks)
//  will execute because the error is thrown before the try block starts.
// Since the error occurs outside of any try block, the catch block doesn’t get triggered, 
// and the finally block will not execute either.


try {
    throw new Error('Something went wrong!');
    let result = 10 / 0; // This doesn't throw an error, but if you divide by zero in some cases, it might be considered an error
    console.log(result)
}catch (error) {
    console.log('An error occurred: ', error.message);  // Catches and prints the error message
}

function checkAge(age){
    if (age <18)
        throw new error('Age must be 18 or older');
    }
    console.log('Age is valid');


try {
    checkAge(16);  // This will throw an error
} catch (error) {
    console.log(error.message);
}

function divide(a, b) {
    if (b === 0) {
        return { error: 'Division by zero' };
    }
    return { result: a / b };
}

const { error, result } = divide(10, 0);
if (error) {
    console.error(error);
} else {
    console.log(result);
}

var obj = {
    name: 'ram',
    job :{company :'NYB', city : 'HYD'} 
};
console.log (obj.job.company)

var user = {
  name: "raghu",
  age: 25,
  location: "HYD"
};
console.log(user)
const jsonString = JSON.stringify(user);
console.log(jsonString);