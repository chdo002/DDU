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
