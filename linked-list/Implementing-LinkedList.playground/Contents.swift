import UIKit

struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    // create a property to check whether the Linked List is empty or not
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ value :Value) {
        // push the new value in the place of the head
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    // instance of the Linked List
    init() {}
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
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

var list = LinkedList<Int>()
list.push(2)
list.push(3)
list.push(33)
print(list) // (33 -> 3 -> 2)

list.push(44)
print(list) // 44 -> 33 -> 3 -> 2

 
