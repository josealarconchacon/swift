import UIKit

// Two Sum
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dic = [Int: Int]()
    for(num1, num2) in nums.enumerated() {
        let value = target - num2
        if let result = dic[value] {
            return [result, num1]
        }
        dic[num2] = num1
    }
    return [0,2]
}
let array = [1,3,5,7,10]
print(twoSum(array, 11))



