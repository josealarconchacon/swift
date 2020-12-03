import UIKit

/*
    Inheritance is a fundamental design in OOP where we define relationship between classes, and by defining it relationship, it significantly reduce the amount of code we need to write
 */


// Base class - contain common properties and methods
class Vehicle{
    var currentSpeed: Int = 0
    var material: String = "steel"
    
    
    func describe(){
        print("Traveling at \(currentSpeed) miles per hour")
    }
    func makeNoise(){
        print("ring ring")
    }
}


// Subclass - will Inherit all the common properties and methods from the Base class
class Bicycle: Vehicle{
    
}

class Train: Vehicle{
    override func makeNoise() {
        print("choo choo choo ....")
    }
}

let myBike = Bicycle()
myBike.describe()

let myTrain = Train()
myTrain.makeNoise()
