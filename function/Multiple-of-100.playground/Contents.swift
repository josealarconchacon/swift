import UIKit

/*
 Create a function that takes an integer and return true if it's divisible by 100, otherwise return false.
 */
func divisible_100(_ num: Int) -> Bool {
    if num % 100 == 0 {
        return true
    } else {
        return false
    }
}
print(divisible_100(2))
