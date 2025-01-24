//
//  BasePage.swift
//  XCUITestAutomation
//
//  Created by Neiger Serrano on 24/1/25.
//


import XCTest

class BasePage {
    typealias Completion = (() -> Void)?
    let app: XCUIApplication
    let log = Logger().log
    
    // Generic initializer which each page needs but do not need to be added on each page
    required init(app: XCUIApplication, timeout: TimeInterval = 10, completion: Completion = nil) {
        self.app = app
        log("waiting \(timeout)s for \(String(describing: self)) existence")
        XCTAssert(rootElement.waitForExistence(timeout: timeout),
                  "Screen \(String(describing: self)) waited, but not loaded")
        completion?()
    }
    
    // Generic validation screen load, like verifyLoads
    var rootElement: XCUIElement {
        fatalError("subclass should override rootElement")
    }

    // Local methods for calling on each Screen use
    
    // Button
    func myLocalBtnMethod(_ name: String) -> XCUIElement {
        return app.buttons[name]
    }
    
    // Secure Text Field
    func secureTxtField(_ name: String) -> XCUIElement {
        return app.secureTextFields[name]
    }

    // Other Text fields
    func generalTxtField(_ name: String) -> XCUIElement {
        return app.otherElements.textFields[name]
    }
    
    // Static Text fields
    func staticTxtField(_ name: String) -> XCUIElement {
        return app.staticTexts[name]
    }
    
    // Swipe Screen Up
    func swipeScreenUp(_ speed: XCUIGestureVelocity) {
        app.swipeUp(velocity: speed)
    }
    
    // Swipe Screen Down
    func swipeScreenDown(_ speed: XCUIGestureVelocity) {
        app.swipeDown(velocity: speed)
    }
}