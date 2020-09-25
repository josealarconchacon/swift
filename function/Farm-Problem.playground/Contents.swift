import UIKit

/*
 a farmer is asking you to tell him how many legs can be counted among all his animals
    chickens = 2 legs
    cows = 4 legs
    pigs = 4 legs
 implement a function that returns the total number of legs of all the animals.
 */

func animals(_ chickens: Int, _ cows: Int, _ pigs: Int) -> Int {
    return chickens * 2 + cows * 4 + pigs * 4
}

