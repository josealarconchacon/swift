import Foundation

class House{
    
    // Properties
    var address: String = ""
    var numberOfFloors: Int = 0
    var numberOfWindows: Int = 0
    
    // Methods
    func openDoor() {
        print("Opening door")
    }
    
    func describe() {
        print("Your house is locate at \(address)")
    }
    
    init() {}
    // Initializers
    init(address: String) {
        self.address = address
    }
}


// Create Objects from the class
let myHouse = House()

// Access data via dot notation
myHouse.address = "435 Dekald St"
myHouse.address

// Invoke methods via dot notation
myHouse.openDoor()


let seconHouse = House(address: "435 Main St")
seconHouse.address
seconHouse.numberOfFloors = 9

seconHouse.describe()
