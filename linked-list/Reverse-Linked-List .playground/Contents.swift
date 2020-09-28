import Foundation

class Node {
    var value: Int
    var next: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}
// print all node
func node_value(_ node: Node?) {
    var node = node
    while let currentNode = node {
        print(currentNode.value)
        node = currentNode.next
    }
}
// reverse all node from list
func reverse_node(_ node: Node?) -> Node? {
    var node = node
    var previous_node: Node?
    var next_node: Node?
    while let currentNode = node {
        next_node = currentNode.next
        currentNode.next = previous_node
        previous_node = currentNode
        node = next_node
    }
    return previous_node
}

let firstNode = Node(5)
let secodNode = Node(7)
let thirdNode = Node(9)

firstNode.next = secodNode
secodNode.next = thirdNode

node_value(firstNode)

let reverseNode = reverse_node(firstNode)
node_value(reverseNode)
