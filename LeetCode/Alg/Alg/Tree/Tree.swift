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
    
    
    
}
