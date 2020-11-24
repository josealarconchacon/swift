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

