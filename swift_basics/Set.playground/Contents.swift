import UIKit

// Creating and Initializing an Empty Set
var mySet = Set<Character>()
mySet.insert("a")
print(mySet)
mySet = []


// Set with an Array Literal
var movieCategories : Set<String> = ["Action", "Comedy"]
print("I have \(movieCategories.count) movies categories in my list")

if movieCategories.isEmpty {
    print("Movie category is mo isEmpty")
} else {
    print("There is \(movieCategories.count) movies categories")
}

// dd a new item into a set
movieCategories.insert("Horror")
print(movieCategories)

// remove an item from a set

