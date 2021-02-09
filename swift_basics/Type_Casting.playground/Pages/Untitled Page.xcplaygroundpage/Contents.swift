import Foundation

protocol Moveable {
    func moveForward();
    func moveBackward();
}

// class Car conform to the Moveable protocole
class Car: Moveable {
    func moveForward() {}
    func moveBackward() {}
    
    func hunk() {
        print("honk...")
    }
}

// // class Skateboard conform to the Moveable protocole
class Skateboard: Moveable {
    func moveForward() {}
    func moveBackward() {}
    
    func kickFlip() {
        print("Kick flip")
    }
}

// an array that holds a collection of objects
let inventory: [Moveable] = [Car(), Skateboard(),
                             Car(), Skateboard(),
                             Car(), Car(), Skateboard()]

var number_of_car = 0
var number_of_skateboard = 0


for element in inventory {
    if element is Car {
        number_of_car += 1
    }
    if element  is Skateboard {
        number_of_skateboard += 1
    }
}

number_of_car
number_of_car


// Downcasting example
if let car = inventory[0] as? Car {
    car.hunk()
}
