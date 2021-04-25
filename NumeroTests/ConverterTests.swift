//
//  ConverterTests.swift
//  NumeroTests
//
//  Created by 60080252 on 2021/04/19.
//  Copyright © 2021 Facebook. All rights reserved.
//

import XCTest
@testable import Numero

class ConverterTests: XCTestCase {
    let converter = Converter()
    
    // 테스트 함수가 실행되기 전에 항상 실행 됨
    // 초기화 작업
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    // 테스트 함수가 실행이 끝난 후 항상 실행 됨
    // 정리 작업
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testConversionForOne() {
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive() {
        let result = converter.convert(5)
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    func testConversionForSix() {
        let result = converter.convert(6)
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }
    
    func testConversionForTen() {
        let result = converter.convert(10)
        XCTAssertEqual(result, "X", "Conversion for 10 is incorrect")
    }
    
    func testConversionForTwenty() {
        let result = converter.convert(20)
        XCTAssertEqual(result, "XX", "Conversion for 20 is incorrect")
    }
    
    // 특별한 케이스 - 시작
    func testConversionForFour() {
        let result = converter.convert(4)
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    
    func testConversionForNine() {
        let result = converter.convert(9)
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    
    func testConversionForZero() {
        let result = converter.convert(0)
        XCTAssertEqual(result, "", "Conversion for 0 is incorrect")
    }
    // 특별한 케이스 - 종료
    
    func testConversionFor3999() {
        let result = converter.convert(3999)
        XCTAssertEqual(result, "MMMCMXCIX", "Conversion for 3999 is incorrect")
    }
}
