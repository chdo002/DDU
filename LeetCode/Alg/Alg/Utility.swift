//
//  Utility.swift
//  Alg
//
//  Created by 陈栋 on 2021/9/25.
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

func createList(_ arr:[Int]) -> ListNode {
    let head = ListNode(arr.first!)
    if arr.count > 1 {
        head.next = createList(Array(arr[1...]))
    }
    return head
}

func printList(_ list: ListNode) {
    var valArr:[String] = []
    var head: ListNode? = list
    while head != nil {
        valArr.append("\(head!.val)")
        head = head?.next
    }
    print(valArr.joined(separator: "->"))
}

extension Array {
    subscript(al index :Int) -> Int? where Element == Int?  {
        get {
            if index < count {
                if let e = self[index] {
                    return e
                }
            }
            return nil
        }
    }
}

// MARK: - 树

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func createPrintTree(_ arr:[Int?]){
    printTree(createTree(arr))
}

func createTree(_ arr:[Int?]) -> TreeNode {
    func subNode(fathers:[TreeNode], arr: [Int?]) {
        var subNodes: [TreeNode] = []
        for (i, e) in fathers.enumerated() {
            if let left = arr[al:i * 2] {
                e.left = TreeNode(left)
                subNodes.append(e.left!)
            }
            if let right = arr[al:i * 2 + 1] {
                e.right = TreeNode(right)
                subNodes.append(e.right!)
            }
        }
        let leftIndex = arr.count - fathers.count * 2
        if leftIndex > 0 {
            subNode(fathers: subNodes, arr: Array(arr[(fathers.count * 2)...]))
        }
    }
    let node = TreeNode(arr.first!!)
    subNode(fathers: [node], arr: Array(arr[1...]))
    return node
}

/// 打印树
func printTree(_ node: TreeNode){
    var queue = [node]
    var stringArr:[[String]] = []
    let emptyNode = TreeNode(Int.min)
    var shouldBreak = false
    while !queue.isEmpty && !shouldBreak {
        let count = queue.count
        var strArr:[String] = []
        shouldBreak = true
        for i in 0..<count {
            let n = queue[i]
            if n.val == Int.min {
                strArr.append("_")
            } else {
                strArr.append("\(n.val)")
            }
            if let left = n.left {
                shouldBreak = false
                queue.append(left)
            } else {
                queue.append(emptyNode)
            }
            if let right = n.right {
                shouldBreak = false
                queue.append(right)
            } else {
                queue.append(emptyNode)
            }
        }
        stringArr.append(strArr)
        queue.removeSubrange(0..<count)
    }
    for (i,s) in stringArr.enumerated() {
        let pa = Int(pow(2.0, Double(stringArr.count - i)) - 1)
        let tab = String(repeating: " ", count: pa)
        let sep = String(repeating: " ", count: pa * 2 + 1)
        print(tab,s.joined(separator: sep))
    }
}
