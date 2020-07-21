import UIKit

public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    var previous: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>
    private var head: Node?
    
    public var firstElement: Node? {
        return head
    }
    public var lastElement: Node? {
        guard var current_node = head else {
            return nil
        }
        while let next = head?.next {
            current_node = next
        }
        return current_node
    }
}

let list = LinkedList<String>()
list.firstElement
