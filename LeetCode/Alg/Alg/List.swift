//
//  List.swift
//  Alg
//
//  Created by chdo on 2021/5/9.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func List(){
    
    var n9 = ListNode(9)
    var n1 = ListNode(1); n1.next = n9
    var n5 = ListNode(5); n5.next = n1
    var n4 = ListNode(4); n4.next = n5
    
    //删除链表中的节点
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnarn7/
    //class Solution {
    //    func deleteNode(_ node: ListNode?) {
    //        if node == nil {
    //            return
    //        }
    //        node?.val = node!.next!.val
    //        node?.next = node!.next!.next
    //    }
    //}
    
    //var head = [n4,n5,n1,n9]
    //var node = n5
    //Solution().deleteNode(node)
    //n4
    
    //删除链表的倒数第N个节点
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn2925/
    //class Solution {
    //    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    //
    //        var fast = head
    //        var slow = head
    //
    //        for _ in 0..<n {
    //            fast = fast?.next
    //        }
    //        if fast == nil {
    //            return head?.next
    //        }
    //        while fast?.next != nil {
    //            fast = fast?.next
    //            slow = slow?.next
    //        }
    //        slow?.next = slow?.next?.next
    //        return head
    //    }
    //}
    //Solution().removeNthFromEnd(n4, 2)
    
    //反转链表
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnhm6/
//    class Solution {
//        func reverseList(_ head: ListNode?) -> ListNode? {
//            if head?.next == nil {
//                return head
//            }
//            var oldHead = head
//            var newHead: ListNode? = nil
//            while oldHead != nil {
//                let temp = ListNode(oldHead!.val)
//                temp.next = oldHead?.next
//
//                temp.next = newHead
//                newHead = temp
//                oldHead = oldHead?.next
//            }
//            return newHead
//        }
//        func reverseList(_ head: ListNode?) -> ListNode? {
//            if head?.next == nil {
//                return head
//            }
//            var stack = [ListNode]()
//            var cur = head
//            while cur != nil {
//                stack.append(cur!)
//                cur = cur?.next
//            }
//            var node = stack.popLast()
//            let newHead = node
//            while !stack.isEmpty {
//                let temp = stack.popLast()
//                node?.next = temp
//                node = node?.next
//            }
//            return newHead
//        }
//    }
//    Solution().reverseList(n4)
    
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnbp2/
//    合并两个有序链表
    
    class Solution {
        func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            
            var node1 = l1
            var node2 = l2
            var newHead = node1
            while node1 != nil && node2 != nil {
                
            }
            
            return nil
        }
    }
    //4519
    
}
