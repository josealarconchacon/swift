import UIKit

func reverse(_ x: Int) -> Int {
    let number = x < 0
    var str = String((x * (number ? -1 : 1)))
    str = String(str.reversed())
        guard let result = Int32(str) else {
            return 0
        }
    return Int(result) * (number ? -1 : 1)
}
print(reverse(123))
