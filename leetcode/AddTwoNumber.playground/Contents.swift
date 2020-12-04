import UIKit


// singly-linked list
public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var n1 = l1
    var n2 = l2
    var previous = ListNode(0)
    let head = previous
    var carry = 0

    while n1 != nil || n2 != nil {
        var addNumbers = (n1?.val ?? 0) + (n2?.val ?? 0)
        if carry > 0 || addNumbers >= 10 {
            addNumbers += carry
            carry = 0
            carry = addNumbers / 10
            addNumbers = addNumbers % 10
        }

        let new = ListNode(addNumbers)
        n1 = n1?.next
        n2 = n2?.next
        previous.next = new
        previous = previous.next!
    }
    if carry > 0 {
        previous.next = ListNode(carry)
    }
    return head.next

}


