//
//  Design.swift
//  Alg
//
//  Created by chdo on 2021/5/13.
//

import Foundation

func Design() {
    //    打乱数组
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn6gq1/
    
    //    class Solution {
    //
    //        init(_ nums: [Int]) {
    //
    //        }
    //
    //        /** Resets the array to its original configuration and return it. */
    //        func reset() -> [Int] {
    //            return []
    //        }
    //
    //        /** Returns a random shuffling of the array. */
    //        func shuffle() -> [Int] {
    //            return []
    //        }
    //    }
    
    /**
     * Your Solution object will be instantiated and called as such:
     * let obj = Solution(nums)
     * let ret_1: [Int] = obj.reset()
     * let ret_2: [Int] = obj.shuffle()
     */
    
    //    最小栈
    //    https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnkq37/
    
    class MinStack {
        
        var arr = [Int]()
        var sortedArr = [(val:Int,index:Int)]()
        var min = 0
        /** initialize your data structure here. */
        init() {
            
        }
        
        func push(_ val: Int) {
            sortedArr.append((val,arr.count))
            arr.append(val)
            sortedArr.sort { cop1, cop2 in
                return cop1.val < cop2.val
            }
        }
        
        func pop() {
            if arr.count > 0 {
//                let val = arr.remove(at: arr.count - 1)
                
                for i in 0..<sortedArr.count {
                    if sortedArr[i].index == arr.count  {
                        sortedArr.remove(at: i)
                        break
                    }
                }
                sortedArr.sort { cop1, cop2 in
                    return cop1.val < cop2.val
                }
            }
        }
        
        func top() -> Int {
            if arr.count > 0 {
                return arr.last!
            } else {
                return 0
            }
        }
        
        func getMin() -> Int {
            if let val = sortedArr.first?.val {
                return val
            } else {
                return 0
            }
        }
    }
    
    /**
     * Your MinStack object will be instantiated and called as such:
     * let obj = MinStack()
     * obj.push(val)
     * obj.pop()
     * let ret_3: Int = obj.top()
     * let ret_4: Int = obj.getMin()
     */
    
//    let stack = MinStack()
//    stack.push(-2)
//    stack.push(0)
//    stack.push(-3)
//    let a = stack.getMin()
//    stack.pop()
//    let b = stack.top()
//    let c = stack.getMin()
//    print(123)
}
