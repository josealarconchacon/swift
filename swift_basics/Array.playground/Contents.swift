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

if foodList.isEmpty {
    print("There is no food in the foodList")
} else {
    print("Food List has \(foodList.count) items")
}
// add a new item to the end of an array
foodList.append("Mango")
foodList += ["Cheese", "Chocolate"]

// Retrieve a value from the array
var firstItem = foodList[0]
print(firstItem)

// change an existing value at a given index
foodList[1] = "Meat"
print(foodList)

// use subscript syntax to change a range of values at once
foodList[1...3] = ["Apples","Brocoli"]
print(foodList)

// nsert an item into the array at a specified index
foodList.insert("Maple Syrup", at: 2)
print(foodList)

let removeCheese = foodList.remove(at: 5)
print(removeCheese)



