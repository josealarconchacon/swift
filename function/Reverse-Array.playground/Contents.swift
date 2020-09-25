import UIKit

/*
 Write a function to reverse an array.
 */
func reverse(_ arr: [Int]) -> [Int] {
    let myArr = Array(arr.sorted().reversed())
    return myArr
}

print(reverse([4,6,7,1,3,0]))
