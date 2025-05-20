function changeBackgroundColor() {
    var colors = ["red", "blue", "green", "purple", "orange"];
    var i = 0;
    
    var interval = setInterval(() => {
        document.body.style.backgroundColor = colors[i];
        i = (i + 1) % colors.length;
    }, 2000);
    setTimeout(() => {
        clearInterval(interval);
        console.log("Stopped the background color change.");
    }, 6000); 
}
changeBackgroundColor();