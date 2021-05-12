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
    
    class Solution {
        func maxProfit(_ prices: [Int]) -> Int {
            if prices.count < 2 {
                return 0
            }
            var low = 0
            var maxRes = 0
            for i in 1..<prices.count - 1 {
                
            }
            return maxRes
        }
    }
    print(Solution().maxProfit([7,1,5,3,6,4]))
}
