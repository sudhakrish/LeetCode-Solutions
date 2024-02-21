//
//  1480RunningSumof1dArray.swift
//  LeetCodeProblems
//
//  Created by Sudhakar Krishnan on 21/2/24.
//

import Foundation

struct RunningSumof1dArray {
    /*
     
     Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

     Return the running sum of nums.
     Example 1:

     Input: nums = [1,2,3,4]
     Output: [1,3,6,10]
     Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
     Example 2:

     Input: nums = [1,1,1,1,1]
     Output: [1,2,3,4,5]
     Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
     Example 3:

     Input: nums = [3,1,2,10,1]
     Output: [3,4,6,16,17]

     
     */
    
    
    // My solution
    // Run time - 7ms, Memory - 15.92MB
    func runningSum(_ nums: [Int]) -> [Int] {
        var total = 0
        return nums.map { value in
            total += value
            return total
        }
    }
    
    // Effecient Solution
    // Run time - 5ms, Memory - 15.66MB
    /*
     func runningSum(_ nums: [Int]) -> [Int] {
        var res = Array<Int>(repeating: 0, count: nums.count)
        var i = 0
        var sum = 0
        
        while i < nums.count {
            res[i] = sum + nums[i]
            sum += nums[i]
            i += 1
        }
        return res
    }
     */
}
