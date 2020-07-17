//
//  DayOfTheProgrammer.swift
//  HackerRank
//
//  Created by Abdul Basit on 16/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import Foundation

/*
 Function Description
 
 Complete the dayOfProgrammer function in the editor below. It should return a string representing the date of the 256th day of the year given.
 
 dayOfProgrammer has the following parameter(s):
 
 year: an integer
 Input Format
 
 A single integer denoting year .
 */

class DayOfTheProgrammer {
    
    // Complete the dayOfProgrammer function below.
    func dayOfProgrammer(year: Int) -> String {
        
        var totalDaysCount = 0
        for month in 1...8 {
            let dateComponents = DateComponents(year: year, month: month)
            let calendar = Calendar.current
            let date = calendar.date(from: dateComponents)!
            
            let range = calendar.range(of: .day, in: .month, for: date)!
            let numDays = range.count
            totalDaysCount += numDays
        }
        
        var dayOfProgrammer = 256 - totalDaysCount
        if year < 1918 {
            dayOfProgrammer -= 1
        }
        let dateString = "\(dayOfProgrammer).09.\(year)"
        
        return dateString
        
    }
}
