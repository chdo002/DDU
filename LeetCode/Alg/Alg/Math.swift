//
//  Math.swift
//  Alg
//
//  Created by chdo on 2021/5/13.
//

import Foundation

func Math() {
//    Fizz Buzz
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xngt85/
//    class Solution {
//        func fizzBuzz(_ n: Int) -> [String] {
//            var res = [String]()
//            for i in 1...n {
//
//            }
//            return [""]
//        }
//    }
    
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnzlu6/
//    计数质数
    class Solution {
        func countPrimes(_ n: Int) -> Int {
            var notPrime = Array(repeating: true, count: n)
            var count = 0
            for i in 2..<n {
                if notPrime[i] {
                    
                } else {
                    count += 1
                    var j = i
                    while j < n {
                        notPrime[j] = false
                        j += i
                    }
                }
            }
            return count
        }
    }
    let a = Solution().countPrimes(10)
    print(1)
}
