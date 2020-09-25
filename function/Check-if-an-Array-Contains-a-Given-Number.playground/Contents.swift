import UIKit

/*
 Write a function to check if an array contains a particular number.
 */
func check_for_number(_ arr: [Int], _ el: Int) -> Bool {
    for num in arr {
        if num == el {
            return true
        }
    }
    return false
}
print(check_for_number([1,2,3,4,5,6], 5))
