import UIKit

/**
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
 */

func isValid(_ s: String) -> Bool {
    if s.count == 0  {
        return true
    }
    let open_brace: [Character: Character] = [")": "(", "}": "{", "]": "["]
    var char = [Character]()
    
    for i in s {
        if let openingBrace = open_brace[i] {
            let first = char.isEmpty ? "#" : char.removeLast()
            if openingBrace != first { return false }
        } else {
            char.append(i)
        }
    }
    return char.isEmpty
}
print(isValid("()"))
print(isValid("(]"))
