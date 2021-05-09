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

////字符串中的第一个唯一字符
////https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn5z8r/
//class Solution {
//    func firstUniqChar(_ s: String) -> Int {
//        var dic = [UInt32:Int]()
//        for item in s.unicodeScalars {
//            let count = dic[item.value] ?? 0
//            dic[item.value] = count + 1
//        }
//        for item in s.unicodeScalars.enumerated() {
//            if dic[item.element.value] == 1 {
//                return item.offset
//            }
//        }
//        return -1
//    }
//}
//Solution().firstUniqChar("leetcode")

//有效的字母异位词
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn96us/
//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        if s.count != t.count {
//            return false
//        }
//        var dic = [UInt32:Int]()
//
//        for c in s.unicodeScalars {
//            let count = dic[c.value] ?? 0
//            dic[c.value] = count + 1
//        }
//        for c in t.unicodeScalars {
//            print(c)
//            if let count = dic[c.value] {
//                let value = count - 1
//                if value == 0 {
//                    dic[c.value] = nil
//                } else if value < 0 {
//                    return false
//                } else {
//                    dic[c.value] = value
//                }
//            } else {
//                return false
//            }
//        }
//        return true
//    }
//}
//Solution().isAnagram("aacc", "ccac")

//验证回文串
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xne8id/
//class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//        if s.isEmpty {
//            return true
//        }
//        var i = s.startIndex
//        var j = s.index(before: s.endIndex)
//
//        while i < j {
//            let left = s[i].lowercased()
//            if !("a"..."z").contains(left) && !("0"..."9").contains(left) {
//                i = s.index(after: i)
//                continue
//            }
//            let right = s[j].lowercased()
//            if !("a"..."z").contains(right) && !("0"..."9").contains(right) {
//                j = s.index(before: j)
//                continue
//            }
//            if left != right {
//                return false
//            }
//            i = s.index(after: i)
//            j = s.index(before: j)
//        }
//
//        return true
//    }
//}
//var a = "A man, a plan, a canal: Panama"
//a = "race a car"
//Solution().isPalindrome(a)

//字符串转换整数 (atoi)
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnoilh/
//class Solution {
//    func myAtoi(_ s: String) -> Int {
//        var res = 0
//        var str = s
//        var isPostive = true
//        while str.hasPrefix(" ") {
//            str.removeFirst()
//        }
//        if str.hasPrefix("-") {
//            str.removeFirst()
//            isPostive = false
//        } else if str.hasPrefix("+") {
//            str.removeFirst()
//        }
//        var isOut = false
//        for i in str.indices {
//            let s = String(str[i])
//            let num = Int(s)
//            if let n = num {
//                let temp = res * 10 + n
//                if temp > Int(Int32.max) {
//                    isOut = true
//                    break
//                }
//                res = temp
//            } else {
//                break
//            }
//        }
//
//        if isOut {
//            if isPostive {
//                return Int(Int32.max)
//            } else {
//                return Int(Int32.min)
//            }
//        } else {
//            if !isPostive {
//                res *= -1
//            }
//        }
//        return res
//    }
//}
//var s = "-91283472332"
//s = "words and 987"
//s = "   -42"
//s = "-91283472332"
//s = "3.14159"
//s = "+-12"
//s = "2147483648"
//Int32.min
//Int32.max
//Solution().myAtoi(s)
//atoi(s)


//实现 strStr()
////https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnr003/
//class Solution {
//    func strStr(_ haystack: String, _ needle: String) -> Int {
//        if needle.count ==  0 {
//            return 0
//        }
//        if needle.count > haystack.count {
//            return -1
//        }
//        var iIndex = 0
//        var i = haystack.startIndex
//        var j = needle.startIndex
//
//        while i < haystack.endIndex && j < needle.endIndex {
//            if haystack[i] == needle[j] {
//                i = haystack.index(after: i)
//                j = needle.index(after: j)
//            } else {
//                iIndex += 1
//                i = haystack.index(haystack.startIndex, offsetBy: iIndex)
//                j = needle.startIndex
//            }
//        }
//        if j != needle.endIndex {
//            return -1
//        }
//        return iIndex
//    }
//}
//
//var haystack = "hello"; var needle = "ll"
//haystack = "mississippi"
//needle = "issip"
//haystack = "aaaaa"
//needle = "bba"

//外观数列
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnpvdm/
//class Solution {
//
//    func say(num: String) -> String {
//        var res = ""
//        var dic = [Character:Int]()
//
//        var str = num
//        while !str.isEmpty {
//            let c =  str.removeFirst()
//            if dic.isEmpty {
//                dic[c] = 1
//            } else {
//                if let n = dic[c] {
//                    dic[c] = n + 1
//                } else {
//                    res += "\(dic.values.first!)\(dic.keys.first!)"
//                    dic.removeAll()
//                    dic[c] = 1
//                }
//            }
//        }
//        if !dic.isEmpty {
//            res += "\(dic.values.first!)\(dic.keys.first!)"
//        }
//        return res
//    }
//    func countAndSay(_ n: Int) -> String {
//        var count = n
//        var res = "1"
//        while count > 1 {
//            res = say(num: res)
//            count -= 1
//        }
//        return res
//    }
//}
//var n = 1
//Solution().countAndSay(n)

//最长公共前缀
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnmav1/
//class Solution {
//    func longestCommonPrefix(_ strs: [String]) -> String {
//
//        if strs.count < 1 {
//            return ""
//        }
//
//        if strs.count < 2 {
//            return strs.first!
//        }
//
//        var res = strs.first!
//
//        for i in 1..<strs.count {
//            let str = strs[i]
//            if str.isEmpty {
//                return ""
//            }
//            var index1 = res.startIndex
//            var index2 = str.startIndex
//            while index1 < res.endIndex && index2 < str.endIndex{
//                if res[index1] != str[index2] {
//                    if index1 > res.startIndex {
//                        res = String(res[res.startIndex..<index1])
//                        break
//                    } else {
//                        return ""
//                    }
//                }
//                index1 = res.index(after: index1)
//                index2 = str.index(after: index2)
//                if index2 == str.endIndex {
//                    res = String(res[res.startIndex..<index2])
//                }
//            }
//        }
//
//        return res
//    }
//
//    func longestCommonPrefix2(_ strs: [String]) -> String {
//        let sortedStrs = strs.sorted()
//        let firstStr = sortedStrs.first ?? ""
//        let lastStr = sortedStrs.last ?? ""
//        let lastArr = Array(lastStr)
//        var result = ""
//        for (index, char) in firstStr.enumerated() {
//            guard char == lastArr[index] else { break }
//            result.append(char)
//        }
//
//        return result
//    }
//
//}
//var strs = ["flower","flow","flight"]
//strs = ["dog","racecar","car"]
//strs = ["ab", "a"]
//strs = ["abab","aba",""]
//Solution().longestCommonPrefix(strs)


//删除链表中的节点
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnarn7/


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
//class Solution {
//    func deleteNode(_ node: ListNode?) {
//        if node == nil {
//            return
//        }
//        node?.val = node!.next!.val
//        node?.next = node!.next!.next
//    }
//}
//var n9 = ListNode(9)
//var n1 = ListNode(1); n1.next = n9
//var n5 = ListNode(5); n5.next = n1
//var n4 = ListNode(4); n4.next = n5
//var head = [n4,n5,n1,n9]
//var node = n5
//Solution().deleteNode(node)
//n4

//删除链表的倒数第N个节点
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn2925/


