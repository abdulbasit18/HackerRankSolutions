//
//  BetweenTwoSetsSolution.swift
//  HackerRank
//
//  Created by Abdul Basit on 14/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import Foundation

class BetweenTwoSetsSolution {
    
    func getTotalX(a: [Int], b: [Int]) -> Int {
        // Write your code here
        
        let maxDigit = b.max() ?? 0
        var count = 0
        var matchedNumbers = [Int]()
        
        for index in 1...maxDigit {
            let unMatchedACount = a.filter{index % $0 != 0}.count
            if unMatchedACount == 0 {
                matchedNumbers.append(index)
            }
        }
         
        for matchNumber in matchedNumbers {
            let unMatchedBCount = b.filter{$0 % matchNumber != 0}.count
            if unMatchedBCount == 0 {
                count += 1
            }
        }
        
        return count
    }
}
