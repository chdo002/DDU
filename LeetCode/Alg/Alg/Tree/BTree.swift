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
    //    let res:Any =
    //        ("F",
    //         (("B",("A",("D",("C","E")))),
    //          ("G",(0,("I",("H",0))))
    //         )
    //        )
    //
    //    guard let slsl = createTree(data: res) else { return }
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
    //    class Solution {
    //        func levelOrder(_ root: TreeNode<Any>?) -> [[Any]] {
    //            var res = [[Any]]()
    //            guard let n = root else {
    //                return res
    //            }
    //
    //            var queue = [n]
    //            while !queue.isEmpty {
    //                var nextLevel = [TreeNode<Any>]()
    //                var vals = [Any]()
    //                for i in 0..<queue.count {
    //                    let node = queue[i]
    //                    vals.append(node.val)
    //                    if let left = node.left {
    //                        nextLevel.append(left)
    //                    }
    //                    if let right = node.right {
    //                        nextLevel.append(right)
    //                    }
    //                }
    //                queue = nextLevel
    //                res.append(vals)
    //            }
    //
    //            return res
    //        }
    //    }
    
    ////    二叉树的最大深度https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xoh1zg/
    //    class Solution {
    //        func nextNode(_ node: TreeNode<Any>?, deepth:Int) {
    //            guard let n = node else {
    //                return
    //            }
    //            if n.left == nil && n.right == nil {
    //                maxDeepth = max(maxDeepth, deepth + 1)
    //            }
    //            nextNode(n.left, deepth: deepth + 1)
    //            nextNode(n.right, deepth: deepth + 1)
    //        }
    //        var maxDeepth = 0
    //        func maxDepth(_ root: TreeNode<Any>?) -> Int {
    //            guard let n = root else {
    //                return maxDeepth
    //            }
    //            if n.left == nil && n.right == nil {
    //                return 1
    //            }
    //            nextNode(n.left, deepth: 1)
    //            nextNode(n.right, deepth: 1)
    //            return maxDeepth
    //        }
    //        func maxDepth(_ root: TreeNode<Any>?) -> Int {
    //            guard let n = root else {
    //                return 0
    //            }
    //            let left = maxDepth(n.left) + 1
    //            let right = maxDepth(n.right) + 1
    //            return max(left, right)
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xoxzgv/
    //    对称二叉树
    /*
     class Solution {
     public boolean isSymmetric(TreeNode root) {
     return isMirror(root, root);
     }
     public boolean isMirror(TreeNode t1, TreeNode t2) {
     if (t1 == null && t2 == null) return true;
     if (t1 == null || t2 == null) return false;
     return (t1.val == t2.val)
     && isMirror(t1.left, t2.right)
     && isMirror(t1.right, t2.left);
     }
     }
     
     */
    //    class Solution {
    //        func isSymmetric(_ root: TreeNode<Int>?) -> Bool {
    //            return isSymmetricNodes(root?.left, rightNode: root?.right)
    //        }
    //
    //        func isSymmetricNodes(_ leftNode: TreeNode<Int>?, rightNode:TreeNode<Int>?) -> Bool {
    //
    //            if leftNode == nil && rightNode == nil {
    //                return true
    //            }
    //
    //            guard let left = leftNode, let right = rightNode else {
    //                return false
    //            }
    //
    //            var res = left.val == right.val
    //            res = res && isSymmetricNodes(left.left, rightNode: right.right)
    //            res = res && isSymmetricNodes(left.right, rightNode: right.left)
    //            return res
    //        }
    //    }
    //
    //    https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xo566j/
    //    路径总和
//    
//    class Solution {
//        
//        func recsecSum(_ node: TreeNode<Int>, currentSum:Int , _ targetSum: Int) -> Bool {
//            // 叶子节点
//            if node.left == nil && node.right == nil {
//                if node.val + currentSum == targetSum {
//                    return true
//                } else {
//                    return false
//                }
//            }
//            var res = false
//            if let left = node.left {
//                res = res || recsecSum(left, currentSum: node.val + currentSum, targetSum)
//            }
//            
//            if let right = node.right {
//                res = res || recsecSum(right, currentSum: node.val + currentSum, targetSum)
//            }
//            return res
//        }
//        
//        func hasPathSum(_ root: TreeNode<Int>?, _ targetSum: Int) -> Bool {
//            
//            var res = false
//            if let r = root {
//                res = res || r.val == targetSum
//            }
//            if let left = root?.left {
//                res = res || recsecSum(left, currentSum: root!.val, targetSum)
//            }
//            
//            if let right = root?.right {
//                res = res || recsecSum(right, currentSum: root!.val, targetSum)
//            }
//            return res
//        }
//    }
//    
//    let nodes =  [5,4,8,11,nil,13,4,7,2,nil,nil,nil,nil,nil,1]
//    guard let slsl: TreeNode<Int> = created(nodes) else { return }
//    let res = Solution().hasPathSum(slsl, 22)
//    print(res)
    
}
