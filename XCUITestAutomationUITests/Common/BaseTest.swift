//
//  BaseTest.swift
//  XCUITestAutomation
//
//  Created by Neiger Serrano on 24/1/25.
//


import XCTest

class BaseTest: XCTestCase {
    
    let app = XCUIApplication(bundleIdentifier: "com.apple.Maps")
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }
}