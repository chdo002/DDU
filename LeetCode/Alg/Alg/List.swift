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
    
    //    var n9 = ListNode(9)
    //    var n1 = ListNode(1); n1.next = n9
    //    var n5 = ListNode(5); n5.next = n1
    //    var n4 = ListNode(4); n4.next = n5
    
    func createNode(ns:[Int]) -> ListNode? {
        guard ns.count > 0 else { return nil }
        let head = ListNode(ns.first!)
        if ns.count > 1 {
            head.next = createNode(ns: Array(ns[1..<ns.count]))
        }
        return head
    }
    
    //
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
    //    合并两个有序链表
    //
    //    class Solution {
    //        func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    //
    //            let head: ListNode? = ListNode(0)
    //            var popNode = head
    //            var node1 = l1
    //            var node2 = l2
    //            while let n1 = node1, let n2 = node2{
    //                if n1.val < n2.val {
    //                    popNode?.next = n1
    //                    node1 = n1.next
    //                } else {
    //                    popNode?.next = n2
    //                    node2 = n2.next
    //                }
    //                popNode = popNode?.next
    //            }
    //            popNode?.next = node1 == nil ? node2 : node1
    //            return head?.next
    //        }
    //    }
    //    let n1 = createNode(ns: [1,2,4])
    //    let n2 = createNode(ns: [1,3,4])
    //    Solution().mergeTwoLists(n1, n2)
    
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnv1oc/
    //    回文链表
//    class Solution {
        //        func reverseList(_ head: ListNode?) -> ListNode? {
        //            if head?.next == nil {
        //                return head
        //            }
        //            var oldHead = head
        //            var newHead: ListNode? = nil
        //            while oldHead != nil {
        //                let temp = ListNode(oldHead!.val)
        //                temp.next = newHead
        //                newHead = temp
        //                oldHead = oldHead?.next
        //            }
        //            return newHead
        //        }
        //
        //        func isPalindrome(_ head: ListNode?) -> Bool {
        //            var reversHead = reverseList(head)
        //            var headN = head
        //            while reversHead != nil, headN != nil{
        //                if headN!.val != reversHead!.val {
        //                    return false
        //                } else {
        //                    reversHead = reversHead?.next
        //                    headN = headN?.next
        //                }
        //            }
        //            return true
        //        }
//        func isPalindrome(_ head: ListNode?) -> Bool {
//            guard head != nil else {
//                return true
//            }
//
//            var current = head
//            var arr = [Int]()
//            while current != nil {
//                arr.append(current!.val)
//                current = current?.next
//            }
//            var first = 0, last = arr.count - 1
//            while first < last {
//                if arr[first] != arr[last] {
//                    return false
//                }
//                first += 1
//                last -= 1
//            }
//            return true
//        }
//    }
//    var n1 = createNode(ns: [1,2])
//    n1 = createNode(ns: [1,2,2,1])
//    Solution().isPalindrome(n1)
    
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnwzei/
//    环形链表
    
    class Solution {
        func hasCycle(_ head: ListNode?) -> Bool {
            var fast = head
            var slow = head
            while fast?.next != nil {
                fast = fast?.next?.next
                slow = slow?.next
                if fast === slow {
                    return true
                }
            }
            return false
        }
    }
    var n1 = createNode(ns: [1,2])
//    n1 = createNode(ns: [1,2,2,1])
    Solution().hasCycle(n1)
}

//var n3 = ListNode(1);


