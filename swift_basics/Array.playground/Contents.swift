import UIKit

// Empty Array
var item = [Int]()
print("item is of type [Int] \(item.count) items.")
item.append(4)
item.append(2)


// Array with a Default Value
var twoItem = Array(repeating: 0.0, count:2) // twoItem is of type [Double], and equals [0.0, 0.0]
print(twoItem)
