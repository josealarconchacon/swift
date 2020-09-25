import UIKit

/*
 Create a function that takes two strings as arguments and return either true or false depending on whether the total number of characters in the first string is equal to the total number of characters in the second string.
 
 */
func compare_string(_ str1: String, _ str2: String) -> Bool {
    if str1.count == str2.count {
        return true
    } else {
        return false
    }
}
print(compare_string("Hello", "Swift"))
