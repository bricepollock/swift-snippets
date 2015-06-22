//
//  UITestingExample_UI_Tests.swift
//  UITestingExample UI Tests
//
//  Created by Brice Pollock on 6/12/15.
//  Copyright © 2015 Brice Pollock. All rights reserved.
//

import Foundation
import XCTest

class UITestingExample_UI_Tests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDynamicButton() {
        let app = XCUIApplication()
        
        // recorded
        //        app.buttons["Press Me"].tap()
        //        app.buttons["I was pressed"].tap()
        
        // Validate the text
        let unselectedText = "Press Me"
        XCTAssert(app.buttons.elementAtIndex(0).label == unselectedText)
        app.buttons.elementAtIndex(0).tap()
        XCTAssert(app.buttons.elementAtIndex(0).label == "I was pressed")
        app.buttons.elementAtIndex(0).tap()
        XCTAssert(app.buttons.elementAtIndex(0).label == unselectedText)
    }
    
    func testAlert() {
        let app = XCUIApplication()
        app.tabBars.buttons["Second"].tap()
        app.buttons["Show Alert"].tap()
        
        // Tap on alert from UI Testing recording
//        app.alerts["Whoops!"].collectionViews.buttons["Okay"].tap()
        
        // Validate we are displaying correclty formatted alert
        XCTAssertEqual(app.alerts.count, 1)
        let alert = app.alerts.elementAtIndex(0)
        XCTAssert(alert.label == "Whoops!")
        XCTAssert(alert.collectionViews.buttons.count == 1)
        let button = alert.collectionViews.buttons.elementAtIndex(0)
        XCTAssert(button.label ==  "Okay")
        
        // Exit alert
        app.alerts.elementAtIndex(0).collectionViews.buttons.elementAtIndex(0).tap()
    }
    
    func testMixedState() {
        let app = XCUIApplication()
        app.tabBars.buttons["Second"].tap()
        app.buttons["Show Alert"].tap()
        // Leave the alert up.
        // If we ended the test now then the next test would have to deal with this state.
        
        // Clears out the application state
         XCUIApplication().launch()
        app.tabBars.buttons["Second"].tap()
        
    }
    
    func testSlider() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Present Modal"].tap()
        
        // unable to manipulate our slider, this limitation likely applies to any other drag-interaction element such as picker wheels
        let slider = app.sliders.element
        slider.swipeLeft() // does nothing
        //        slider.value = 0.8 // read only
        // app.sliders["36%"].tap() // record's attempt at manipulating the slider, fails
        
    }
    
    func testGesture() {
        let app = XCUIApplication()
        app.buttons["Present Modal"].tap()
        
        // Tapping anywhere on screen did not record correctly
        app.windows.childrenMatchingType(.Unknown).elementAtIndex(0).childrenMatchingType(.Unknown).elementAtIndex(0).tap()

        // Pinch Gestutre did not record correctly
        let element = app.childrenMatchingType(.Window).elementAtIndex(0).childrenMatchingType(.Unknown).elementAtIndex(0).childrenMatchingType(.Unknown).elementAtIndex(0)
        element.twoFingerTap()
        
        // No drag supported except for extremely limited case of moving to another object's frame: .pressForDuration(duration, thenDragToElement: object)
    }
    
}
