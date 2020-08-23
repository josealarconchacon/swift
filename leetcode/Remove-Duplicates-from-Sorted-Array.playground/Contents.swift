import UIKit

/**
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
 Given nums = [1,1,2],
    Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 { return 0 }
    var num_count = 0
    for arr in 1..<nums.count {
        if nums[num_count] != nums[arr] {
            num_count += 1
            nums[num_count] = nums[arr]
        }
    }
    return num_count+1
}

