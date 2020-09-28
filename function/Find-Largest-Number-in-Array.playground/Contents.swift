import UIKit

// function that takes an array of numbers. Return the largest number in the array.
func findLargestNum(_ arr: [Int]) -> Int {
    var largest = Int()
    for i in arr {
        if i > largest {
            largest = i
        }
    }
    return largest
}
let array = [11,23,43,33,67]
print(findLargestNum(array))
