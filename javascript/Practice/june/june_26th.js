function square(number) {
    return number * number;
}

console.log(square(4));

function even (){
    for (var i =0; i<10; i++){
        if (i%2===0){
            console.log(i);
        }
    }
}
even ()

function factorial (){
    for (var i=0; i<=10; i++){
        var factorial =1;
        for(j=1; j<=i; j++){
            factorial = factorial*j;
        }
        console.log ('factorial', + i + 'is', factorial);
    }
}
factorial ()
