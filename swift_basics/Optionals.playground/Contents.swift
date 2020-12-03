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
