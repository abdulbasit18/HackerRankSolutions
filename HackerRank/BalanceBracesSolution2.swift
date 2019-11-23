//
//  BalanceBracesSolution2.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import Foundation

class BalanceBracesSolution2 {
    
    
     func braces(values: [String]) -> [String] {
        
        var output = [String]()
        
        
        for val in values {
            let stack = Stack<BraceType>()
            let charaterArray = val.reversed().reversed()
            
            outerLoop: for (index,char) in charaterArray.enumerated() {
                if let char = BraceType(rawValue: char) {
                    
                    switch char.isOpen() {
                        
                    case true:
                        stack.push(val: char)
                    case false:
                        let popChar = stack.pop()
                        if char == popChar{
                            if index == charaterArray.count - 1 {
                                if stack.isEmpty() {
                                    output.append("YES")
                                    break
                                }
                            }
                        }
                        else {
                            output.append("NO")
                            break outerLoop
                            
                        }
                    }
                }
            }
        }
        
        return output
        
    }
}

// Custom Stack Implementation

class Stack<T>{
    
    init() {
        stack = [T]()
    }
    
    private var stack : [T?]?
    
    func push(val : T?) {
        stack?.append(val)
    }
    
    func pop() -> T? {
        let count = stack?.count
        if count == 0 {
            print("Stack is Empty")
        }
        
        guard let countN = count , countN > 0 else {return nil}
        return stack?.removeLast()
    }
    
    func count() -> Int? {
        return stack?.count
    }
    
    func isEmpty() -> Bool {
        return stack?.isEmpty ?? true
    }
}

// Brace Types

enum BraceType : Character{
    
    case roundBracketOpen = "("
    case roundBracketClose = ")"
    case squareBracketOpen = "["
    case squareBracketClose = "]"
    case curlyBracketOpen = "{"
    case curlyBracketClose = "}"
    
    
    func isOpen() -> Bool{
        switch self {
        case .roundBracketOpen:
            return true
        case .roundBracketClose:
            return false
        case .squareBracketOpen:
            return true
        case .squareBracketClose:
            return false
        case .curlyBracketOpen:
            return true
        case .curlyBracketClose:
            return false
        }
    }
    
    
    func type() -> String{
        switch self {
        case .roundBracketOpen:
            return "round"
        case .roundBracketClose:
            return "round"
        case .squareBracketOpen:
            return "sqare"
        case .squareBracketClose:
            return "sqare"
        case .curlyBracketOpen:
            return "curly"
        case .curlyBracketClose:
            return "curly"
        }
    }
    
}


extension BraceType {
    static func == (lhs: BraceType, rhs: BraceType) -> Bool {
        if lhs.type() == rhs.type() {
            return true
        }
        return false
    }
}
