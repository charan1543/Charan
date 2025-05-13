// Dom traversing
// var div1 =document.getElementById("div1")
var div1 = document.getElementById("div1")
console.log (div1)
console.log (div1.childNodes[3].innerText)

//by using Dom traversing move to elements (parent, siblings, child)
// var div2 = document.getElementById("div2")
// var color = document.body.childNodes[1].style.Color='red'
// console.log (color)
var parent = div2.parentElement;
parent.style.backgroundColor='orange'
console.log (parent)

var children = div2.children;
console.log (children)
// siblings
// next sibling
// previous sibling
var presibling = div2.previousElementSibling;
console.log (presibling)
var next =div2.nextElementSibling;
console.log (next)
var newelement = document.createElement('h1') //its add new h1 tag using dom
newelement.textContent='this is new element by using DOM'//h1 given text
newelement.setAttribute('id','newelement')// id inserted
newelement.setAttribute('class','newelement')// class inserted
div2.appendChild(newelement)//where we need to add element
console.log (newelement) //then rtrive.