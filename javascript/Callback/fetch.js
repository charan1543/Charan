// // What is fetch()?

// fetch() is a built-in browser API for making HTTP requests (like GET, POST, PUT, DELETE) from client-side JavaScript.
// It returns a Promise, which resolves to the Response object representing the response to the request.
// frontend ------>(API) ---- request ---> Backend
// backend ---> response ----> frontend  
// fetch() = sending a request to the backend

// .then() = waiting for the response from backend

// console.log(data) = using the response in frontend
// app.get('/users') = route handling the request

// res.json(users) = sending a response back to frontend
// | Part     | Role              | JavaScript Equivalent |
// | -------- | ----------------- | --------------------- |
// | Frontend | Sends request     | `fetch('/api')`       |
// | API      | Handles the route | `app.get('/api')`     |
// | Backend  | Sends data        | `res.json()`          |
// | Frontend | Receives data     | `.then(data => ...)`  |

// Api Methods
// Get --> Retrive the data
// Post --> Store/send the data                      
// Put --> Update the data
//Patch --> update the dta 
// | Method    | Purpose                         | Behavior                             | Use Case                                         |
// | --------- | ------------------------------- | ------------------------------------ | ------------------------------------------------ |
// | **PUT**   | **Update entire resource**      | Replaces the whole object            | Use when you want to **replace** everything      |
// | **PATCH** | **Update part of the resource** | Updates only the **fields you send** | Use when you want to **modify only some fields** |

// Delete --> Delete the data
// | Method     | Purpose                   | Changes Server Data? |
// | ---------- | ------------------------- | -------------------- |
// | **GET**    | Retrieve data             | ❌ No                 |
// | **POST**   | Create new resource       | ✅ Yes                |
// | **PUT**    | Replace existing resource | ✅ Yes                |
// | **PATCH**  | Update part of a resource | ✅ Yes                |
// | **DELETE** | Remove a resource         | ✅ Yes                |


fetch ('https://jsonplaceholder.typicode.com/posts')
.then (data => data . json ())
.then (d => console.log(d))

var user ={
    name: "ram",
    city: "HYD",
    job: "IT"

}

fetch ('https://jsonplaceholder.typicode.com/posts',{
    method: 'post',
    body : JSON.stringify(user),
    headers: {
        'content-type': 'normaldata/json' 
    }    
});

// put 
var data ={
    id :1,
    userid: 1,
    body: 'quia et suscipit\nsuscipit recusandae consequuntur expedita ',
    title: 'this is a title'

}
fetch('https://jsonplaceholder.typicode.com/posts/1',{
    method: 'PUT',
    body: JSON.stringify(data),
    headers:{}
});
//patch
// fetch('https://jsonplaceholder.typicode.com/posts/1',{
//     method: 'patch',
   
// });
// // Dlete
// fetch('https://jsonplaceholder.typicode.com/posts/1', {
//   method: 'DELETE'
// })
// .then(response => {
//   if (response.ok) {
//     console.log('DELETE successful');
//   } else {
//     console.log('DELETE failed');
//   }
// })
// .catch(error => console.error('DELETE error:', error));

// 3states

// pending state / intial state

// successful / ful FileList

// failure case/ reject

// var a = Promise.resolve('hello')

// a.then ((value)=> {console.log(value)})
// .catch((value)=> {console.log (value)})

// // promise.all
// Promise ([
//     Promise.resolve(1),
//     Promise.reject(2),
//     Promise.headers(3)
// ])

// .then(result => {
//   console.log(result )
// })
// .catch(error => {
//   console.log (error)
// })

// Promise.all
// Promise.resolve
// Promise.reject
// Promise.race
// Promise.allSettled
// Promise.any

// | Method                 | What it does                           | Rejects when   |
// | ---------------------- | -------------------------------------- | -------------- |
// | `Promise.all()`        | Waits for all to succeed               | Any fails      |
// | `Promise.allSettled()` | Waits for all to settle (success/fail) | Never          |
// | `Promise.race()`       | Returns first settled (success/fail)   | If first fails |
// | `Promise.any()`        | Returns first success only             | If all fail    |
// | `Promise.resolve()`    | Creates a resolved promise             | Never          |
// | `Promise.reject()`     | Creates a rejected promise             | Always         |


Promise.allSettled([
    Promise.resolve(1),
    Promise.reject(2),
    Promise.resolve(3)
])
.then(result => {
    console.log( result);
});

Promise.any([
    Promise.reject("Error A"),
    Promise.reject("Error B"),
    Promise.resolve("Success")
])
.then(result => {
    console.log(result); 
})
.catch(error => {
    console.log("All rejected:", error);
})

Promise.race([
  new Promise((resolve, reject)=> {
    window.setTimeout(()=>{
      resolve(1)
    },1000)
  }),
  new Promise((resolve, reject)=> {
    window.setTimeout(()=>{
      resolve(2)
    },200)
  })
])
.then (data => console.log (data))
.catch (error => console.log (error))
function fastestPromise() {
  var p1 = new Promise(resolve => setTimeout(resolve, 300, "Slow"));
  var p2 = new Promise(resolve => setTimeout(resolve, 100, "Fast"));
  var p3 = new Promise(resolve => setTimeout(resolve, 200, "Medium"));
  return Promise.race([p1, p2, p3]);
}

fastestPromise()
.then(result => console.log(result));


// fetch('https://jsonplaceholder.typicode.com/posts', {
//   method: 'POST',
//   headers: {
//     'Content-Type': 'application/json'
//   },
//   body: JSON.stringify({
//     title: 'foo',
//     body: 'bar',
//     userId: 1
//   })
// })
// .then(res => res.json())
// .then(data => console.log(data));


fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'PUT',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    id: 1,
    title: 'updated title',
    body: 'updated content',
    userId: 1
  })
})
.then(res => res.json())
.then(data => console.log(data));

fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'PATCH',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    title: 'patched title'
  })
})
.then(res => res.json())
.then(data => console.log(data));

fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'DELETE'
})
.then(res => {
  if (res.ok) {
    console.log('Deleted successfully');
  }
});