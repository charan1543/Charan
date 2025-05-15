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
// createElement
var newelement = document.createElement('h1') //its add new h1 tag using dom
// textContent
newelement.textContent='this is new element by using DOM'//h1 given text
// setAttribute
newelement.setAttribute('id','newelement')// id inserted
newelement.setAttribute('class','newelement')// class inserted
// appendChild
div2.appendChild(newelement)//where we need to add element
console.log (newelement) //then rtrive.

// insertBefore
var h1 = document.createElement('h1')
h1.textContent='justruse1324'
var div1= document.getElementById('div1')
div1.appendChild(h1)
var a = div1.firstElementChild
console.log(a)
div1.insertBefore(h1,a)

// replaceChild()

var replace =document.getElementById('re')
div1.replaceChild(h1,replace)

// remove()
// div2.remove()
// remove(): If you are working directly with the element you want to remove, you can use remove()
// removechild
var remove_element =div2.firstElementChild
console.log(remove_element)
// div2.removeChild(remove_element)
remove_element.remove()
// removeChild(): If you are working with a parent element and need to remove a specific child, use removeChild().

// event handler
// event EventListener
// adding events to the dom

// div2 .addElementListener(Handler,eventToBeAdded (function),useCapture)
div2.addEventListener("click", function(){
    alert ("this is a warning ! message")
})

// function clickEvent(){
//     alert ("this is a warning ! message")
// }
// div2.addElementListener('click',clickEvent);

// click: Triggered when the element is clicked.

// dblclick: Triggered when the element is double-clicked.

// keydown: Triggered when a key is pressed down.

// keyup: Triggered when a key is released.

// submit: Triggered when a form is submitted.

// mouseover: Triggered when the mouse moves over an element.

// mouseout: Triggered when the mouse moves out of an element.

// focus events:
// focus
// blur
// focusin
// focusout

// div2 .addElementListener(Handler,eventToBeAdded (function),useCapture)
// div2.addEventListener("click", function(){
//     alert ("this is a warning ! message")
// })
// var btn = document.getElementById('click')
// function btnclick (){
//     alert('use to apply event')
// }