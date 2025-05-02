//map
//filter
//reduse
//every
//some
//fine

var arr =[1,2,3,4,5]

for (i of arr ){
    console.log (i*i)
}
//result (6) [1, 2, 3, 4, 5, 6]
var arr = [1,2,3,4,5,6]

var arr1 =[]
for (i of arr){
    arr1.push (i*1)
}
console.log (arr1)   //result (6) [1, 2, 3, 4, 5, 6]

//map () it's each and element in array returns a new array

var k = arr.map (i => i*i)
console.log (k) //result (6) [1, 4, 9, 16, 25, 36]

var k = arr.map (function (m)){
    return m*m
}
console.log (k)
// filter : it filters the array bassed on the certain condition 

var arr2 = [1,2,3,4,5,6,7,8,9]

for (i of a){
    if (i>5){
        console.log(i)
    }
}
var m = arr.filter(v=> v>5)
console.log (arr)

//even number
var b = k.filter (m => m%2 ==0)
console.log (b)

//reduse it reduse the complete arrey into single value

var m [1,2,3,4,90,23,43,45,54]
var sum =0
for (i of m){
    sum +=i
}
m.reduse ((m,n) => {m+n, 0})
console.log (k)

//every
//it checks the condition if all the elements in the arrey satisfies the conditions it returns true if not false

var a = [1,2,3,4,5,6]
function checkeven(a){
for (i of a){
    if (i %2 !=0){
        return false
    }
}

}
consoile.log (checkeven(a))
console.log (a.every (i => i% 2 == 0))
console.log (a.some (i => i%2 ==0))