//
//  DivisibleSumPairs.swift
//  HackerRank
//
//  Created by Abdul Basit on 15/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import Foundation

class DivisibleSumPairs {
    
    // Complete the divisibleSumPairs function below.
    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        var pairCount = 0
        
        if n > 2 {
            for (index,i) in ar.enumerated() {
                let arr2 = ar[(index+1)..<n]
                if arr2.isEmpty {
                    break
                }
                for j in arr2 {
                    if k > 0 && (i+j) % k == 0 {
                        pairCount += 1
                    }
                }
            }
        }
        
        return pairCount
    }
    
}
