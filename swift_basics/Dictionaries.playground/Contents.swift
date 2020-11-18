import UIKit

// Empty Dictionary
var dict = [Int: String]()
dict[1] = "One"
dict = [:]

// Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
// add a new item to a dictionary
airports["JFK"] = "Kennedy"
//change the value associated with a particular key
airports["JFK"] = "John F. Kennedy"
