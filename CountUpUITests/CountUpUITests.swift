//
//  CountUpUITests.swift
//  CountUpUITests
//
//  Created by 高橋 勲 on 2015/06/13.
//  Copyright © 2015年 高橋 勲. All rights reserved.
//

import Foundation
import XCTest

class CountUpUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        let staticText = app.staticTexts["testLabel"]
        let button = app.buttons["testButton"]

        XCTAssertTrue(staticText.label == "0")
        button.tap()
        button.tap()
        XCTAssertTrue(staticText.label == "2")
    }
    
}
