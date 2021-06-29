//
//  Stack.swift
//  Alg
//
//  Created by chdo on 2021/6/16.
//

import Foundation
public class Node {
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
func stack() {
    //    https://leetcode-cn.com/leetbook/read/queue-stack/genw3/
    //    每日温度
    //    class Solution {
    //        func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    //            /*
    //             temperatures = [73, 74, 75, 71, 69, 72, 76, 73]，
    //                你的输出应该是 [1,  1,  4,  2,  1,  1,  0,  0]。
    //
    //             */
    //            var res = [Int]()
    //
    //            var indexStack = [Int]()
    //            indexStack.append(0)
    //            for i in 1..<temperatures.count {
    //
    //            }
    //
    //            return res
    //        }
    //    }
    //
    //    class Solution {
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gpfm5/
    //        private var grids : [[Character]]!
    //        func numIslands(_ grid: [[Character]]) -> Int {
    //            var count = 0
    //            grids = grid
    //            for i in 0..<grids.count {
    //                for j in 0..<grids[i].count {
    //                    if grids[i][j] == "1" {
    //                        count += 1
    ////                        dfs(i: i, j: j)
    //                        bfs(i: i, j: j)
    //                    }
    //                }
    //            }
    //            return count
    //        }
    //
    //        func dfs(i: Int, j: Int) {
    //            if i < 0 || i >= grids.count || j < 0 || j >= grids[i].count || grids[i][j] == "0" {
    //                return
    //            }
    //            grids[i][j] = "0"
    //            dfs(i: i - 1, j: j)
    //            dfs(i: i, j: j - 1)
    //            dfs(i: i + 1, j: j)
    //            dfs(i: i, j: j + 1)
    //        }
    //
    //        func bfs(i: Int, j: Int) {
    //            if i < 0 || i >= grids.count || j < 0 || j >= grids[i].count || grids[i][j] == "0" {
    //                return
    //            }
    //            grids[i][j] = "0"
    //            var queue = [(i,j)]
    //
    //            while !queue.isEmpty {
    //                let (i,j) = queue.popLast()!
    //                if i - 1 >= 0 && grids[i - 1][j] == "1" {
    //                    grids[i - 1][j] = "0"
    //                    queue.append((i - 1, j))
    //                }
    //                if j - 1 >= 0 && grids[i][j - 1] == "1" {
    //                    grids[i][j - 1] = "0"
    //                    queue.append((i, j - 1))
    //                }
    //                if i + 1 < grids.count && grids[i + 1][j] == "1" {
    //                    grids[i + 1][j] = "0"
    //                    queue.append((i + 1, j))
    //                }
    //                if j + 1 < grids[i].count && grids[i][j + 1] == "1" {
    //                    grids[i][j + 1] = "0"
    //                    queue.append((i, j + 1))
    //                }
    //            }
    //        }
    //    }
    //   let s =   Solution().numIslands([
    //                                    ["1","1","1","1","0"],
    //                                    ["1","1","0","1","0"],
    //                                    ["1","1","0","0","0"],
    //                                    ["0","0","0","0","0"]])
    //    print(s)
    
    //class Solution {
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gmcr6/
    ////    var set = Set<Int>()
    ////    func cloneGraph(_ node: Node?) -> Node? {
    ////        guard let n = node else {
    ////            return nil
    ////        }
    ////        let newN = Node(n.val)
    ////        newN.neighbors = [Node]()
    //////        set.insert(n.val)
    ////        dfs(newN, oldN: n)
    ////        return newN
    ////    }
    ////
    ////    func dfs(_ newN: Node, oldN: Node) {
    ////        print("newN:\(newN.val)  oldN:\(oldN.val)")
    ////        for n in oldN.neighbors {
    ////            print("n:\(n!.val)")
    ////            if let oldNei = n {
    ////                print("set:\(set)")
    ////                if !set.contains(oldNei.val) {
    ////                    set.insert(oldNei.val)
    ////                    let newNei = Node(oldNei.val)
    ////                    newNei.neighbors = [Node]()
    ////                    newN.neighbors.append(newNei)
    ////                    newNei.neighbors.append(newN)
    ////                    dfs(newNei, oldN: oldNei)
    ////                }
    ////            }
    ////        }
    ////    }
    //
    //    private var set : [Int:Node]!
    //    func cloneGraph(_ node: Node?) -> Node? {
    //        set = [:]
    //        return dfs(node)
    //    }
    //
    //    func dfs(_ node: Node?) -> Node? {
    //        guard let n = node else {
    //            return nil
    //        }
    //        if let visited = set[n.val] {
    //            return visited
    //        }
    //        let newNode = Node(n.val)
    //        newNode.neighbors = [Node]()
    //        set[n.val] = newNode
    //        for oldNei in n.neighbors {
    //            newNode.neighbors.append(dfs(oldNei))
    //        }
    //        return newNode
    //    }
    //}
    //
    //
    ////    节点 1 的值是 1，它有两个邻居：节点 2 和 4 。
    ////    节点 2 的值是 2，它有两个邻居：节点 1 和 3 。
    ////    节点 3 的值是 3，它有两个邻居：节点 2 和 4 。
    ////    节点 4 的值是 4，它有两个邻居：节点 1 和 3 。
    //
    //    let node1 = Node(1)
    //    let node2 = Node(2)
    //    let node3 = Node(3)
    //    let node4 = Node(4)
    //
    //    node1.neighbors = [node2,node4]
    //    node2.neighbors = [node1,node3]
    //    node3.neighbors = [node2,node4]
    //    node4.neighbors = [node1,node3]
    //
    //    let node = Solution().cloneGraph(node1)
    //    print(node!)
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/ga4o2/
    //
    //class Solution {
    //
    //    private var count = 0
    //    private var target = 0
    //    private var nums = [Int]()
    //    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
    //        self.nums = nums
    //        self.target = target
    //        dfs(0, sum: 0)
    //        return count
    //    }
    //
    //    func dfs(_ index: Int, sum : Int){
    //        if index < nums.count {
    //            dfs(index + 1, sum: sum + nums[index])
    //            dfs(index + 1, sum: sum - nums[index])
    //        } else {
    //            if sum == target {
    //                count += 1
    //            }
    //        }
    //    }
    //}
    
    //    class Solution {
    //        func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
    //
    //            let sum = nums.reduce(0,+)
    //            var neg = sum - target
    //            if neg < 0 || neg % 2 != 0 {
    //                return 0
    //            }
    //            neg /= 2
    //            var ret = [Int](repeating:0, count:neg + 1)
    //            ret[0] = 1
    //            for num in nums {
    //                var j = neg
    //                while j >= num {
    //                    ret[j] += ret[j - num]
    //                    j -= 1
    //                }
    //            }
    //            return ret[neg]
    //
    //        }
    //    }
    //
    ////    输入：nums = [1,1,1,1,1], target = 3
    //    print(Solution().findTargetSumWays([2,1,2], 3))
    //
    ////    print(Solution().findTargetSumWays([42,16,31,11,36,19,9,3,25,0,27,29,35,29,45,15,35,42,35,23], 39))
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gnq5i/
    //    二叉树的中序遍历
    
    /**
     * Definition for a binary tree node.
     * public class TreeNode {
     *     public var val: Int
     *     public var left: TreeNode?
     *     public var right: TreeNode?
     *     public init() { self.val = 0; self.left = nil; self.right = nil; }
     *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
     *         self.val = val
     *         self.left = left
     *         self.right = right
     *     }
     * }
     */
    /*
     class Solution {
     public List<Integer> inorderTraversal(TreeNode root) {
     Deque<TreeNode> stack = new ArrayDeque<TreeNode>();
     List<Integer> res = new ArrayList<Integer>();
     while(root != null || !stack.isEmpty()){
     while(root!=null){       // 不断地向左结点深入，直至叶子结点
     stack.push(root);
     root = root.left;
     }
     TreeNode top = stack.pop();
     res.add(top.val);
     root = top.right;
     }
     return res;
     }
     }
     */
    //class Solution {
    //    func inorderTraversal(_ root: TreeNode<Int>?) -> [Int] {
    //        var res = [Int]()
    //        var stack = [TreeNode<Int>]()
    //        var rootNode = root
    //        while rootNode != nil || !stack.isEmpty {
    //            while let node = rootNode {
    //                stack.append(node)
    //                rootNode = node.left
    //            }
    //            let topNode = stack.popLast()!
    //            res.append(topNode.val)
    //            rootNode = topNode.right
    //        }
    //        return res
    //    }
    //}
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gvtxe/
    //    用栈实现队列
    //class MyQueue {
    //
    //    private var stack1 = [Int]()
    //    private var stack2 = [Int]()
    //    /** Initialize your data structure here. */
    //    init() {
    //
    //    }
    //
    //    /** Push element x to the back of queue. */
    //    func push(_ x: Int) {
    //        stack1.append(x)
    //    }
    //
    //    /** Removes the element from in front of queue and returns that element. */
    //    func pop() -> Int {
    //        fillStack()
    //        if let n = stack2.popLast() {
    //            return n
    //        } else {
    //            return -1
    //        }
    //    }
    //
    //    /** Get the front element. */
    //    func peek() -> Int {
    //        fillStack()
    //        if let n = stack2.last {
    //            return n
    //        } else {
    //            return -1
    //        }
    //
    //    }
    //
    //    /** Returns whether the queue is empty. */
    //    func empty() -> Bool {
    //        return stack1.isEmpty && stack2.isEmpty
    //    }
    //
    //    func fillStack() {
    //        if stack2.isEmpty {
    //            while !stack1.isEmpty {
    //                stack2.append(stack1.popLast()!)
    //            }
    //        }
    //    }
    //}
    
    //    用队列实现栈
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gw7fg/
    class MyStack {
        
        private var queue = [Int]()
        
        /** Initialize your data structure here. */
        init() {
            
        }
        
        /** Push element x onto stack. */
        func push(_ x: Int) {
            queue.append(x)
        }
        
        /** Removes the element on top of the stack and returns that element. */
        func pop() -> Int {
            if let n = queue.popLast() {
                return n
            } else {
                return -1
            }
        }
        
        /** Get the top element. */
        func top() -> Int {
            if let n = queue.last {
                return n
            } else {
                return -1
            }
            
        }
        
        /** Returns whether the stack is empty. */
        func empty() -> Bool {
            return queue.isEmpty
        }
    }
    
    /**
     * Your MyStack object will be instantiated and called as such:
     * let obj = MyStack()
     * obj.push(x)
     * let ret_2: Int = obj.pop()
     * let ret_3: Int = obj.top()
     * let ret_4: Bool = obj.empty()
     */
    
    
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/gdwjv/
    //    字符串解码
    
    //    class Solution {
    //        func decodeString(_ s: String) -> String {
    //
    //            var res = ""
    //            var count = 0
    //            var countStack = [Int]()
    //            var strStack = [String]()
    //
    //            for c in s {
    //                let str = String(c)
    //                if let n = Int(str) {
    //                    count = count * 10 + n
    //                } else if ("a"..."b").contains(Character(extendedGraphemeClusterLiteral: c)) {
    //                    res.append(String(c))
    //                } else if str == "[" {
    //                    countStack.append(count)
    //                    strStack.append(res)
    //                    res = ""
    //                    count = 0
    //                } else if str == "]" {
    //                    let c = countStack.popLast()!
    //                    let str = strStack.popLast()!
    //                    res = res + Array(repeating: str, count: c).joined()
    //                }
    //            }
    //            return res
    //        }
    
    //        func decodeString(_ s: String) -> String {
    //            var res = ""
    //            var count = 0
    //            var stack = [(Int,String)]()
    //            for c in s {
    //                if c == "[" {
    //                    stack.append((count, res))
    //                    count = 0
    //                    res = ""
    //                } else if c == "]" {
    //                    let (multi, lastRes) = stack.popLast()!
    //                    res = lastRes + Array(repeating: res, count: multi).joined()
    //                } else if let n = Int(String(c)) {
    //                    count = count * 10 + n
    //                } else {
    //                    res.append(c)
    //                }
    //            }
    //            return res
    //        }
    //    }
    //    Solution().decodeString("3[a2[c]]")
    /*
     
     输入：s = "3[a]2[bc]"
     输出："aaabcbc"
     
     输入：s = "2[abc]3[cd]ef"
     输出："abcabccdcdcdef"
     
     输入：s = "3[a2[c]]"
     输出："accaccacc"
     */
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/g02cj/
    //    图像渲染
    //
    //    class Solution {
    //        var image: [[Int]]!
    //        var newColor: Int!
    //        var filledSet:[String:Int] = [:]
    //        var targetImage = 0
    //        func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
    //            self.image = image
    //            self.newColor = newColor
    //            targetImage = image[sr][sc]
    //            dfs(sr, sc)
    //            return self.image
    //        }
    //
    //        func dfs(_ sr: Int, _ sc: Int) {
    //            let key = "\(sr)_\(sc)"
    //            guard filledSet[key] == nil else {
    //                return
    //            }
    //
    //            if sr >= 0 &&
    //                sc >= 0 &&
    //                sr < image.count &&
    //                sc < image[sr].count
    //                {
    //                if image[sr][sc] != targetImage {
    //                    return
    //                }
    //                filledSet[key] = 1
    //                image[sr][sc] = newColor
    //                dfs(sr, sc-1)
    //                dfs(sr-1, sc)
    //                dfs(sr, sc+1)
    //                dfs(sr+1, sc)
    //            }
    //        }
    //    }
    //    Solution().floodFill(
    //        [[0,0,0],[1,0,0]],
    //        1, 0, 2)
    /*
     输入:
     image = [
     [1,1,1],
     [1,1,0],
     [1,0,1]]
     sr = 1, sc = 1, newColor = 2
     输出: [
     [2,2,2],
     [2,2,0],
     [2,0,1]]
     解析:
     在图像的正中间，(坐标(sr,sc)=(1,1)),
     在路径上所有符合条件的像素点的颜色都被更改成2。
     注意，右下角的像素没有更改为2，
     因为它不是在上下左右四个方向上与初始点相连的像素点。
     
     作者：力扣 (LeetCode)
     链接：https://leetcode-cn.com/leetbook/read/queue-stack/g02cj/
     来源：力扣（LeetCode）
     著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
     */
    
    //    01 矩阵
    //    https://leetcode-cn.com/leetbook/read/queue-stack/g7pyt/
    
    /*
    class Solution {
        private int[][] dirs = {{-1, 0}, {1, 0}, {0, -1}, {0, 1}};
        
        public int[][] updateMatrix(int[][] matrix) {
     
            int m = matrix.length, n = matrix[0].length;
            int[][] res = new int[m][n];
            boolean[][] visited = new boolean[m][n];
            Queue<int[]> queue = new LinkedList<>();
     
            for (int i = 0; i < m; i++) {
                for (int j = 0; j < n; j++) {
                    if (matrix[i][j] == 0) {
                        queue.offer(new int[]{i, j});
                        visited[i][j] = true;
                    }
                }
            }
            while (!queue.isEmpty()) {
                int[] poll = queue.poll();
                int i = poll[0], j = poll[1];
                for (int k = 0; k < 4; k++) {
                    int x = i + dirs[k][0], y = j + dirs[k][1];
                    if (x >= 0 && x < m && y >= 0 && y < n && !visited[x][y]) {
                        res[x][y] = res[i][j] + 1;
                        queue.offer(new int[]{x, y});
                        visited[x][y] = true;
                    }
                }
            }
            return res;
        }
    }
    
    作者：MacZhen
    链接：https://leetcode-cn.com/leetbook/read/queue-stack/g7pyt/?discussion=QIjlqu
    来源：力扣（LeetCode）
    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
    */
//    class Solution {
//        
//        private var directions = [(-1,0),(0,-1),(1,0),(0,1)]
//        func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
//            
//            
//            let r = mat.count // 行数
//            let c = mat[0].count // 列数
//            
//            var res = Array(repeating: Array(repeating: 0, count: c), count: r)
//            
//            var queue = [(Int,(Int))]()
//            var visited = [String:Bool]()
//            for i in 0..<r {
//                for j in 0..<c {
//                    if mat[i][j] == 0 {
//                        queue.append((i,j))
//                        visited["\(queue.last!)"] = true
//                    }
//                }
//            }
//            
//            while !queue.isEmpty {
//                let size = queue.count
//                for _ in 0..<size {
//                    let item = queue.removeFirst()
//                    for dir in directions {
//                        let newPosi = (dir.0 + item.0, dir.1 + item.1)
//                        if newPosi.0 >= 0 && newPosi.1 >= 0 && newPosi.0 < r && newPosi.1 < c {
//                            if visited["\(newPosi)"] == nil {
//                                res[newPosi.0][newPosi.1] = res[item.0][item.1] + 1
//                                queue.append(newPosi)
//                                visited["\(newPosi)"] = true
//                            }
//                        }
//                    }
//                }
//            }
//            
//            return res
//        }
//    }
//    
//    Solution().updateMatrix(
//        [[0,0,0],
//         [0,1,0],
//         [0,0,0]]
//    )
}


