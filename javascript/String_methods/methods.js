var a =3
    var b =2
    console.log ("sum of a + b =",a+b)
    // console.log ("sum ofa =" +a+ "and b =",+b+)
    
    // Templete string
    // embedding value and string
    //sum of 3 and 2 : 5
    console.log ("sum of ${a} and ${b} :", a+b)
    console.log ('sum of ${a} and ${b} :', a+b)
    console.log (`sum of ${a} and ${b} :`, a+b) //backtics

    //string methods
    // To identify length of string

    var a = 'Cherry'
    console.log (a.length)

    var b = 'hey Good morning guys'

    console.log (b.length)

    //white space
    // remove white space begining of the string

    var a = "    Hello    "
    console.log (a)
    console.log (a.length)
    console.log (a.trimStart()) // S need capital if it's not capital it's consider as a function
    console.log (a.trimEnd()) //E  need capital if it's not capital it's consider as a function
    console.log (a.trim())

    // Extracting the specific part of the string
    //slice()
    //index values.
    var b = 'hey Good afternoon guys'
    console.log (b.slice(0,3))
    console.log (b.slice (4,19))
    console.log (b.slice (9,b.length))
    console.log (b.slice(9,-5)) //it's count end to start
    //result - after 9 letters
    // substring negative values considered as a 0
    
    //substring

    console.log (b)
    console.log (b.substring(0,3))
    console.log (b.substring(9,-5))
    //first 9 letters
    console.log (b.substring(19,4))
    // hear second value is starting letter count then first value end letteter defins
    console.log (b.substring(9,b.length))
    // substring and slice both are same

    // how to find letter which index number showing then use index of 
    // sode is care sensitive it considered capital letters and small letters.
    console.log (b.indexOf('G'))
    console.log (b.indexOf('o'))//o need capital if it's not capital it's consider as a function
    console.log (b.lastIndexOf('o'))

    //charCodeAt()
    console.log (b.charCodeAt(15))
    //uppercase
    //lowercase
    console.log (b.toUpperCase())    
    console.log (b.toLowerCase())

    console.log (b.split(" "))
    //it's extract as string/ word differently (['hey', 'Good', 'afternoon', 'guys']) 4
    console.log (b.split(" ",2)) //(['hey', 'Good'])
    SELECT employee_id, salary, 1000 + salary AS salary_with_bonus from hr.employees;
