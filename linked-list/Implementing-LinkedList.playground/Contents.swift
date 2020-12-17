import UIKit

struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    // create a property to check whether the Linked List is empty or not
    var isEmpty: Bool {
        return head == nil
    }
    
    // push
    mutating func push(_ value :Value) {
        // push the new value in the place of the head
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    // append
    mutating func append(_ value: Value) {
        // check if List is not empty
        guard !isEmpty else {
            // push the value to the list
            push(value)
            return
        }
        // append the value to the tail
        let node = Node(value: value)
        // set the next for the tail to the node
        tail!.next = node
        // set the tail to the existing node
        tail = node
    }
    
    // insert
    func node(at index: Int) -> Node<Value>? {
        var currentIndex = 0
        var currentNode = head
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
    
    func insert(_ value: Value, after node: Node<Value>) {
        node.next = Node(value: value, next: node.next)
    }
    
    // pop
    mutating func pop() -> Value? {
        defer {
            // set the new head
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        // return the value of the head
        return head?.value
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

list.append(7)
print(list)  // 44 -> 33 -> 3 -> 2 -> 7

let middleNode = list.node(at: 1)!
list.insert(200, after: middleNode)
print(list) // 44 -> 33 -> 200 -> 3 -> 2 -> 7


print("Before pop")
print(list) // 44 -> 33 -> 200 -> 3 -> 2 -> 7
print("After pop")
list.pop() // 33 -> 200 -> 3 -> 2 -> 7
print(list)


 
