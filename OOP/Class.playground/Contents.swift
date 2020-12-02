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
    
    // Initializers
    init(address: String) {
        self.address = address
    }
}

