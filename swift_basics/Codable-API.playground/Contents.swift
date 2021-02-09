import Foundation

// class conforms to the Codable protocole
class Person: Codable {
    let name: String
    let age: Int
    let loveApple: Bool
    
    init(name: String, age: Int, loveApple: Bool) {
        self.name = name
        self.age = age
        self.loveApple = loveApple
    }
}


