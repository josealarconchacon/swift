import UIKit

/*
 Create a function to concatenate two integer arrays.
 */
func concat(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var concat_array = arr1 + arr2
    return concat_array
}
print(concat([1,2,3,4], [5,6,7,8]))
