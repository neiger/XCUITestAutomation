//
//  MapsTests.swift
//  XCUITestAutomation
//
//  Created by Neiger Serrano on 24/1/25.
//


import XCTest

class MapsTests: BaseTest {
    
    var mapsPage: MapsPage!

    override func setUpWithError() throws {
        try super.setUpWithError()
        mapsPage = MapsPage(app: app)
    }

    func testSearchLocation() {
        mapsPage.searchForLocation("Central Park")
        
        let locationExists = mapsPage.verifyLocationExists("Central Park")
        XCTAssertTrue(locationExists, "Location not found on the map.")
    }
}
