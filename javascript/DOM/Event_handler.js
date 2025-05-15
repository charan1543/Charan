// var btn = document.getElementById('click')
// function btnclick(){
//     alert('Button clicked')
// }
// btn.addEventListener('click',btnclick)
// use caputre - true (capture) false (bubbling phase)
// Window -> document -> html -> body -> div -> ...first ..-> btn (parent -> child)

var div2 = document.getElementById("div2");

div2.addEventListener("click", function(){
    alert ("this is a warning ! message")
})


