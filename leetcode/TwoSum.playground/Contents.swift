import UIKit


func two_sum(_ n: [Int], target: Int) -> [Int] {
    var dictionary = [Int: Int]()
    for(i,y) in n.enumerated() {
        let value = target - y
        if let addNum = dictionary[value] {
            return [addNum, i]
            }
        dictionary[y] = i
    }
  return [0,1]
}


let array = [2,7,11,15]
print(two_sum(array, target: 17))  // [0, 3]

let array1 = [3,2,4]
print(two_sum(array1, target: 6)) // [1, 2]
