import Foundation
import QuartzCore

public class BenchTime {
    public static func measureBlock(closure:() -> Void) -> CFTimeInterval {
        let count = 10
        // store the count in the array
        var executeTime = Array<Double>(repeating: 0.0, count: count)
        for i in 0..<count {
            // retrieve the current absolute time with the CACurrentMediaTime framework
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            let execTime = endTime - startTime
            executeTime[i] = execTime
        }
        return (executeTime.reduce(0, +)) / Double(count)
    }
}


func generateRandomArray(size: Int, maxVal: UInt32) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    var finalResult = [Int](repeating: 0, count: size)
    for nums in 0..<size {
        // use arc4random_uniform to create random content for the array
        finalResult[nums] = Int(arc4random_uniform(maxVal))
    }
    return finalResult
}

// func to sum up the element for the input array
func sum_up(arr: [Int]) -> Int {
    // the sum of the element get store in result variable
    var result: Int = 0
    // iterate through the element of the input array
    for i in 0..<arr.count {
        result += arr[i]
    }
    // return the sum of all integer from the input array
    return result
}
