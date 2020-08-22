import UIKit

//Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 1, count: nums.count)
    var product: Int = 1
    for i in 1..<nums.count {
        result[i] = result[i - 1] * nums[i - 1]
    }
    for i in stride(from: nums.count - 1, to: -1, by: -1){
        result[i] *= product
        product *= nums[i]
    }
    return result
}
print(productExceptSelf([1,2,3,4]))
