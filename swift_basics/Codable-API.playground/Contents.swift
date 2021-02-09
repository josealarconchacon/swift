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

// Objects
do {
    let amy = Person(name: "Amy", age: 99, loveApple: true)
    let encoder = JSONEncoder()
    let data = try encoder.encode(amy)
    let jsonString = String(data: data, encoding: .utf8)!
    print("json strin: \(jsonString)")
} catch {
    print("error encoding person: \(error.localizedDescription)")
}
