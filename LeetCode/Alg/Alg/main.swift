//
//  main.swift
//  Alg
//
//  Created by chdo on 2021/5/9.
//

import Foundation


/*
 class Solution {
     func majorityElement(_ nums: [Int]) -> Int {
         var count = 0, candidate = 0
         for num in nums {
             if count == 0 { candidate = num }
             count += (num == candidate) ? 1 : -1
         }
         return candidate
     }
 }
 */
func majorityElement(_ nums: [Int]) -> Int {
    let sort = nums.sorted()
    return sort[sort.count / 2]
}
