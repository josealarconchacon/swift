import UIKit

struct Queue<Element> {
    var array :[Element] = []
    init(){}
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var peek: Element? { // show item in top of the queue
        return array.first
    }
    
    mutating func enqueue(_ element: Element) -> Bool { // add item to queue
        array.append(element)
        return true
    }
    
    mutating func dequeue() -> Element? { // remove item from queue
        if(isEmpty) {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}

extension Queue: CustomDebugStringConvertible {
    var debugDescription: String {
        return String(describing: array)
    }
}
 var queue = Queue<Int>()
queue.enqueue(20)
queue.enqueue(40)
queue.enqueue(60)
queue.enqueue(80)
print(queue)

queue.dequeue()
print(queue)


