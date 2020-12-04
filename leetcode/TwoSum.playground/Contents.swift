import UIKit


func two_sum(_ n: [Int], target: Int) -> [Int] {
    var dict = [Int: Int]()
    let num = n.sorted()
    for (i,j) in num.enumerated() {
        let value = target - j
        if let selectNum = dict[value] {
            return [selectNum, i]
        }
        dict[j] = i
    }
    return [0,1]
}


let array = [2,7,11,15]
print(two_sum(array, target: 17))  // [0, 3]

let array1 = [3,3]
print(two_sum(array1, target: 6)) // [0, 1]
