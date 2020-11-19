import UIKit

// access its key-value pairs in a Dictionary

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


// Fizz Buzz
for num in 0...100 {
    if num % 3 == 0 {
        if num % 5 == 0 {
            print("Fizz Buzz")
        } else {
            print("Fizz Buzz")
        }
    } else if num % 5 == 0 {
        print("Buzz")
    } else {
        print(num)
    }
}
