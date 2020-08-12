import UIKit

var numArray = [12,22,34,44,54,65]
// iterate over an array using  loop
numArray.forEach { (num) in
    print(num)
}
// accessing elements in array
let lastNum = numArray.last
let first = numArray.first

//append elements in array
numArray.append(77)

// Write a Swift program to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more.
func check_5(_ array: [Int]) -> Bool {
    if array.first == 5 || array.last == 5 {
        return true
    } else {
        return false
    }
}
print(check_5([1, 2, 5])) // true


// Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more
func is_equal(_ arr: [Int]) -> Bool {
    if arr.first == arr.last {
        return true
    } else {
        return false
    }
}
print(is_equal([1, 2, 3]))
print(is_equal([1, 2, 3, 1]))
