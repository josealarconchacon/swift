import UIKit

struct Stack<T> {
    // hold value using an array
    private var store : [T] = []
    
    init(){}
}
extension Stack: CustomStringConvertible {
    var description: String {
        let stack_element = store.map{"\($0)"}.reversed().joined(separator: "\n")
        return stack_element
    }
}

