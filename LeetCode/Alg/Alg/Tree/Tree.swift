//
//  Tree.swift
//  Alg
//
//  Created by chdo on 2021/5/11.
//

import Foundation

public class TreeNode<T> {
    public var val: T
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0 as! T; self.left = nil; self.right = nil; }
    public init(_ val: T) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: T, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func createTree(data:Any) -> TreeNode<Any>? {
    if let touple = data as? (String, (Any,Any)) {
        return TreeNode(touple.0,
                        createTree(data: touple.1.0),
                        createTree(data: touple.1.1))
    } else if let touple = data as? (String, (Int,Any)) {
        return TreeNode(touple.0,
                        nil,
                        createTree(data: touple.1.1))
    } else if let touple = data as? (String, (Any,Int)) {
        return TreeNode(touple.0,
                        createTree(data: touple.1.0),
                        nil)
    } else if let val = data as? String {
        return TreeNode(val)
    }
    return nil
}

func created<T>(_ nodes:[T?]) -> TreeNode<T>? {
    var arr = [TreeNode<T>?]()
    arr.append(TreeNode(nodes.first!!))
    for i in 1..<nodes.count {
        if let val = nodes[i] {
            let node = TreeNode(val)
            arr.append(node)
            if i % 2 != 0 {
                if let pNode = arr[(i + 1) / 2 - 1] {
                    pNode.left = node
                }
            } else {
                if let pNode = arr[i / 2 - 1] {
                    pNode.right = node
                }
            }
        } else {
            arr.append(nil)
        }
    }
    return arr.first!
}

func Tree(){
    
   
    
    //    二叉树的最大深度
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnd69e/
    //    class Solution {
    //        func maxDepth(_ root: TreeNode?) -> Int {
    //            return root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn08xg/
    //    验证二叉搜索树
    
//    class Solution {
//        func isValidBST(_ root: TreeNode<Int>?) -> Bool {
//            return isBST(root, min: Int.min, max: Int.max)
//        }
//        func isBST(_ root: TreeNode<Int>?, min:Int?, max:Int?) -> Bool {
//            guard let node = root else {
//                return true
//            }
//            if node.val >= max! || node.val <= min! {
//                return false
//            }
//            return isBST(root?.left, min: min, max: node.val) && isBST(root?.right, min: node.val, max: max)
//        }
//    }
//
//    let n = created([2,2,2])
//    let s = Solution().isValidBST(n)
//    print(s)
//
    
//    二叉树的层序遍历
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnldjj/
//    class Solution {
//        func levelOrder(_ root: TreeNode<Int>?) -> [[Int]] {
//            var res = [[Int]]()
//            guard let n = root else {
//                return res
//            }
//            var queue = [TreeNode<Int>]()
//            queue.append(n)
//            while !queue.isEmpty {
//                var level = [Int]()
//                let count = queue.count
//                for i in 0..<count {
//                    let node = queue[i]
//                    level.append(node.val)
//                    if let left = node.left {
//                        queue.append(left)
//                    }
//                    if let right = node.right {
//                        queue.append(right)
//                    }
//                }
//                queue.removeSubrange(0..<count)
//                res.append(level)
//            }
//            return res
//        }
//    }
//    
//    let n = created([3,9,20,nil,nil,15,7])
//    let s = Solution().levelOrder(n)
//    print(s)
}
