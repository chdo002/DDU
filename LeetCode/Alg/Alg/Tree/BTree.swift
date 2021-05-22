//
//  BTree.swift
//  Alg
//
//  Created by chdo on 2021/5/22.
//

import Foundation

func BTree() {
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
    
}
