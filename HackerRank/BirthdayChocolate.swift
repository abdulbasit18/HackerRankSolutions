//
//  BirthdayChocolate.swift
//  HackerRank
//
//  Created by Abdul Basit on 15/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

/*
 Lily has a chocolate bar that she wants to share it with Ron for his birthday. Each of the squares has an integer on it. She decides to share a contiguous segment of the bar selected such that the length of the segment matches Ron's birth month and the sum of the integers on the squares is equal to his birth day. You must determine how many ways she can divide the chocolate.

Consider the chocolate bar as an array of squares, s = [2,2,1,3,2].She wants to find segments summing to Ron's birth day, d = 4 with a length equalling his birth month, m = 2. In this case, there are two segments meeting her criteria: [2,2] and [1,3]
 
 Function Description
 
 Complete the birthday function in the editor below. It should return an integer denoting the number of ways Lily can divide the chocolate bar.
 
 birthday has the following parameter(s):
 
 s: an array of integers, the numbers on each of the squares of chocolate
 d: an integer, Ron's birth day
 m: an integer, Ron's birth month

*/
import Foundation

class BirthdayChocolate {
    
    // Complete the birthday function below.
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        
        var startingIndex = 0
        var endIndex = m
        
        let chocolateBars = s
        
        var possibleOutcome = 0
        
        while endIndex <= s.endIndex {
            let sliceArrays = chocolateBars[startingIndex..<endIndex]
            let sum = sliceArrays.reduce(0,+)
            if sum == d {
                possibleOutcome += 1
            }
            startingIndex += 1
            endIndex += 1
        }
        
        
        return possibleOutcome
    }
}
