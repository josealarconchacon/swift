import UIKit

/**
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 You may assume no duplicates in the array.
    Input: [1,3,5,6], 5
    Output: 2
 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
var firstIndex = 0
    var lastIndex = nums.count - 1
    while firstIndex <= lastIndex {
        let midIndex = (firstIndex + lastIndex) / 2
        
        if nums[midIndex] == target {
            return midIndex
        } else if nums[midIndex] > target {
            lastIndex = midIndex - 1
        } else {
            firstIndex = midIndex + 1
        }
    }
    return firstIndex
}
print(searchInsert( [1,3,5,6], 5))
