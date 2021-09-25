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

func createNode(_ arr:[Int]) -> ListNode? {
    if arr.count <= 0  {
        return nil
    }
    let head = ListNode(arr.first!)
    if arr.count > 1 {
        head.next = createNode(Array(arr[1...arr.count-1]))
    }
    return head
}

func createTree(_ arr:[Int?]) -> TreeNode? {
    
    func subNode(fathers:[TreeNode], arr: [Int?]) {
        var subNodes: [TreeNode] = []
        for (i, e) in fathers.enumerated() {
            if let left = arr[i * 2] {
                e.left = TreeNode(left)
                subNodes.append(e.left!)
            }
            if let right = arr[i * 2 + 1] {
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

func printTree(_ node: TreeNode){
    var queue = [node]
    var stringArr:[String] = []
    while !queue.isEmpty {
        let count = queue.count
        var str = ""
        for i in 0..<count {
            let n = queue[i]
            str = str + "\(n.val)"
            if let left = n.left {
                queue.append(left)
            }
            if let right = n.right {
                queue.append(right)
            }
        }
        stringArr.append(str)
        queue.removeSubrange(0..<count)
    }
    for (i,s) in stringArr.enumerated() {
        
        print(String(repeating: "", count: stringArr.count - i),s)
    }
}
