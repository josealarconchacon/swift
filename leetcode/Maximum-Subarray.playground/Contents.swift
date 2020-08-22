import UIKit

// Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

/**
 Input: [-2,1,-3,4,-1,2,1,-5,4],
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 */
func maxSubArray(_ nums: [Int]) -> Int {
    var num = nums, number = 0, sum = Int.min
    
    for i in 0..<num.count {
        number = max(num[i], num[i] + number)
        sum = max(sum, number)
    }
    return sum
}
print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
