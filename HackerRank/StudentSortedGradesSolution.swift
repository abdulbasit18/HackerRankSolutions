//
//  StudentSortedGradesSolution.swift
//  HackerRank
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import Foundation

class StudentSortedGradesSolution {
    func gradeStudent (grades : [Int]) {
        
        var sortedGrades = [Int]()
        
        
        for grade in grades  {
            
            var grade = grade
            let diff = grade % 5
            if diff >= 3 && grade >= 38 {
                grade += 5 - diff
            }
            sortedGrades.append(grade)
        }
    }
}
