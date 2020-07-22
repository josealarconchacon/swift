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
    
    public var first_node: Node? {
        return head
    }
    
    public var print_node: String {
        var array = "["
        guard var node = head else { return array + "]"}
            while let next = node.next {
                array += "\(node.value), "
                node = next
            }
        array += "\(node.value)"
        return array + "]"
    }
    
    public var last_node: Node? {
        guard var current_node = head else {
            return nil
        }
        while let next = head!.next {
            current_node = next
        }
        return current_node
    }
    
    public var count_node: Int {
        guard var node = head else { return 0}
        var count = 1
        while let next_value = node.next {
            count += 1
            node = next_value
        }
        return count
    }
    
    // append
    public func append(value: T) {
        let new_node = Node(value: value)
        // node in list
        if let last = last_node {
            new_node.previous = last
            last.next = new_node
        } else {
            // no node in list
            head = new_node
        }
    }
    // fetch Node at Index
    public func node_at_index(atIndex index: Int) -> Node {
        if index == 0 {
            return head!
        } else {
            var node = head?.next
            for _ in 1..<index {
                node = node?.next
                if node == nil { break}
            }
            return node!
        }
    }
}

let list = LinkedList<String>()
list.first_node
list.last_node
list.count_node
list.append(value: "Hello")
list.count_node
list.append(value: "Swift")
list.count_node
list.print_node
list.append(value: "node")
list.print_node

list.node_at_index(atIndex: 2).value
list.node_at_index(atIndex: 1).value
list.node_at_index(atIndex: 0).value





