// without Parameters
function sayHi() {
  return 'Hi!';
}
console.log(sayHi ());

function sayHi(name) {
  return 'Hi,'+ name;
}
console.log(sayHi ('cherry'));

var input = document.getElementById('taskInput');
var addtaskbutton = document.getElementById('addTaskButton');
var tasklist = document.getElementById('task-list');

addtaskbutton.addEventListener('click', function () {
    var taskText = input.value.trim(); 

    if (taskText === '') {
        alert('Please enter a value');
        return;
    }

    var listItem = document.createElement('li');

    var taskSpan = document.createElement('span');
    taskSpan.textContent = taskText;

    var deleteBtn = document.createElement('button');
    deleteBtn.textContent = 'Delete';
    deleteBtn.style.marginLeft = '10px'; // Optional styling

    deleteBtn.addEventListener('click', function () {
        tasklist.removeChild(listItem);
    });

    listItem.appendChild(taskSpan);
    listItem.appendChild(deleteBtn);

    tasklist.appendChild(listItem);

    input.value = '';
});
var person = {
  name: "John",
  greet: function () {
    console.log("Hello!");
  }
};
person.greet();
person.name = "cherry";
console.log (person.name);
person.city="JMD";
person.greet()

var person = {
  name: "charan",
  age: 28,
  greet: function () {
    console.log("hello");
  }
};

person.city = "ATP";
person.greet(); 
console.log (person)
delete person.city
console.log (person)

var numbers = [1, 2, 3, 4];
numbers.splice(1, 2);
numbers.splice(1, 0, 99);
console.log (numbers)