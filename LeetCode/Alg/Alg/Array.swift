//
//  Array.swift
//  Alg
//
//  Created by chdo on 2021/5/9.
//

import Foundation

func array() {
    // 删除排序数组中的重复项
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2gy9m/
    //func removeDuplicates(_ nums: inout [Int]) -> Int {
    //    if nums.count == 0 {
    //        return 0
    //    }
    //
    //    if nums.first == nums.last {
    //        return 1
    //    }
    //
    //    var i = 0
    //    for j in (1..<nums.count) {
    //        if nums[j] != nums[i] {
    //            i += 1
    //            nums[i] = nums[j]
    //        }
    //    }
    //    nums = Array(nums[0...i])
    //    return i + 1
    //}
    //var arr = [1,1,2]
    //removeDuplicates(&arr)
    //print(arr)
    
    //买卖股票的最佳时机 II
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2zsx1/
    //func maxProfit(_ prices: [Int]) -> Int {
    //    let count = prices.count
    //    if count <= 1 {
    //        return 0
    //    }
    //    var max = 0
    //    for j in (1..<count) {
    //        let dex = prices[j] - prices[ j - 1]
    //        if dex > 0 {
    //            max += dex
    //        }
    //    }
    //    return max
    //}
    //maxProfit([7,1,5,3,6,4])
    
    //旋转数组
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2skh7/
    //class SolutionRotate {
    //
    //    func rotate3(_ nums: inout [Int], _ k: Int) {
    //        let length: Int = nums.count
    //        var temp = [Int](repeating: 0, count: length)
    //        //把原数组值放到一个临时数组中，
    //        for index in 0..<length {
    //            temp[index] = nums[index]
    //        }
    //        //然后在把临时数组的值重新放到原数组，并且往右移动k位
    //        for index in 0..<length {
    //            nums[(index + k) % nums.count] = temp[index]
    //        }
    //    }
    //    func rotate2(_ nums: inout [Int], _ k: Int) {
    //        let count = nums.count
    //        if count <= 1 {
    //            return
    //        }
    //        let remainder = k % count
    //        if remainder == 0 {
    //            return
    //        }
    //
    //        var cur = 0
    //        var holder = nums[cur]
    //        var visted = Array(repeating: false, count: count)
    //        var visitCount = 0
    //        repeat {
    //            cur = (cur + remainder) % count
    //            if !visted[cur] {
    //                let temp = nums[cur]
    //                nums[cur] = holder
    //                holder = temp
    //                visitCount += 1
    //                visted[cur] = true
    //            } else {
    //                cur = (cur + 1) % count
    //                holder = nums[cur]
    //            }
    //        } while visitCount < count
    //    }
    //
    //    func rotate1(_ nums: inout [Int], _ k: Int) {
    //        let count = nums.count
    //        if count <= 1 {
    //            return
    //        }
    //        let remainder = k % count
    //        if remainder == 0 {
    //            return
    //        }
    //        nums.reverse()
    //        let a = Array(nums[0..<remainder].reversed())
    //        let b = Array(nums[remainder..<count].reversed())
    //        nums = a + b
    //    }
    //
    //}
    //var arr = [1,2,3,4,5,6,7]
    //SolutionRotate().rotate3(&arr, 3)
    
    //存在重复元素
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x248f5/
    //func containsDuplicate(_ nums: [Int]) -> Bool {
    //    return Set(nums).count != nums.count
    //}
    
    //只出现一次的数字
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x21ib6/
    //func singleNumber(_ nums: [Int]) -> Int {
    //    var res = 0
    //    for num in nums {
    //        res ^= num
    //    }
    //    return res
    //}
    //使用异或运算，将所有值进行异或
    //异或运算，相异为真，相同为假，所以 a^a = 0 ;0^a = a
    //因为异或运算 满足交换律 a^b^a = a^a^b = b 所以数组经过异或运算，单独的值就剩下了
    //singleNumber([2,1,5,1,2])
    
    //两个数组的交集 II
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2y0c2/
    //class Solution {
    //    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    //        var res = [Int]()
    //        var temp2 = nums2
    //        for num1 in nums1 {
    //            if temp2.count > 0 {
    //                if temp2.contains(num1) {
    //                    res.append(num1)
    //                    let index = temp2.firstIndex(of: num1)!
    //                    temp2.remove(at: index)
    //                }
    //            }
    //        }
    //        return res
    //    }
    //}
    //Solution().intersect([1,2,2,1], [1,2])
    
    //加一
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2cv1c/
    //class Solution {
    //    func plusOne(_ digits: [Int]) -> [Int] {
    //        var res = digits
    //        var index = digits.count - 1
    //        var holder = 1
    //        while index >= 0 {
    //            var num = digits[index]
    //            num = num + holder
    //            res[index] = num % 10
    //            holder = num / 10
    //            if holder == 0 {
    //                break
    //            }
    //            index -= 1
    //        }
    //        if holder > 0 {
    //            res.insert(holder, at: 0)
    //        }
    //        return res
    //    }
    //}
    //Solution().plusOne([0])
    
    //移动零
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2ba4i/
    //class Solution {
    //    func moveZeroes(_ nums: inout [Int]) {
    //
    //        let count = nums.count
    //        if count <= 1 {
    //            return
    //        }
    //
    //        var holderIndex = 0
    //        var index = 0
    //        while index < count {
    //            let n = nums[index]
    //            let hn = nums[holderIndex]
    //            if n != 0 {
    //                nums[index] = hn
    //                nums[holderIndex] = n
    //                holderIndex += 1
    //            }
    //            index += 1
    //        }
    //    }
    //}
    //var arr = [0,1,0,3,12]
    ////arr = [2,1]
    //arr = [0,1,1,0]
    //arr = [1,0,1]
    //Solution().moveZeroes(&arr)
    
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2jrse/
    //两数之和
    //class Solution {
    //    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //        var dic = [Int: Int]()
    //        var index = 0
    //        while index < nums.count {
    //            if let otherIndex = dic[target - nums[index]] {
    //                return [otherIndex, index]
    //            }
    //            dic[nums[index]] = index
    //            index += 1
    //        }
    //        return [0]
    //    }
    //}
    //var arr = [2,7,11,15]
    //var tar = 9
    
    //arr = [3,2,4]
    //tar = 6
    
    //arr = [3,3]
    //Solution().twoSum(arr, tar)
    
    //有效的数独
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2f9gg/
    //class Solution {
    //    func isValidSudoku(_ board: [[Character]]) -> Bool {
    //
    //    }
    //}
    //
    //Solution().isValidSudoku(<#T##board: [[Character]]##[[Character]]#>)
    
    //旋转图像
    //https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnhhkv/
    //class Solution {
    //    func rotate(_ matrix: inout [[Int]]) {
    //        if matrix.count == 1 {
    //            return
    //        }
    //        for i in 0..<matrix.count {
    //            for j in 0..<i {
    //                let temp = matrix[i][j]
    //                matrix[i][j] = matrix[j][i]
    //                matrix[j][i] = temp
    //            }
    //        }
    //        for i in 0..<matrix.count {
    //            matrix[i] = matrix[i].reversed()
    //        }
    //    }
    //}
    //
    //var arr = [
    //    [1,2,3,4],
    //    [5,6,7,8],
    //    [9,10,11,12],
    //    [13,14,15,16],
    //]
    //Solution().rotate(&arr)
    
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/yf47s/
    //    寻找数组的中心索引
    //    class Solution {
    //        func pivotIndex(_ nums: [Int]) -> Int {
    //            if nums.count < 2 {
    //                return -1
    //            }
    //            var sum = 0
    //            var dic : [Int:[Int]] = [:]
    //            for (i,value) in nums.enumerated() {
    //                let key = sum * 2 + value
    //                if var ss = dic[key] {
    //                    ss.append(i)
    //                } else {
    //                    dic[key] = [i]
    //                }
    //                sum += value
    //            }
    //            if let index = dic[sum]?.first {
    //                return index
    //            }
    //            return -1
    //        }
    //    }
    //
    //    Solution().pivotIndex([2, 1, -1])
    //
    ////    输入：nums = [1, 7, 3, 6, 5, 6]
    ////    输出：3
    //
    //    class Solution {
    //        func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    //            searchIndexRe(nums: nums, target: target, startIndex: 0, endIndex: nums.count - 1)
    //        }
    //
    //        func searchIndexRe(nums: [Int], target: Int, startIndex:Int, endIndex:Int) -> Int{
    //            let h = nums[startIndex]
    //            let t = nums[endIndex]
    //            if h >= target {
    //                return startIndex
    //            } else if t < target {
    //                return endIndex + 1
    //            } else if t == target {
    //                return endIndex
    //            } else if endIndex - startIndex == 1 {
    //                return endIndex
    //            } else {
    //                let midIndex = (startIndex + endIndex) / 2
    //                let mid = nums[midIndex]
    //                if target < mid {
    //                    return searchIndexRe(nums: nums, target: target, startIndex: startIndex, endIndex: midIndex)
    //                } else if target > mid {
    //                    return searchIndexRe(nums: nums, target: target, startIndex: midIndex, endIndex: endIndex)
    //                } else {
    //                    return (startIndex + endIndex) / 2
    //                }
    //            }
    //        }
    //    }
    //
    //    let s = Solution().searchInsert([1,3],3)
    //    print(s)
    /*
     class Solution {
     func searchInsert(_ nums: [Int], _ target: Int) -> Int {
     var l = 0
     var r = nums.count - 1
     while l <= r {
     
     // if l == r {
     //     return target <= nums[l] ? l : r+1
     // }
     
     if target <= nums[l] {
     return l
     }
     if target > nums[r] {
     return r + 1
     }
     
     let mid = l + (r - l)/2
     
     if nums[mid] == target {
     return mid
     }else if target > nums[l] && target < nums[mid] {
     r = mid - 1
     }else if target > nums[mid] && target <= nums[r] {
     l = mid + 1
     }
     }
     return 0
     }
     }
     */
    
    //    class Solution {
    //        func merge(_ intervals: [[Int]]) -> [[Int]] {
    //
    //            let new_arr = intervals.sorted { a, b in
    //                return a.first! < b.first!
    //            }
    //
    //            var new_intervals :[[Int]] = []
    //            for arr in new_arr[0..<intervals.count] {
    //                if let last = new_intervals.last {
    //                    if last.last! < arr.first! {
    //                        new_intervals.append(arr)
    //                    } else {
    //                        if last.last! < arr.last! {
    //                            new_intervals[new_intervals.count - 1][1] = arr.last!
    //                        }
    //                    }
    //                } else {
    //                    new_intervals.append(arr)
    //                }
    //            }
    //
    //            return new_intervals
    //        }
    //    }
    //    Solution().merge([[1,4],[2,3]])
    //    输入：intervals = [[1,3],[2,6],[8,10],[15,18]]
    //    输出：[[1,6],[8,10],[15,18]]
    //    解释：区间 [1,3] 和 [2,6] 重叠, 将它们合并为 [1,6].
    
    //    输入：intervals = [[1,4],[4,5]]
    //    输出：[[1,5]]
    //    解释：区间 [1,4] 和 [4,5] 可被视为重叠区间。
    
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/ciekh/
    //    零矩阵
    //    class Solution {
    //        func setZeroes(_ matrix: inout [[Int]]) {
    //            var settedLine : Set<Int> = Set()
    //            var settedColume : Set<Int> = Set()
    //
    //            for i in 0..<matrix.count {
    //                for j in 0..<matrix[i].count {
    //                    if matrix[i][j] == 0 {
    //                        settedLine.insert(i)
    //                        settedColume.insert(j)
    //                    }
    //                }
    //            }
    //
    //            for i in 0..<matrix.count {
    //                if settedLine.contains(i) {
    //                    matrix[i] = Array(repeating: 0, count: matrix[i].count)
    //                } else {
    //                    for j in 0..<matrix[i].count {
    //                        if settedColume.contains(j) {
    //                            matrix[i][j] = 0
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }
    //    var maxtri = [
    //        [0,1,2,0],
    //        [3,4,5,2],
    //        [1,3,1,5]
    //    ]
    //    Solution().setZeroes(&maxtri)
    //    print(maxtri)
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/cuxq3/
    //    对角线遍历
    //
    //    class Solution {
    //        func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
    //            var isUp = true
    //            var i = 0
    //            var j = 0
    //            let cC = mat.count
    //            let lC = mat[0].count
    //            var res = [Int]()
    //            while i < cC && j < lC {
    //                res.append(mat[i][j])
    //                if isUp {
    //                    i -= 1
    //                    j += 1
    //                } else {
    //                    i += 1
    //                    j -= 1
    //                }
    //
    //                let isIIn = 0..<cC ~= i
    //                let isCIn = 0..<lC ~= j
    //                if !isIIn && !isCIn  {
    //                    break
    //                } else if !isIIn && isCIn  {
    //                    isUp = !isUp
    //                    i += 1
    //                } else if isIIn && !isCIn  {
    //
    //                }
    //            }
    //            return res
    //        }
    //    }
    
    /*
     class Solution:
     def findDiagonalOrder(self, matrix: List[List[int]]) -> List[int]:
     if not matrix: #这段是预防矩阵为空什么都不返回的处理
     return []  # ，当矩阵为空则返回一个空的列表[]，至少有个说明，因为这个方法最终要返回List[int]的形式
     row = len(matrix) #行数
     col = len(matrix[0]) #列数
     tot = row + col - 1 #对角线条数，以第一行和最右边列为每条对角线端点，计算条数时把重合点减去1即可
     res = [] #结果预先设置为空列表
     r, c = 0, 0  # r为横坐标，c为纵坐标，初始值都为零
     for i in range(tot): # 遍历对角线条数，则每个被遍历到的i就是当前对角线的编号，从0开始的编号
     '''编号每次变动，随之变动的就是遍历的方向，右上或左下。
     这里要强调一下边界问题，因为r,c初始都是0,
     故上边界为r=0、左边界为c=0、右边界为c=col-1、下边界为r=row-1'''
     if i % 2 == 0: # 当编号被2整除余数为0，说明编号是0或者偶数时，对角线向右上遍历的标识
     while r >= 0 and c < col:
     #向右上遍历时，只要横坐标不小于零（不超过上边界）且纵坐标小于行数（不超过右边界）
     res.append(matrix[r][c]) #不超过上、右边界的通过r,c的代入，映射出坐标对应值，放入列表。
     r -= 1 #横坐标向上移动一格
     c += 1 #纵坐标向右移动一格
     #两个动作结合就是坐标点往右上移动一格后，再次通过while判断是否写入结果列表
     if c < col:
     #运行到这一步时说明此时此刻节点的r等于-1了，超出了上边界这时需要先判断c是否超出右边界，如果没有超出则r+=1把r横坐标拉回上边界这里只判断一次，相当于已经遍历完一条对角线后，把坐标点放到下一个对角线的起始点上
     r += 1
     else:
     #运行到这一步时说明此时此刻节点的r等于-1了，超出了上边界与此同时c=-1超过了右边界，注意这种情况会发生在该对角线起始点或终止点遇到两条边界交点后（包含）持续发生每次超过右边界时，也只操作一次c -= 1拉回到右边界，r += 2（一共2格，回到原来超出前位置算一格，往下走一格
     r += 2
     c -= 1
     else: #这里相当于编号为非0非偶数的情况，对角线向左下遍识历的标识
     #以下逻辑，直接对照上面的注释稍微改下注释即可，不在赘述
     while c >= 0 and r < row:
     res.append(matrix[r][c])
     r += 1
     c -= 1
     
     if r < row:
     c += 1
     else:
     c += 2
     r -= 1
     return res
     */
    
    //    杨辉三角 II
    //    https://leetcode-cn.com/leetbook/read/array-and-string/ctyt1/
    
    //    class Solution {
    //        func getRow(_ rowIndex: Int) -> [Int] {
    //            return rowAt(row: [], index: 0, targetIndex: rowIndex)
    //        }
    //        func rowAt(row:[Int],index:Int,targetIndex:Int) -> [Int] {
    //            if index == targetIndex+1{
    //                return row
    //            } else {
    //                var arr = [1]
    //                if row.count == 0 {
    //
    //                } else if row.count == 1 {
    //                    arr.append(1)
    //                } else {
    //                    for i in 0..<row.count - 1 {
    //                        arr.append(row[i] + row[i+1])
    //                    }
    //                    arr.append(1)
    //                }
    //                return rowAt(row: arr, index: index + 1, targetIndex: targetIndex)
    //            }
    //        }
    //    }
    //    Solution().getRow(2)
    
    //    反转字符串中的单词 III
    //    https://leetcode-cn.com/leetbook/read/array-and-string/c8su7/
    //    class Solution {
    //        func reverseWords(_ s: String) -> String {
    //            var res : [String] = []
    //            for cs in Array(s).split(separator: " ") {
    //                res.append(String(Array(cs).reversed()))
    //            }
    //            return res.joined(separator: " ")
    //        }
    //    }
    //
    //    let ss = Solution().reverseWords("Let's take LeetCode contest")
    //    print(ss)
    
    //    输入："Let's take LeetCode contest"
    //    输出："s'teL ekat edoCteeL tsetnoc"
    
    //    寻找旋转排序数组中的最小值
    //    https://leetcode-cn.com/leetbook/read/array-and-string/c3ki5/
    
    class Solution {
        //        func findMin(_ nums: [Int]) -> Int {
        //            nums.sorted().first!
        //        }
        
        func findMin(_ nums: [Int]) -> Int {
            var left = 0
            var right = nums.count - 1
            while left < right {
                let mid = left + (right - left) / 2
                if nums[mid] < nums[right] {
                    right = mid
                } else {
                    left = mid + 1
                }
            }
            return nums[left]
        }
    }
    
    
}
