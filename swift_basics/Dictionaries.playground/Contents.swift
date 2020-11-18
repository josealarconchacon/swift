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

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// remove a key-value pair from a dictionary by assigning a value of nil for that key:
airports["APL"] = "Apple International"
print(airports)
airports["APL"] = nil
print(airports)

// remove a key-value pair from a dictionary with the removeValue(forKey:)
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

