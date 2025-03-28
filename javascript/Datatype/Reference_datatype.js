var Apple = "Apple"
var Bannana = "Bannana"
var Orange = "Orange"

var a = [10, 20 , 30, 40, Apple, Bannana, Orange, "ravi", undefined, null, true, false, [10, 20, 30],
10,[10,20, 30,40, 50 , 60, 70, 80, 90, 100]]

console.log(a)

console.log(a.length)

var studentdata = ["Ravi", "Raju", "Kiran"]

console.log(studentdata)
console.log(studentdata.length)
console.log(studentdata[0])
// index value represent 0 ( index value start with 0)
//static keys acces .(dot) and off operator [""] (squere brackets and doble )
// how to define object { }(Curly braces)
// related data (Multiple key value pairs).

var Empdetails={
 empname:"Raju",
 empid: 101,
 phno: 7887668776,
 email:"raju@gmail.com",
 address: "Hydrabad",


}
console.log(Empdetails)
console.log(Empdetails.email)
console.log(Empdetails.empname)
console.log(Empdetails["phno"])