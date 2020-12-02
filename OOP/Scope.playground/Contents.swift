import UIKit

/*
 In Swift Scope
    1. Local variable have the higher priority
    2. Parameters are given the second priority
    3. Properties of the class have the third level of priority when it comes to variable scoping
    4. Global variable are variable or constants that are defined outside of the class.
       Global variable are given the lower priority when it comes to variable scoping
 */


// 4. Gloval variable
var name = "Amanda"

class Person{
    // 3. Properties
    var name = "John"
    
    // 2. Parameters
    func describe(n: String){
        // 1. Local variable
        let name = "Toni"
        print("Hello there, my name is \(name).")
    }
}

// Create Object
let person1 = Person()
person1.describe(n: "Beth")
