import UIKit

// Empty Dictionary
var dict = [Int: String]()
dict[1] = "One"
dict = [:]

// Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")
