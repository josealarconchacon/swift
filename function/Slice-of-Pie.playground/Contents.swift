import UIKit

/*
 Function that determines whether or not it's possible to split a pie fairly given these three parameters:

 1 Total number of slices.
 2 Number of recipients.
 3 How many slices each person gets.
 */
func equalSlices(_ total: Int, _ people: Int, _ each: Int) -> Bool {
    if people == 0 || people * each <= total {
        return true
    } else {
        return false
    }
}
print(equalSlices(20, 10, 2))
