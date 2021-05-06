import Foundation


// 删除排序数组中的重复项
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2gy9m/
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    
    if nums.first == nums.last {
        return 1
    }
    
    var i = 0
    for j in (1..<nums.count) {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }
    nums = Array(nums[0...i])
    return i + 1
}

//var arr = [1,1,2]
//removeDuplicates(&arr)
//print(arr)

//买卖股票的最佳时机 II
//https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2zsx1/

