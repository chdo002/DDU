import Foundation


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

//反转字符串
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnhbqj/

//class Solution {
//    func reverseString(_ s: inout [String]) {
//        for i in 0..<s.count / 2 {
//            let temp = s[i]
//            s[i] = s[s.count - i - 1]
//            s[s.count - i - 1] = temp
//        }
//    }
//}
//var s = ["h","e","l","l","o"]
//Solution().reverseString(&s)

//整数反转
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnx13t/
//class Solution {
//    func reverse(_ x: Int) -> Int {
//        var s = 0
//        var num = x
//        while abs(num) != 0 {
//            let remain = num % 10
//            s = s * 10 + remain
//            num = num / 10
//            if abs(s) >= Int32.max {
//                return 0
//            }
//        }
//        return s
//    }
//}
//Solution().reverse(-2147483648)
