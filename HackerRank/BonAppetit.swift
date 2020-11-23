//
//  BonAppetit.swift
//  HackerRank
//
//  Created by Abdul Basit on 26/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import Foundation


final class BonAppetit {
    
    
    func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
        if k < bill.count {
            let notSharedItem = bill[k]
            let sharedBillSum: Double = Double(bill.filter{$0 != notSharedItem}.reduce(0, +))
            let amountShouldBePaid = Double(sharedBillSum / 2)
            
            if  Double(b) == amountShouldBePaid{
                print("Bon Appetit")
            }
            else {
                let differenceAmount = Double(b) - Double(amountShouldBePaid)
                print(Int(differenceAmount))
            }
            
        }
        
    }
    
}
