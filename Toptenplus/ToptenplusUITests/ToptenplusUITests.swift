//
//  ToptenplusUITests.swift
//  ToptenplusUITests
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import XCTest

class ToptenplusUITests: XCTestCase {
  let app = XCUIApplication()

  override func setUp() {
    continueAfterFailure = false
    app.launchArguments = ["-firebaseTest"]
  }

  func testItemsAreShown() {
    app.launch()

    XCTAssertEqual(app.staticTexts.count, 12, "Wrong number of texts")

    XCTAssertText("title", with: "Black Panther (2018)")
    XCTAssertText("title", with: "Avengers: Endgame (2019)")
    XCTAssertText("title", with: "Us (2019)")
    XCTAssertText("title", with: "Toy Story 4 (2019)")
    XCTAssertText("title", with: "Lady Bird (2017)")
    XCTAssertText("title", with: "Mission: Impossible - Fallout (2018)")
    XCTAssertText("title", with: "The Wizard of Oz (1939)")
    XCTAssertText("title", with: "The Irishman (2019)")
    XCTAssertText("title", with: "Citizen Kane (1941)")
    XCTAssertText("title", with: "BlacKkKlansman (2018)")
    XCTAssertText("title", with: "The Cabinet of Dr. Caligari (Das Cabinet des Dr. Caligari) (1920)")
    XCTAssertText("title", with: "Get Out (2017)")
  }
}
