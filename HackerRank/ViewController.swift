//
//  ViewController.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let test = countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])
        print(test)
        
    }
    
    
    
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

