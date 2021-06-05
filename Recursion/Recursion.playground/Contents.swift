import UIKit
// A function that calls itself is known as a recursive function

func factorial(num: Int) -> Int {
    if(num == 0) {
        return 1
    }
    return num * factorial(num: num - 1)
}

print(factorial(num: 4))
print("---------------------------------------------------------------")


// Implement Power Function Using Recursion
func power(num: Int, pow: Int) -> Int {
    if(pow == 0) {
        return 1
    } else {
        return num * power(num: num, pow: pow - 1)
    }
}

let the_power = power(num: 2, pow: 3)
print(the_power)
