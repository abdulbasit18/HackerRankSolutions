//
//  HackerRankTests.swift
//  HackerRankTests
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//

import XCTest
@testable import HackerRank

class HackerRankTests: XCTestCase {

    func testCountApplesAndOranges(){
        
        let appleAndOrange = AppleAndOrangesSolution()
        let answer = appleAndOrange.countApplesAndOranges(s: 5, t: 15, a: 3, b: 17, apples: [-2,2,1], oranges: [5,-6])
        XCTAssertEqual(answer, [1,1])
        
        let answer2 = appleAndOrange.countApplesAndOranges(s: 5, t: 15, a: 3, b: 17, apples: [-2,-2,-1], oranges: [5,-6])
        XCTAssertEqual(answer2, [0,1])
        
        let answer3 = appleAndOrange.countApplesAndOranges(s: 5, t: 15, a: 3, b: 17, apples: [2,2,1], oranges: [5,6])
        XCTAssertEqual(answer3, [2,0])
  
    }
    
    func testBalanceBracesSolution1() {
        
        let balanceBracesSolution1 = BalanceBracesSolution1()
        let answer = balanceBracesSolution1.braces(values: ["[{()}]"])
        XCTAssertEqual(answer, ["YES"])

        let answer2 = balanceBracesSolution1.braces(values: ["[{()}}]"])
        XCTAssertEqual(answer2, ["NO"])
        
        
        let answer3 = balanceBracesSolution1.braces(values: ["[{(})]"])
        XCTAssertEqual(answer3, ["NO"])
    }
    
    
    
    func testBalanceBracesSolution2() {
        
        let balanceBracesSolution2 = BalanceBracesSolution2()
        let answer = balanceBracesSolution2.braces(values: ["[{()}]"])
        XCTAssertEqual(answer, ["YES"])
        
        let answer2 = balanceBracesSolution2.braces(values: ["[{()}}]"])
        XCTAssertEqual(answer2, ["NO"])
        
        let answer3 = balanceBracesSolution2.braces(values: ["[{(})]"])
        XCTAssertEqual(answer3, ["NO"])
    }
    
    func testStudentGrades(){

        let studentGrades = StudentSortedGradesSolution()
        let answer1 = studentGrades.gradeStudent(grades: [73,67,38,33])
        XCTAssertEqual(answer1, [75,67,40,33])
    }
    
    func testKanjaroo(){
        let kanjarooProblem = KanjarooProblem()
        let answer1 = kanjarooProblem.kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
        XCTAssertEqual(answer1, "NO")
        
        let answer2 = kanjarooProblem.kangaroo(x1: 0, v1: 2, x2: 2, v2: 1)
        XCTAssertEqual(answer2, "YES")
    }

}
