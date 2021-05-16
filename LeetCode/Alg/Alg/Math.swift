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
    //    class Solution {
    //        func countPrimes(_ n: Int) -> Int {
    //            if n < 3 {
    //                return 0
    //            }
    //            var isPrime = Array(repeating: true, count: n)
    //            var count = 0
    //            for i in 2..<n {
    //                if isPrime[i] {
    //                    count += 1
    //                    var j = i + i
    //                    while j < n {
    //                        isPrime[j] = false
    //                        j += i
    //                    }
    //                }
    //            }
    //            return count
    //        }
    //    }
    //    let a = Solution().countPrimes(0)
    
    /*public class test {
     public static int countPrimes(int n) {
     boolean[] notPrimes = new boolean[n];
     int count = 0;
     for (int i = 2; i < n; i++) {
     //如果是合数就不需要统计
     if (notPrimes[i])
     continue;
     count++;
     //到这一步说明不是素数，直接让他的2倍，3倍……都标记为非负数即可
     for (int j = i; j < n; j += i)
     notPrimes[j] = true;
     }
     return count;
     }
     
     
     public static void main(String[] args) {
     countPrimes(10);
     }
     }*/
    
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnsdi2/
    //    3的幂
    //    1162261467%n=0
    
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn4n7c/
    //    罗马数字转整数
    //    class Solution {
    //        func romanToInt(_ s: String) -> Int {
    //            let obj = [
    //                "I": 1,
    //                "V": 5,
    //                "X": 10,
    //                "L": 50,
    //                "C": 100,
    //                "D": 500,
    //                "M": 1000,
    //
    //                "IV": 4,
    //                "IX": 9,
    //                "XL": 40,
    //                "XC": 90,
    //                "CD": 400,
    //                "CM": 900,
    //            ];
    //
    //            var res = 0
    //            var index = s.startIndex
    //            while index < s.endIndex {
    //                let next2Index = s.index(index, offsetBy: 2, limitedBy: s.endIndex)
    //                if let nx = next2Index, let num = obj[String(s[index..<nx])]  {
    //                    res += num
    //                    index = nx
    //                } else {
    //                    let next1Index = s.index(after: index)
    //                    let num = obj[String(s[index..<next1Index])]!
    //                    res += num
    //                    index = next1Index
    //                }
    //            }
    //            return res
    //        }
    //    }
    //    Solution().romanToInt("MCMXCIV")
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn1m0i/
    //    位1的个数
    //    class Solution {
    //        func hammingWeight(_ n: Int) -> Int {
    //            var res = 0
    //            var num = n
    //            while num > 0 {
    ////                res += num & 1
    ////                num = num >> 1
    //
    ////                num &= num - 1
    //                res += 1
    //            }
    //            return res
    //        }
    //    }
    //    Solution().hammingWeight(0b00000000000000000000000000001011)
    
    //    class Solution {
    //        func hammingDistance(_ x: Int, _ y: Int) -> Int {
    //
    //        }
    //    }
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnyode/
    //    汉明距离
    //    class Solution {
    //        func hammingDistance(_ x: Int, _ y: Int) -> Int {
    //            var dif = x ^ y
    //            var res = 0
    //            while dif > 0 {
    //                res += dif & 1
    //                dif = dif >> 1
    //            }
    //            return res
    //        }
    //    }
    //    print(Solution().hammingDistance(1, 4))
    
    
    //    颠倒二进制位
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnc5vg/
    //    class Solution {
    //        func reverseBits(_ n: Int) -> Int {
    //            var res = 0
    //            var num = n
    //            for _ in 0..<32 {
    //                res <<= 1
    //                res |= num & 1
    //                num >>= 1
    //            }
    //            return res
    //        }
    //    }
    //    Solution().reverseBits(2)
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xncfnv/
    //    杨辉三角
    
    //    class Solution {
    //        func generate(_ numRows: Int) -> [[Int]] {
    //            if numRows == 1 {
    //                return [[1]]
    //            }
    //            var nums = generate(numRows - 1)
    //            let preArr = nums.last!
    //            var newArr = [1]
    //            for i in 0..<preArr.count - 1 {
    //                newArr.append(preArr[i] + preArr[i + 1])
    //            }
    //            newArr.append(1)
    //            nums.append(newArr)
    //            return nums
    //        }
    //    }
    //    print(Solution().generate(4))
    
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnbcaj/
    //    有效的括号
    
//    class Solution {
//        func isValid(_ s: String) -> Bool {
            //            let pairs = ["[":"]","{":"}","(":")"]
            //            var stack = [String]()
            //            for slice in s {
            //                let sliceStr = String(slice)
            //                if let pair = pairs[sliceStr] {
            //                    stack.append(pair)
            //                } else {
            //                    if let pair =  stack.popLast() {
            //                        if pair != sliceStr {
            //                            return false
            //                        }
            //                    } else {
            //                        return false
            //                    }
            //                }
            //            }
            //            return stack.isEmpty
            
//            if s.count % 2 > 0 {
//                return false
//            }
//
//            let map: [Character: Character] = [
//                Character("}"): Character("{"),
//                Character(")"): Character("("),
//                Character("]"): Character("[")
//            ]
//
//
//            var stack: [Character] = []
//
//            for c in Array(s) {
//
//                if let val = map[c] {
//                    if val != stack.popLast() { return false }
//                } else {
//                    stack.append(c)
//                }
//
//            }
//
//            return stack.isEmpty
//        }
//    }
//    print(Solution().isValid("()[]{}"))
    
//    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnj4mt/
//    缺失数字
//    public int missingNumber(int[] nums) {
//        if(nums.length <= 0){
//            return 0;
//        }
//        int reduce = 0;
//        for (int i = 0; i < nums.length; i++) {
//            reduce = reduce ^ nums[i] ^ i;
//        }
//        return reduce ^ nums.length;
//    }
    
//    class Solution {
//        func missingNumber(_ nums: [Int]) -> Int {
//            if nums.count < 1 {
//                return 0
//            }
//            var reduce = 0
//            for i in 0..<nums.count {
//                reduce = reduce ^ i ^ nums[i]
//            }
//            let res = reduce ^ nums.count
//            return res
//        }
//    }
//    Solution().missingNumber([0,1,3])
}
