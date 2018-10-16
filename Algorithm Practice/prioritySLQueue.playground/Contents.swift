//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var value: T
    var next: Node? = nil
    var priority : Int
    init(_ value: T, _ priority: Int) {
        self.value = value
        self.priority = priority
    }
}

class PSLQ<T> {
    var head: Node<T>? = nil
    var tail: Node<T>? = nil
    
    func enqueue(_ value: T, _ priority: Int) -> Self {
        let node = Node(value, priority)
        if head == nil {
            head = node
            tail = node
        }
        else if (head?.priority)! < node.priority {
            node.next = head
            head = node
        }
        else if (tail?.priority)! >= node.priority {
            tail?.next = node
            tail = node
        }
        else {
            var runner = head
            while runner?.next != nil && (runner?.next?.priority)! >= node.priority {
                runner = runner?.next
            }
            node.next = runner?.next
            runner?.next = node
        }
        return self
    }
    
    func dequeue() -> T? {
        let val = head?.value
        if head == nil {
            return nil
        }
        else if head === tail {
            head = nil
            tail = nil
        }
        else {
            head = head?.next
        }
        return val
    }
    
    func show() -> Self {
        var runner = head
        var output = "head -> "
        if runner != nil {
            while runner?.next != nil {
                output += "\(runner?.value) -> "
                runner = runner?.next
            }
            output += "\(runner?.value)"
        }
        output+="-> tail"
        print(output)
        return self
    }
}

var queue = PSLQ<String>()
queue.enqueue("broken bone",2).enqueue("head injury",10).enqueue("spleen hurts",7).show()
var val = queue.dequeue()
queue.show()

