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
    
    let res:Any =
        ("F",
         (("B",("A",("D",("C","E")))),
          ("G",(0,("I",("H",0))))
         )
        )
    
    guard let slsl = createTree(data: res) else { return }
    //    前序遍历
    func p_ergodic(_ node: TreeNode<Any>) {
        print(node.val)
        if let left = node.left {
            p_ergodic(left)
        }
        if let right = node.right {
            p_ergodic(right)
        }
    }
    
    //    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xeywh5/
//    class Solution {
//        //        func preorderTraversal(_ root: TreeNode<Int>?) -> [Int] {
//        //            var result = [Int]()
//        //            var stack = [TreeNode<Int>]()
//        //            var rootNode = root
//        //            while rootNode != nil || !stack.isEmpty {
//        //                while rootNode != nil {
//        //                    result.append(rootNode!.val)
//        //                    stack.append(rootNode!)
//        //                    rootNode = rootNode?.left
//        //                }
//        //                rootNode = stack.popLast()?.right
//        //            }
//        //            return result
//        //        }
//        func preorderTraversal(_ root: TreeNode<Int>?) -> [Int] {
//            guard let rootN = root else {
//                return []
//            }
//            var result = [Int]()
//            var stack = [rootN]
//
//            while let top = stack.popLast() {
//                result.append(top.val)
//                if let right = top.right {
//                    stack.append(right)
//                }
//                if let left = top.left {
//                    stack.append(left)
//                }
//            }
//            return result
//        }
//    }
    
    //    中序遍历
//    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xecaj6/
    func m_ergodic(_ node: TreeNode<Any>) {
        if let left = node.left {
            m_ergodic(left)
        }
        print(node.val)
        if let right = node.right {
            m_ergodic(right)
        }
    }
    class Solution {
        func inorderTraversal(_ root: TreeNode<Int>?) -> [Int] {
       
            var result = [Int]()
            var stack = [TreeNode<Int>]()
            var rootNode = root
            while rootNode != nil || !stack.isEmpty {
                while rootNode != nil {
                    stack.append(rootNode!)
                    rootNode = rootNode?.left
                }
                
                if !stack.isEmpty {
                    rootNode = stack.popLast()
                    result.append(rootNode!.val)
                    rootNode = rootNode?.right
                }
            }
            return result
        }
    }
    
    //    后序遍历
    func n_ergodic(_ node: TreeNode<Any>) {
        if let left = node.left {
            n_ergodic(left)
        }
        if let right = node.right {
            n_ergodic(right)
        }
        
        print(node.val,terminator: " ")
    }
    //    let sss = (
    //        "+",(
    //        ("*",("4",("-",("7","2")))),"5"
    //        )
    //    )
    //    n_ergodic(createTree(data: sss)!)
    //    print("")
    
    
    
    
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
