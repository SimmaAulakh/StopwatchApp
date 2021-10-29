//
//  MachineTestTests.swift
//  MachineTestTests
//
//  Created by Simranjeet Aulakh on 29/10/21.
//

import XCTest
@testable import MachineTest

class MachineTestTests: XCTestCase {
    
    var stopWatchVM: StopWatchVM!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stopWatchVM = StopWatchVM()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        stopWatchVM = nil
    }
    
    func testStopWatchTimer() {
        let counter = 1.0
       let value = stopWatchVM.timeFormat(counter)
        
        XCTAssertTrue(value == "00:00:01")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
