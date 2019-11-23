//
//  KanjarooProblem.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import Foundation

class KanjarooProblem {
    
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        
        var startingCount = 0
        
        if x1 < x2 {
            startingCount = x1
        }
        else {
            startingCount = x2
        }
        var distaceForKangroo1 = x1
        var distaceForKangroo2 = x2
        
        for _ in startingCount...9999 {
            
            distaceForKangroo1 += v1
            
            distaceForKangroo2 += v2
            
            if distaceForKangroo1 == distaceForKangroo2 {
                return "YES"
                
            }

        }
        return "NO"
    }
}
