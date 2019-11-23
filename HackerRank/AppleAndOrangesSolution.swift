//
//  AppleAndOrangesSolution.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import Foundation

class AppleAndOrangesSolution {

    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        
        func printFruitCount(fruits : [Int] , distanceOfTtree : Int) {
            var totalCount = 0
            _ = fruits.map{
                
                let distance = $0 + distanceOfTtree
                
                if distance >= s && distance <= t {
                    totalCount += 1
                }
                
            }
            print(totalCount)
            
        }
        
        printFruitCount(fruits: apples, distanceOfTtree: a)
        printFruitCount(fruits: oranges, distanceOfTtree: b)
        
    }
    
}

