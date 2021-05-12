//
//  DP.swift
//  Alg
//
//  Created by chdo on 2021/5/11.
//

import Foundation

func DP(){
    //    爬楼梯
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn854d/
    //    class Solution {
    ////        func climbStairs(_ n: Int) -> Int { ×
    ////            if n == 1 {
    ////                return 1
    ////            }
    ////            if n == 2 {
    ////                return 2
    ////            }
    ////            return climbStairs(n - 1) + climbStairs(n - 2)
    ////        }
    //        func climbStairs(_ n: Int) -> Int {
    //            if n <= 1 {
    //                return 1
    //            }
    //            var dps = [Int]()
    //            dps.append(1)
    //            dps.append(2)
    //            for i in 2..<n {
    //                dps.append(dps[ i - 1] + dps[i - 2])
    //            }
    //            return dps.last!
    //        }
    //    }
    //    let a = Solution().climbStairs(1)
    //    print(a)
    
    //    买卖股票的最佳时机
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn8fsh/
    #warning("没弄懂二维数组")
    //    class Solution {
    //        func maxProfit(_ prices: [Int]) -> Int {
    //            if prices.count < 2 {
    //                return 0
    //            }
    //            var low = prices[0]
    //            var maxRes = 0
    //            for i in 1..<prices.count {
    //                low = min(low, prices[i])
    //                maxRes = max(maxRes, prices[i] - low)
    //            }
    //            return maxRes
    //        }
    //    }
    //    print(Solution().maxProfit([7,1,5,3,6,4]))
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn3cg3/
    //    最大子序和
    //    class Solution {
    //        func maxSubArray(_ nums: [Int]) -> Int {
    //            if nums.isEmpty {
    //                return 0
    //            }
    //            var curr = nums[0]
    //            var maxSum = nums[0]
    //            for i in (1..<nums.count) {
    //                curr = nums[i] + max(0, curr)
    //                maxSum = max(curr, maxSum)
    //            }
    //            return maxSum
    //        }
    //    }
    //    Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
    
    //    打家劫舍
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnq4km/
//    class Solution {
//        func rob(_ nums: [Int]) -> Int {
//            if nums.isEmpty {
//                return 0
//            }
//
//            let first = nums[0]
//
//            if nums.count == 1 {
//                return first
//            }
//
//            let sec = nums[1]
//            if nums.count == 2 {
//                return max(first, sec)
//            }
//
//            var dp = [
//                0:first,
//                1:max(first, sec)
//            ]
//            for i in 2..<nums.count {
//                let stealN = nums[i] + dp[i - 2]!
//                dp[i] = max(stealN, dp[i - 1]!)
//            }
//            return max(dp[nums.count - 1]!, dp[nums.count - 2]!)
//        }
//    }
//    Solution().rob([2,7,9,3,1])
}
