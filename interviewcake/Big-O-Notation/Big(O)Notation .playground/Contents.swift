import UIKit
/**
 Big O notation is  use for talking about how long an algorithm takes to run. It's how we compare the efficiency of different approaches to a problem.
 */
// O(1) time (or "constant time")
// The input array could be 1 item or 1,000 items, but this function would still just require one "step."
func first_item(in item: [Int]) {
    print(item[0])
}


// O(n) time (or "linear time"),
// where n is the number of items in the array. If the array has 10 items, we have to print 10 times.

func items(in item: [Int]) {
    for i in item {
        print(i)
    }
}


//O(n2^) time (or "quadratic time").
// Here we're nesting two loops. If the array has 10 items, we have to print 100 times
func printAllPossibleOrderedPairs(in items: [Int]) {
    for first in items {
        for second in items {
            print(first, second)
        }
    }
}


// --------------

/**
 Space complexity:
 
 when we talk about space complexity, we're talking about additional space, so we don't include space taken up by the inputs. For example, this function takes constant space even though the input has nnn items:
 */
func getLargestItem(in items: [Int]) -> Int {
    var largest = Int.min
    for item in items {
        if item > largest {
            largest = item
        }
    }
    return largest
}

