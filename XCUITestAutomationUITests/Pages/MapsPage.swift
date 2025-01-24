//
//  MapsPage.swift
//  XCUITestAutomation
//
//  Created by Neiger Serrano on 24/1/25.
//


import XCTest

class MapsPage: BasePage {
    
    override var rootElement: XCUIElement {
        //return app.otherElements["mapView"]
        return app.searchFields["MapsSearchTextField"]
    }
    
    var searchField: XCUIElement {
        return app.searchFields["MapsSearchTextField"]
    }
    
    var searchButton: XCUIElement {
        return app.buttons["searchButton"]
    }
    
    func searchForLocation(_ location: String) {
        searchField.tap()
        searchField.typeText(location)
        //searchButton.tap()
    }
    
    func verifyLocationExists(_ locationName: String) -> Bool {
        let locationPin = app.otherElements[locationName]
        return locationPin.exists
    }
}
