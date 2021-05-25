//
//  BTree.swift
//  Alg
//
//  Created by chdo on 2021/5/22.
//

import Foundation

/*
 //    let sss = (
 //        "+",(
 //        ("*",("4",("-",("7","2")))),"5"
 //        )
 //    )
 //    n_ergodic(createTree(data: sss)!)
 //    print("")
 */

func BTree() {
    let res:Any =
        ("F",
         (("B",("A",("D",("C","E")))),
          ("G",(0,("I",("H",0))))
         )
        )
    
    guard let slsl = createTree(data: res) else { return }
    //    前序遍历
//    func p_ergodic(_ node: TreeNode<Any>) {
//        print(node.val)
//        if let left = node.left {
//            p_ergodic(left)
//        }
//        if let right = node.right {
//            p_ergodic(right)
//        }
//    }
    
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
//    func m_ergodic(_ node: TreeNode<Any>) {
//        if let left = node.left {
//            m_ergodic(left)
//        }
//        print(node.val)
//        if let right = node.right {
//            m_ergodic(right)
//        }
//    }
//    class Solution {
//        func inorderTraversal(_ root: TreeNode<Int>?) -> [Int] {
//
//            var result = [Int]()
//            var stack = [TreeNode<Int>]()
//            var rootNode = root
//            while rootNode != nil || !stack.isEmpty {
//                while rootNode != nil {
//                    stack.append(rootNode!)
//                    rootNode = rootNode?.left
//                }
//
//                if !stack.isEmpty {
//                    rootNode = stack.popLast()
//                    result.append(rootNode!.val)
//                    rootNode = rootNode?.right
//                }
//            }
//            return result
//        }
//    }
    
    //    后序遍历
//    func n_ergodic(_ node: TreeNode<Any>) {
//        if let left = node.left {
//            n_ergodic(left)
//        }
//        if let right = node.right {
//            n_ergodic(right)
//        }
//
//        print(node.val,terminator: " ")
//    }
//
//    class Solution {
        
//        func postorderTraversal(_ root: TreeNode<Any>?) -> [Int] {
//            var res = [Int]()
//            n_ergodic(node: root, res: &res)
//            return res
//        }
//
//        func n_ergodic(node:TreeNode<Any>?, res: inout [Int]) {
//            if let n = node {
//                if let left = n.left {
//                    n_ergodic(node: left,res: &res)
//                }
//                if let right = n.right {
//                    n_ergodic(node: right,res: &res)
//                }
//                res.append(n.val as! Int)
//            }
//        }
        
        /*
         1
         2     3
         1 2   1  2
        
         public List<Integer> postorderTraversal(TreeNode root) {
             List<Integer> res = new ArrayList<>();
             if(root == null)
                 return res;
             Deque<TreeNode> stack = new LinkedList<>();
             stack.push(root);
             while(!stack.isEmpty()){
                 root = stack.pop();
                 if(root != null){
                     stack.push(root);
                     stack.push(null);
                     if(root.right != null)
                         stack.push(root.right);
                     if(root.left != null)
                         stack.push(root.left);
                 }
                 else
                     res.add(stack.pop().val);
             }
             return res;
         }
         */
        
//        func postorderTraversal(_ root: TreeNode<Any>?) -> [Int] {
//            guard let n = root else {
//                return [Int]()
//            }
//            var res = [Int]()
//            var stack = [n]
//            while !stack.isEmpty {
//                let node = stack.popLast()!
//                res.append(node.val as! Int)
//                if let left = node.left {
//                    stack.append(left)
//                }
//                if let right = node.right {
//                    stack.append(right)
//                }
//            }
//            res = res.reversed()
//            return res
//        }
//    }
    
//    层序遍历
//    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xej9yc/
//    二叉树的层序遍历
//    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xefh1i/
    
    /*
     public List<List<Integer>> levelOrder(TreeNode root) {
         List<List<Integer>> result = new ArrayList<>();
         if (root == null) {
             return result;
         }
         Queue<TreeNode> queue = new LinkedList<>();
         // 先将根节点放入队列
         queue.add(root);
         while (queue.size() > 0) {
             int size = queue.size();
             List<Integer> temp = new ArrayList<>();
             // 遍历队列，把当前层的元素从队列取出来，将下一层放入队列
             for (int i = 0; i < size; i++) {
                 // 取出队列元素，放入集合
                 TreeNode current = queue.poll();
                 temp.add(current.val);
                 if (current.left != null) {
                     // 将当前节点的左儿子放入队列
                     queue.add(current.left);
                 }
                 if (current.right != null) {
                     // 将当前节点的右儿子放入队列
                     queue.add(current.right);
                 }
             }
             result.add(temp);
         }
         return result;
     }
     */
    class Solution {
        func levelOrder(_ root: TreeNode<Any>?) -> [[Any]] {
            var res = [[Any]]()
            guard let n = root else {
                return res
            }
            
            var queue = [n]
            while !queue.isEmpty {
                var nextLevel = [TreeNode<Any>]()
                var vals = [Any]()
                for i in 0..<queue.count {
                    let node = queue[i]
                    vals.append(node.val)
                    if let left = node.left {
                        nextLevel.append(left)
                    }
                    if let right = node.right {
                        nextLevel.append(right)
                    }
                }
                queue = nextLevel
                res.append(vals)
            }
            
            return res
        }
    }
    
}
