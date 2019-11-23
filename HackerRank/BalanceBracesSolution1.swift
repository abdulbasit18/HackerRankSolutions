//
//  BalanceBracesSolution1.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

class BalanceBracesSolution1 {
    
    // It works well for braces count but if you need sequence matching too
    // Look into file BalanceBracesSolution2
    
    func braces(values: [String]) -> [String] {
        
        var output = [String]()
        
        for val in values {
            
            if val.isBalanced() {
                output.append("YES")
            }
            else{
                output.append("NO")
            }
        }
        
        return output
        
    }

}

extension String {
    
    func isBalanced() -> Bool {
        switch self.filter("()[]{}".contains)
            .replacingOccurrences(of: "()", with: "")
            .replacingOccurrences(of: "[]", with: "")
            .replacingOccurrences(of: "{}", with: "") {
        case "": return true
        case self: return false
        case let next: return next.isBalanced()
        }
    }
    
}
