import UIKit

/*
 Find the Perimeter of a Rectangle
 Create a function that takes length and width and finds the perimeter of a rectangle.
 */

func perimeter(_ length: Int, _ width: Int) -> Int {
    let rectangle_perimeter = 2 * length + width
    return rectangle_perimeter
}

print(perimeter(10, 5))
