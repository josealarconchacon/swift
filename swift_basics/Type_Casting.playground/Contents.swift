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
let inventory: = [Car(), Skateboard(),Car(), Skateboard(),Car(), Skateboard()]
