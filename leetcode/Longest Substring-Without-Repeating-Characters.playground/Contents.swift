import UIKit
// Given a string, find the length of the longest substring without repeating characters.

func lengthOfLongestSubstring(_ s: String) -> Int {
    var dict = [Character:Int]()
    var length = 0
    var repeatChar = -1
    var result = 0

    for c in s {
        if (dict[c] != nil) && (dict[c]! > repeatChar) {
            repeatChar = dict[c]!
        }
        
        length = max(result - repeatChar, length)
        dict[c] = result
        result += 1
    }
    return length
}
print(lengthOfLongestSubstring("abcabcbb"))
