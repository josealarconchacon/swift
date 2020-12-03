import UIKit

// Optional


var name: Optional<String> = "Jhon"
print("Hello \(name)")

// Unconditional unwrapping
//print("Hello \(name!)")


// Optional binding
if let myName = name {
    print("Hello \(myName)")
}

// Nil coalescing operator
print("Hello \(name ?? "Tomy")")




//Accessing an optional through the property of an object
// Optional chaining
class Person{
    var name: String? = nil
}

let john = Person()
john.name = "John"
print("Hello \(john.name!.uppercased())")
