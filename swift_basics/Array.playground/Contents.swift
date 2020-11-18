import UIKit

// Empty Array
var item = [Int]()
print("item is of type [Int] \(item.count) items.")
item.append(4)
item.append(2)


// Array with a Default Value
var twoItem = Array(repeating: 0.0, count:2) // twoItem is of type [Double], and equals [0.0, 0.0]
print(twoItem)


// Adding Two Arrays Together
var anotherTwoItem = Array(repeating: 2.5, count: 2) // [2.5, 2.5]
var fourItem = twoItem + anotherTwoItem
print(fourItem)


//Array with an Array Literal
var foodList: [String] = ["Eggs", "Milk","Bread", "Banana"]
print("Food List contains \(fourItem.count) items")


