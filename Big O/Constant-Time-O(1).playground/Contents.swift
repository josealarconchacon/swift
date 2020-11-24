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


/*
 Array Element Check - O(1)
 Check whether the first element is zero
 */

func firstElementIsZero(arr: [Int]) -> Bool {
    guard arr.count != 0 else {
        return false
    }
    return arr.first == 0 ? true : false
}

var firstArray = [1,0,0]
var execTime = BenchTime.measureBlock {
    _ = firstElementIsZero(arr: firstArray)
}
print("Averags execution time: \(execTime)")


var secondArray = Array<Int>(repeating: 0, count: 10000)
execTime = BenchTime.measureBlock(closure: {
    _ = firstElementIsZero(arr: secondArray)
})
print("Averags execution time: \(execTime)")


