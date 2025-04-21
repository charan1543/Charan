var ram = [1,2,3,4,5]
console.log( ram)

var employee = {
    empName : "raja",
    empage : 32,
    empid : 101,
    location : "hyd",
    mail : "raja@gmail.com"

}
console.log(employee)
console.log (employee.empName)
employee.empName = "kumar";
employee.empage = 33;
employee.location = "bangalore";
employee.mail = "kumar@gmail.com";

//modify the existring data
console.log(employee)

//Object literal
var car = {
    company: 'xyz',
    model: 'abvc',  // Model is a string, not an array here
    color: 'blue',
    maniyear: '2025',
    cars: {}, 

    stock: true,  

    buy: function () {
        console.log("You can buy the car!");
    }
};

console.log(car);  // Logs the car object

car.buy();

// factory funcion 
function personname (name, age){
    console.log(this);
    this.name=name;
    this.age=age;
    console.log(name, age);
}
var ravi = new personname ('ravi',30);
var kumar = new personname ('kumar',30);

var person = {
    name:"cherry",
    age:28
}
console.log (person.name)
person.location = 'hyd';
console.log (person)

// For delete
delete person.location 
console.log (person)