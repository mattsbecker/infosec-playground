//
//  InfosecPlaygroundTests.swift
//  InfosecPlaygroundTests
//
//  Created by Matthew Becker on 11/14/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import XCTest
@testable import InfosecPlayground

class InfosecPlaygroundTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. Called before the invocation of each test method in the class.
    }
  
    override func tearDown() {
        // Put teardown code here. Called after the invocation of each test method in the class.
        super.tearDown()
    }
  
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
  
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
  
    func testContestControllerIsSingleton() {
        // Test to ensure the
        let contestController = ContestController.shared
        let anotherContestController = ContestController.shared
        XCTAssertEqual(contestController, anotherContestController)
    }
}
