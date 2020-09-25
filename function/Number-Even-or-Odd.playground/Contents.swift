import UIKit

/*
 Create a function that takes a number as an argument and returns "even" for even numbers and "odd" for odd numbers.
 */
func isEvenOrOdd(_ num: Int) -> String {
    if(num % 2 == 0){
        return "The number  \(num) is even"
      } else{
        return "The number \(num) is odd"
      }
}
print(isEvenOrOdd(3))
