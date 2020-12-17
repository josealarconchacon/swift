import UIKit

struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    // create a property to check whether the Linked List is empty or not
    var isEmpty: Bool {
        return head == nil
    }
    
    // instance of the Linked List
    init() {}
}





// Implement a Node Class
class Node<Value> {
    var value: Value
    var next: Node?
    
    // initializer
    init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        
        guard let next = next else {
            return "\(value)"
        }
        // current node value, point to the node
        return "\(value) -> " + String(describing: next)
    }
}

let list = LinkedList<Int>()
 
