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


let first: Set = [1, 3, 5, 7, 9]
let second: Set = [0, 2, 4, 6, 8]
let thrid: Set = [2, 3, 5, 7]

print(first.union(second).sorted())  // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(first.symmetricDifference(thrid).sorted()) // [1, 2, 9]

// Set Membership and Equality
    let firstS: Set = ["a", "b"]
    let seconS: Set = ["g", "f", "r", "a", "b"]
    let thirdS: Set = ["j", "k"]
        firstS.isSubset(of: seconS)  // true
        seconS.isSuperset(of: firstS)// true
        seconS.isDisjoint(with: thirdS)// true



 
