//
//  CodemineTests.swift
//  CodemineTests
//
//  Created by Chris Combs on 26/01/16.
//  Copyright © 2016 Nodes. All rights reserved.
//

import XCTest
@testable import Codemine

class CodemineTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: - StringExtensions tests
    
    func testTrueEmailAddress() {
		let validEmails = ["email@example.com", "firstname.lastname@example.com", "email@subdomain.example.com", "firstname+lastname@example.com", "email@123.123.123.123", "email@[123.123.123.123]", "1234567890@example.com", "email@example-one.com", "_______@example.com", "email@example.name", "email@example.museum", "email@example.co.jp", "firstname-lastname@example.com"]
		for emailAddress in validEmails {
			XCTAssertTrue(emailAddress.isValidEmailAddress(), "email \(emailAddress) was considered valid, but it is not")
		}
    }
    
    func testFalseEmailAddress() {
		let invalidEmails = ["plainaddress", "#@%^%#$@#$@#.com", "@example.com", "Joe Smith <email@example.com>", "email.example.com", "email@example@example.com", ".email@example.com", "email.@example.com", "email..email@example.com", "あいうえお@example.com", "email@example.com (Joe Smith)", "email@example", "email@-example.com", "email@example.web", "email@111.222.333.44444", "email@example..com", "Abc..123@example.com"]
		for emailAddress in invalidEmails {
			XCTAssertFalse(emailAddress.isValidEmailAddress(), "email \(emailAddress) was considered invalid, but it is not")
		}
    }
    
}
