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



var firstArray = generateRandomArray(size: 100, maxVal: UInt32.max)
var execTime = BenchTime.measureBlock {
    _ = sum_up(arr: firstArray)
}
print("The average execution for firstArray containing 100 element is \(execTime)")


var secondArray = generateRandomArray(size: 1000, maxVal: UInt32.max)
execTime = BenchTime.measureBlock(closure: {
    _ = sum_up(arr: secondArray)
})
print("The average execution for secondArray containing 1000 element is \(execTime)")


var thridArray = generateRandomArray(size: 10000, maxVal: UInt32.max)
execTime = BenchTime.measureBlock(closure: {
    _ = sum_up(arr: thridArray)
})
print("The average execution for thridArray containing 10000 element is \(execTime)")
