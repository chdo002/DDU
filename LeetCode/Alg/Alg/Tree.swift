//
//  Tree.swift
//  Alg
//
//  Created by chdo on 2021/5/11.
//

import Foundation

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
