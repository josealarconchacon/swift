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
    
}
