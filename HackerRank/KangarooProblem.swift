//
//  KanjarooProblem.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import Foundation

class KangarooProblem {
    
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        
        var startingCount = 0
        
        if x1 < x2 {
            startingCount = x1
        }
        else {
            startingCount = x2
        }
        var distanceForKangaroo1 = x1
        var distanceForKangaroo2 = x2
        
        for _ in startingCount...9999 {
            
            distanceForKangaroo1 += v1
            
            distanceForKangaroo2 += v2
            
            if distanceForKangaroo1 == distanceForKangaroo2 {
                return "YES"
                
            }

        }
        return "NO"
    }
}
