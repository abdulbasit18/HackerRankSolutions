//
//  AppleAndOrangesSolution.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

/*
 
 Sam's house has an apple tree and an orange tree that yield an abundance of fruit. In the diagram below, the red region denotes his house, where s is the start point, and t is the endpoint. The apple tree is to the left of his house, and the orange tree is to its right. You can assume the trees are located on a single point, where the apple tree is at point a, and the orange tree is at point b.
 
 Function Description
 
 Complete the countApplesAndOranges function in the editor below. It should print the number of apples and oranges that land on Sam's house, each on a separate line.
 
 countApplesAndOranges has the following parameter(s):
 
 s: integer, starting point of Sam's house location.
 t: integer, ending location of Sam's house location.
 a: integer, location of the Apple tree.
 b: integer, location of the Orange tree.
 apples: integer array, distances at which each apple falls from the tree.
 oranges: integer array, distances at which each orange falls from the tree.
 
*/

import Foundation

class AppleAndOrangesSolution {

    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
        
        func getTotalCount(fruits : [Int] , distanceOfTtree : Int) -> Int {
            var totalCount = 0
            _ = fruits.map{
                
                let distance = $0 + distanceOfTtree
                
                if distance >= s && distance <= t {
                    totalCount += 1
                }
                
            }
            return totalCount
            
        }
        return [
        getTotalCount(fruits: apples, distanceOfTtree: a),
        getTotalCount(fruits: oranges, distanceOfTtree: b)]
        
    }
    
}

