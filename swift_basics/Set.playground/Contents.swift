import UIKit

// Creating and Initializing an Empty Set
var mySet = Set<Character>()
mySet.insert("a")
print(mySet)



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
if let removeComedy = movieCategories.remove("Comedy") {
    print("\(removeComedy)? I'm over it.")
} else {
    print("I never much cared for that.")
}

// check whether a set contains a particular item
if movieCategories.contains("Action") {
    print("Action is in me category")
} else {
    print("I am done")
}

// Iterating Over a Set
for category in movieCategories.sorted() {
    print(category)
}
