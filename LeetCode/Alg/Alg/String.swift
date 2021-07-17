//
//  String.swift
//  Alg
//
//  Created by chdo on 2021/5/9.
//

import Foundation

func string(){
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
}

func string2() {
    
    //    class Solution {
    //        func reverseWords(_ s: String) -> String {
    //            var res = s.split(separator: " ").reversed().reduce("") { res, subStr in
    //                if subStr == " " {
    //                    return res
    //                } else  {
    //                    return res + subStr + " "
    //                }
    //            }
    //            res.removeLast()
    //            return res
    //        }
    //    }
    //    print(Solution().reverseWords("the sky is blue"))
    
    
    /*
     public String longestPalindrome(String s) {
     if (s == null || s.length() < 2) return s;
     int resIdx = 0, resLen = 1;
     for (int idx = 0; idx < s.length() - 1; idx++) {
     //奇数最长回文长度
     int len1 = longestLen(s, idx, idx);
     //偶数最长回文长度
     int len2 = longestLen(s, idx, idx + 1);
     if (len1 > resLen) {
     resLen = len1;
     resIdx = idx - resLen / 2;
     }
     if (len2 > resLen) {
     resLen = len2;
     resIdx = idx - (resLen / 2 - 1);
     }
     }
     return s.substring(resIdx, resIdx + resLen);
     }
     //左右探索最长回文子串长度
     private int longestLen(String s, int left, int right) {
     while (left >= 0 && right < s.length()) {
     if (s.charAt(left) != s.charAt(right)) break;
     left--;
     right++;
     }
     return right - left - 1;
     }
     
     */
    //    class Solution {
    //
    //        func c(s:String, idx:Int) -> Character {
    //            let a = s[s.index(s.startIndex, offsetBy: idx)]
    //           return a
    //        }
    //        func longestPalindrome(_ s: String) -> String {
    //
    //            let count = s.count
    //
    //            if count < 2 {
    //                return s
    //            }
    //
    //            var resIdx = 0, resLen = 1
    //            for e in s.enumerated() {
    //                if e.offset >= count - 1 {
    //                    break
    //                }
    //
    //                let remain = count - e.offset
    //                if remain < resLen / 2 {
    //                    break
    //                }
    //
    //                let idx = e.offset
    //                let len1 = longestLen(s, left: idx, right: idx, count: count)
    //                let len2 = longestLen(s, left: idx, right: idx + 1,count: count)
    //                if len1 > resLen {
    //                    resLen = len1
    //                    resIdx = idx - resLen / 2
    //                }
    //                if len2 > resLen {
    //                    resLen = len2
    //                    resIdx = idx - (resLen / 2 - 1)
    //                }
    //            }
    //            return String(s[s.index(s.startIndex, offsetBy: resIdx)..<s.index(s.startIndex, offsetBy: resIdx + resLen)])
    //        }
    //
    //        func longestLen(_ s:String, left: Int, right: Int, count:Int) -> Int {
    //            var left = left
    //            var right = right
    //            while left >= 0 && right < count {
    //                if c(s: s, idx: left) != c(s: s, idx: right) {
    //                    break
    //                }
    //                left -= 1
    //                right += 1
    //            }
    //            return right - left - 1
    //        }
    //    }
    //
    //    print(Solution().longestPalindrome("aaaa"))
    //
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/c24he/
    //    数组拆分 I
    
    //    class Solution {
    //
    //        func arrayPairSum1(_ nums: [Int]) -> Int {
    //              var nums = nums
    //              nums.sort(by: <)
    //              var sum = 0
    //              for i in stride(from: 0, to: nums.count, by: 2) {
    //                  sum += nums[i]
    //              }
    //              return sum
    //          }
    //
    //        func arrayPairSum(_ nums: [Int]) -> Int {
    //            let sort = nums.sorted()
    //            var res = 0
    //            for i in 0..<sort.count {
    //                if i % 2 == 0 {
    //                    res += sort[i]
    //                }
    //            }
    //            return res
    //        }
    //
    //        func arrayPairSum2(_ nums: [Int]) -> Int {
    //            guard nums.count > 0 else{
    //                return 0
    //            }
    //            var tempNum = nums
    //            quickSort(&tempNum, 0, tempNum.count - 1)
    //            print(tempNum)
    //            var sum = 0
    //            for (i, n) in tempNum.enumerated() {
    //                if i % 2 == 0 {
    //                    sum += n
    //                }
    //            }
    //            return sum
    //        }
    //
    //        func quickSort(_ nums: inout [Int], _ left: Int, _ right: Int) {
    //            guard left < right else{
    //                return
    //            }
    //
    //            var l = left
    //            var r = right
    //            let temp = nums[left]
    //            while l < r {
    //                while l < r && nums[r] >= temp {
    //                    r -= 1
    //                }
    //                while l < r && nums[l] <= temp {
    //                    l += 1
    //                }
    //
    //                if l < r {
    //                    (nums[l],nums[r]) = (nums[r], nums[l])
    //                }
    //            }
    //
    //            nums[left] = nums[l]
    //            nums[l] = temp
    //            quickSort(&nums, left, r - 1)
    //            quickSort(&nums, r + 1, right)
    //        }
    //
    //        func arrayPairSum3(_ nums: [Int]) -> Int {
    //            var count = Array(repeating: 0, count: 20001)
    //            for n in nums {
    //                count[n + 10000] += 1
    //            }
    //            var ret = 0, borrow = 0
    //            for i in -10000...10000 {
    //                ret += (count[i+10000] - borrow + 1) / 2 * i
    //                borrow = (count[i+10000] - borrow + 2) % 2
    //            }
    //            return ret
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/cnkjg/
    //    两数之和 II - 输入有序数组
    //
    //    class Solution {
    //        func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    //            var res = (0,numbers.count - 1)
    //
    //            while res.0 < res.1 {
    //                let temp = numbers[res.0] + numbers[res.1]
    //                if temp == target {
    //                    return [res.0 + 1, res.1 + 1]
    //                } else if temp < target {
    //                    res.0 = res.0 + 1
    //                } else {
    //                    res.1 = res.1 - 1
    //                }
    //            }
    //            return [-1, -1]
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/cwuyj/
    //    移除元素
    
    //    class Solution {
    //        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    //            var point1 = 0
    //            for n in nums {
    //                if n != val {
    //                    nums[point1] = n
    //                    point1 += 1
    //                }
    //            }
    //            return point1
    //        }
    //    }
    //    var arr = [3,2,2,3]
    //    print(Solution().removeElement(&arr, 3), arr)
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/cd71t/
    //    最大连续1的个数
    //    class Solution {
    //        func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    //            var maxValue = 0, temp = 0
    //            for i in nums {
    //                if i == 1  {
    //                    temp += 1
    //                } else {
    //                    temp = 0
    //                }
    //                maxValue = max(maxValue, temp)
    //            }
    //            return maxValue
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/array-and-string/c0w4r/
    //    长度最小的子数组
    /*
     class Solution {
     public:
         int minSubArrayLen(int target, vector<int>& nums) {
             int fast = -1,slow = 0,sum = 0;
             int n = nums.size();
             int minLen = n+1;
             for(;slow<n;)
             {
                 if(sum<target&&fast<n-1)
                     sum+=nums[++fast];
                 else
                     sum-=nums[slow++];
                 if(sum>=target)
                     minLen = min(fast-slow+1,minLen);
             }
             if(minLen==n+1)
                 return 0;
             else
                 return minLen;
         }
     };
     */
    class Solution {
        func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
            var fast = -1, slow = 0, sum = 0
            let n = nums.count
            var minLen = n + 1
            while slow < n {
                if sum < target && fast < n - 1 {
                    fast += 1
                    sum += nums[fast]
                } else {
                    sum -= nums[slow]
                    slow += 1
                }
                if sum == target {
                    minLen = min(fast - slow + 1, minLen)
                }
            }
            if minLen == n + 1 {
                return 0
            } else {
                return minLen
            }
        }
    }
    /*
     示例 1：

     输入：target = 7, nums = [2,3,1,2,4,3]
     输出：2
     解释：子数组 [4,3] 是该条件下的长度最小的子数组。
     示例 2：

     输入：target = 4, nums = [1,4,4]
     输出：1
     示例 3：

     输入：target = 11, nums = [1,1,1,1,1,1,1,1]
     输出：0
     */
    
    Solution().minSubArrayLen(7, [2,3,8,2,4,3])
}
