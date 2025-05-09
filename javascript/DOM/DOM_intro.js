console.log (this)
console.log (window.document)
console.dir (document)
console.dir (document.body) //will show a collapsible list of all its properties and methods, like .childNodes, .style, .innerHTML, etc.
console.log (document.body) //will show the actual HTML element (<body>...</body>), rendered like it would appear on a web page
console.log (document.childNodes[1].childNodes[2])
console.log(document.body.childNodes)// log print (to see the output in the console)
console.dir(document.body.childNodes)// dir print (to see special object properties and methods)
console.log(document.childNodes)
console.log (document.childNodes[1].childNodes[2].childNodes[1])
console.log (document.childNodes[1].childNodes[2].innerText)
console.dir (document.childNodes[1].childNodes[2].childNodes[1].innerText) //know the exact text in tag
console.log (document.childNodes[1].childNodes[2].childNodes[1].innerText = "heey")
console.dir(document.body.childNodes[1])
console.dir(document.body.childNodes[5])
console.dir (document.head)
console.dir(document.head.childNodes)
