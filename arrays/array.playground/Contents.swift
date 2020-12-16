import Foundation

var superHeroes: Array<String> = ["Spiderman", "Superman",]

// properties
superHeroes.isEmpty
superHeroes.first
superHeroes.last


// methods
superHeroes.append("Captain Marvel") // add to the end of the array
superHeroes.insert("Badman", at: 1) // add element to a specific index position
superHeroes.removeLast()
superHeroes.remove(at: 2)
superHeroes.contains("Spiderman") // check if an elemet exist



//Subscription Notation
superHeroes[1]
superHeroes



// Iterate through an array content
for superH in superHeroes {
    print("I am \(superH)")
}
