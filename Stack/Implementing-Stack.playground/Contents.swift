import UIKit

struct Stack<T> {
    // hold value using an array
    private var store : [T] = []
    
    init(){}
    
    // push item into the stack
    mutating func push(_ element: T) {
        store.append(element)
    }
    
    // pop element from the stack
    mutating func pop() -> T? {
        return store.popLast()
    }
}
extension Stack: CustomStringConvertible {
    var description: String {
        let stack_element = store.map{"\($0)"}.reversed().joined(separator: "\n")
        return stack_element
    }
}

var stack = Stack<Int>()
stack.push(100)
stack.push(120)
stack.push(200)
print("before")
print(stack)

print("after")
stack.pop()
print(stack)

