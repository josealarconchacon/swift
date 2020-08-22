import UIKit

// Given an array of integers, find if the array contains any duplicates.

func containsDuplicate(_ nums: [Int]) -> Bool {
    var num = [Int]()
    for i in nums {
        if num.contains(i) {
            return true
        }
        num.append(i)
    }
    return false
}
print(containsDuplicate([1,2,3,1]))
print(containsDuplicate([1,2,3,4]))
print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
