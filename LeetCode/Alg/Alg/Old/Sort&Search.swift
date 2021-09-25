//
//  Sort&Search.swift
//  Alg
//
//  Created by chdo on 2021/5/11.
//

import Foundation

func SortSearch() {
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnumcr/
    //    合并两个有序数组
    //    class Solution {
    //        func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    //            var index1 = 0
    //            var index2 = 0
    //            var res = [Int]()
    //            while index1 < m, index2 < n {
    //                if nums1[index1] < nums2[index2] {
    //                    res.append(nums1[index1])
    //                    index1 += 1
    //                } else {
    //                    res.append(nums2[index2])
    //                    index2 += 1
    //                }
    //            }
    //            while index1 < m {
    //                res.append(nums1[index1])
    //                index1 += 1
    //            }
    //            while index2 < n {
    //                res.append(nums2[index2])
    //                index2 += 1
    //            }
    //            nums1 = res
    //        }
    //        func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    //            var num2i = nums2.count-1
    //            var num1i = m-1
    //            var pi = nums1.count-1
    //            while num2i>=0 {
    //                if num1i>=0 && nums1[num1i] > nums2[num2i] {
    //                    nums1[pi] = nums1[num1i]
    //                    pi = pi-1
    //                    num1i=num1i-1
    //                } else {
    //                    nums1[pi] = nums2[num2i]
    //                    pi = pi-1
    //                    num2i=num2i-1
    //                }
    //            }
    //        }
    //    }
    //    var nums1 = [1,2,3,0,0,0]; let m = 3; let nums2 = [2,5,6]; let n = 3
    //    Solution().merge(&nums1, m, nums2, n)
    //    print(nums1)
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnto1s/
    //    第一个错误的版本
    //    二分查找
    class Solution {
        func isBadVersion(_ version: Int) -> Bool{
            return version >= 5
        }
        
        //        func badVersionR(at badVersion: Int, range: ClosedRange<Int>) -> Int {
        //            if range.upperBound == range.lowerBound {
        //                return range.lowerBound
        //            } else {
        //                let mid = range.lowerBound + (range.upperBound -  range.lowerBound) / 2
        //                if isBadVersion(mid) {
        //                    return badVersionR(at: mid, range: range.lowerBound...mid)
        //                } else {
        //                    return badVersionR(at: mid, range: mid+1...range.upperBound)
        //                }
        //            }
        //        }
        //
        //        func firstBadVersion(_ n: Int) -> Int {
        //            let mid = n / 2
        //            if isBadVersion(mid) {
        //                return badVersionR(at: mid, range: 1...mid)
        //            } else {
        //                return badVersionR(at: mid, range: mid+1...n)
        //            }
        //        }
        func firstBadVersion(_ n: Int) -> Int {
            var left = 0
            var right = n
            while left < right {
                let mid = left + (right - left) / 2
                if isBadVersion(mid) {
                    right = mid
                } else {
                    left = mid + 1
                }
            }
            return left
        }
    }
    
    print(Solution().firstBadVersion(5))
    print(Solution().firstBadVersion(4))
    print(Solution().firstBadVersion(3))
    print(Solution().firstBadVersion(2))
    print(Solution().firstBadVersion(1))
}
