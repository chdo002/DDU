//
//  List.swift
//  Alg
//
//  Created by chdo on 2021/5/9.
//

import Foundation


func List(){
    func addList(_ list1: ListNode, list2: ListNode) -> ListNode? {
        var node1: ListNode? = list1
        var node2: ListNode? = list2
        var dumm: ListNode? = nil
        var node: ListNode? = nil
        var temp = 0
        while node1 != nil && node2 != nil {
            let res = node1!.val + node2!.val + temp
            temp = res / 10
            let nextNode = ListNode(res % 10)
            if dumm == nil {
                dumm = nextNode
            }
            node?.next = nextNode
            node = nextNode
            node1 = node1?.next
            node2 = node2?.next
        }
        if temp != 0 {
            node?.next = ListNode(temp)
        }
        return dumm?.next
    }
    
//    let node1 = createNode([1,2,8])
//    let node2 = createNode([4,8,1])

//   print(addList(node1!, list2: node2!))
    
//    func createNode(ns:[Int]) -> ListNode? {
//        guard ns.count > 0 else { return nil }
//        let head = ListNode(ns.first!)
//        if ns.count > 1 {
//            head.next = createNode(ns: Array(ns[1..<ns.count]))
//        }
//        return head
//    }
    
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
    
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let headN = head else {
            return nil
        }
        if head?.val == val {
            return head?.next
        }
        
        var targetNode = head
        while targetNode?.next != nil {
            if targetNode?.next?.val == val {
                targetNode?.next = targetNode?.next?.next
            } else {
                targetNode = targetNode?.next
            }
        }
        return headN
    }
    
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        var fast = head
        var slow = head
        
        var index = 0
        while fast != nil {
            fast = fast?.next
            index += 1
            if index > k {
                slow = slow?.next
            }
        }
        
        return slow
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var current : ListNode? = nil
        var pre = head
        while pre != nil {
            let temp = pre?.next
            pre?.next = current
            current = pre
            pre = temp
        }
        return nil
    }
    
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        if l1!.val > l2!.val {
            l2?.next = mergeTwoLists(l1, l2?.next)
            return l2
        } else {
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        }
    }
    //    class LRUCache {
    //
    //
    //        init(_ capacity: Int) {
    //
    //        }
    //
    //        func get(_ key: Int) -> Int {
    //
    //        }
    //
    //        func put(_ key: Int, _ value: Int) {
    //
    //        }
    //    }
    
    
    
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
    //
    //    class Solution {
    //        func hasCycle(_ head: ListNode?) -> Bool {
    //            var fast = head
    //            var slow = head
    //            while fast?.next != nil {
    //                fast = fast?.next?.next
    //                slow = slow?.next
    //                if fast === slow {
    //                    return true
    //                }
    //            }
    //            return false
    //        }
    //    }
    //    var n1 = createNode(ns: [1,2])
    ////    n1 = createNode(ns: [1,2,2,1])
    //    Solution().hasCycle(n1)
}

//var n3 = ListNode(1);


