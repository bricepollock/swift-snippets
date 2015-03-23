//
//  optionalMaxTests.swift
//  swiftSnippets
//
//  Created by Personal on 3/22/15.
//
//

import UIKit
import XCTest

class mapForOptionalsTests: XCTestCase {
    
    func testTwoValue_validAscending() {
        let firstValue: Int? = 2
        let secondValue: Int? = 3
        let expectedValue: Int? = 3
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validDecending() {
        let firstValue: Int? = 5
        let secondValue: Int? = 3
        let expectedValue: Int? = 5
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_same() {
        let firstValue: Int? = 2
        let secondValue: Int? = 2
        let expectedValue: Int? = 2
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_allNil() {
        let firstValue: Int? = nil
        let secondValue: Int? = nil
        let expectedValue: Int? = nil
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_oneNil() {
        let firstValue: Int? = nil
        let secondValue: Int? = 3
        let expectedValue: Int? = 3
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validFloat() {
        let firstValue: Float? = 1
        let secondValue: Float? = 1.3
        let expectedValue: Float? = 1.3
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validSomeNegatives() {
        let firstValue: Int? = 1
        let secondValue: Int? = -3
        let expectedValue: Int? = 1
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validNegatives() {
        let firstValue: Int? = -1
        let secondValue: Int? = -3
        let expectedValue: Int? = -1
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validNegativesWithZero() {
        let firstValue: Int? = 0
        let secondValue: Int? = -3
        let expectedValue: Int? = 0
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validZeros() {
        let firstValue: Int? = 0
        let secondValue: Int? = 0
        let expectedValue: Int? = 0
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    func testTwoValue_validBounds() {
        let firstValue: Int? = Int.max
        let secondValue: Int? = Int.min
        let expectedValue: Int? = Int.max
        XCTAssert(max(firstValue,secondValue) == expectedValue)
    }
    
    // MARK : Three value
    
    func testThreeValue_valid() {
        let firstValue: Int? = 1
        let secondValue: Int? = 2
        let thirdValue: Int? = 3
        let expectedValue: Int? = 3
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_twoSame() {
        let firstValue: Int? = 1
        let secondValue: Int? = 2
        let thirdValue: Int? = 2
        let expectedValue: Int? = 2
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_same() {
        let firstValue: Int? = 2
        let secondValue: Int? = 2
        let thirdValue: Int? = 2
        let expectedValue: Int? = 2
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_allNil() {
        let firstValue: Int? = nil
        let secondValue: Int? = nil
        let thirdValue: Int? = nil
        let expectedValue: Int? = nil
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_twoValid() {
        let firstValue: Int? = nil
        let secondValue: Int? = 2
        let thirdValue: Int? = 3
        let expectedValue: Int? = 3
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_oneValid() {
        let firstValue: Int? = 1
        let secondValue: Int? = nil
        let thirdValue: Int? = nil
        let expectedValue: Int? = 1
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_validFloat() {
        let firstValue: Float? = 1.2
        let secondValue: Float? = 1
        let thirdValue: Float? = 0.8
        let expectedValue: Float? = 1.2
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_validSomeNegatives() {
        let firstValue: Int? = 1
        let secondValue: Int? = 2
        let thirdValue: Int? = -3
        let expectedValue: Int? = 2
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_validNegatives() {
        let firstValue: Int? = -1
        let secondValue: Int? = -2
        let thirdValue: Int? = -3
        let expectedValue: Int? = -1
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    func testThreeValue_validNegativesWithZero() {
        let firstValue: Int? = -1
        let secondValue: Int? = 0
        let thirdValue: Int? = -3
        let expectedValue: Int? = 0
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_validZeros() {
        let firstValue: Int? = 0
        let secondValue: Int? = 0
        let thirdValue: Int? = 0
        let expectedValue: Int? = 0
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
    
    func testThreeValue_validBounds() {
        let firstValue: Int? = Int.max
        let secondValue: Int? = 2
        let thirdValue: Int? = Int.min
        let expectedValue: Int? = Int.max
        XCTAssert(max(firstValue, secondValue, thirdValue) == expectedValue)
    }
}