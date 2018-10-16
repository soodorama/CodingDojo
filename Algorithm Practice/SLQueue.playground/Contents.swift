//: Playground - noun: a place where people can play

import UIKit

class SLQNode<T> {
    var val : T
    var next : SLQNode? = nil
    init(_ val: T) {
        self.val = val
    }
}

class SLQ<T> {
    var head: SLQNode<T>? = nil
    var tail: SLQNode<T>? = nil
    
    func enqueue(_ val: T) -> Self {
        let node = SLQNode<T>(val)
        if head == nil {
            head = node
            tail = node
        }
        else {
            tail?.next = node
            tail = tail?.next
        }
        return self
    }
    
    func dequeue() -> T? {
        if head == nil {
            return nil
        }
        else if head === tail {
            let val = head?.val
            head = nil
            tail = nil
            return val
        }
        else {
            let val = head?.val
            head = head?.next
            return val
        }
    }
    
    func show() -> Self {
        var str = "Head -> "
        var cur = head
        while (cur != nil) {
            if cur === tail {
                str += "tail:\(cur?.val) -> "
            }
            else {
                str += "\(cur?.val) -> "
            }
            cur = cur?.next
        }
        str += "nil"
        print(str)
        return self
    }
}

var test = SLQ<Int>()
test.enqueue(5).enqueue(6).enqueue(3).enqueue(7)
//test.dequeue()
var pop = test.dequeue()
test.show()
print(pop)


