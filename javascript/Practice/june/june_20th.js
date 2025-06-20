function checkAge(age) {
  if (age >= 18) {
    console.log("You are an adult.");
  } else {
    console.log("You are a minor.");
  }
}

checkAge(20);

// Write a function getFullName(firstName, lastName) that returns the full name.
function fullname() {
    var first_name = "charan";
    var last_name = "cherry";
    var full_name = first_name.concat(" ", last_name);
    return full_name;
}
console.log(fullname());

// Write a function isEven(number) that returns true if the number is even.

function even (){
  for (var i =0; i<10; i+=2);
  console.log (i);
}
even();
