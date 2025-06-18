console.log ("hello")
// | Term       | What it means                         |
// | ---------- | ------------------------------------- |
// | `Promise`  | A task that will finish later         |
// | `resolve`  | Success – everything went well ✅      |
// | `reject`   | Failure – something went wrong ❌      |
// | `.then()`  | Run this if the promise is successful |
// | `.catch()` | Run this if there’s an error          |

function sayHello() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Hello, world!");
    }, 2000);
  });
}
 sayHello().then(function(message) {
  console.log(message);
});
function hello (){

}
setTimeout(()=>{
console.log("hello")
},2200);

function sum (a,b){
    console.log (a+b);
}
function calculator (a,b, sumCallback){
    sumCallback(a,b);
}
calculator(1,2, (a,b)=>{
    console.log(a+b);
})

for(var i=0; i<5; i++){
    for (var j=0; j<5; j++){
        console.log(j);
    }
}

for(var i=0; i<5; i++){
    var str ="";
    for (var j=0; j<5; j++){
        str = str +j;
        console.log(i,str);
    }
}

function getData(dataId, callback) {
  setTimeout(function() {
    console.log("data", dataId);
    if (callback) callback();
  }, 2500);
}
// nested callbak and callback hell
// getData(456);
getData (1,()=>{
getData(2,()=>{
    getData(3,()=>{
        getData(4);
    });
});
});
// Promises have 3 states 
// i. pending, IIfullfil(resove,III.reject)
var promise = new Promise((resolve, reject)=>{
    console.log ("practicing promices")
    reject("error message")
})

var getPromise = () => {
    return new Promise((resolve, reject) => {
        console.log("practice resolve");
        resolve("success");
    });
};
getPromise()

