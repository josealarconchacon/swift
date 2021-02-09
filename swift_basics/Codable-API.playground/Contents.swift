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

// Encode
// encode a swift object into a JSON string
do {
    let amy = Person(name: "Amy", age: 99, loveApple: true)
    let encoder = JSONEncoder()
    let data = try encoder.encode(amy)
    let jsonString = String(data: data, encoding: .utf8)!
    print("json strin: \(jsonString)")
} catch {
    print("error encoding person: \(error.localizedDescription)")
}



// Decode
// convert a JSON string into a swift object
do {
    let jsonString = "{\"name\": \"Pedero\", \"age\": 109, \"loveApple\": false} "
    let decoder = JSONDecoder()
    let data = jsonString.data(using: .utf8)!
    
    // convert string into an object
    let pedro = try decoder.decode(Person.self, from: data)
    pedro.name
    pedro.loveApple
    pedro.age
} catch {
    print("error decoding person: \(error.localizedDescription)")
}
