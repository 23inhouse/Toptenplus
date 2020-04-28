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

    XCTAssertText("title", with: "1. Black Panther (2018)")
    XCTAssertText("title", with: "2. Avengers: Endgame (2019)")
    XCTAssertText("title", with: "3. Us (2019)")
    XCTAssertText("title", with: "4. Toy Story 4 (2019)")
    XCTAssertText("title", with: "5. Lady Bird (2017)")
    XCTAssertText("title", with: "6. Mission: Impossible - Fallout (2018)")
    XCTAssertText("title", with: "7. The Wizard of Oz (1939)")
    XCTAssertText("title", with: "8. The Irishman (2019)")
    XCTAssertText("title", with: "9. Citizen Kane (1941)")
    XCTAssertText("title", with: "10. BlacKkKlansman (2018)")
    XCTAssertText("title", with: "11. The Cabinet of Dr. Caligari (Das Cabinet des Dr. Caligari) (1920)")
    XCTAssertText("title", with: "12. Get Out (2017)")
  }

  func testReorderingItems() {
    app.launch()

    let dragItem = XCTAssertText("title", with: "3. Us (2019)")
    let dropItem = XCTAssertText("title", with: "5. Lady Bird (2017)")

    dragItem.dragAndDropUsingCenterPos(forDuration: 0.5, thenDragTo: dropItem)

    XCTAssertText("title", with: "3. Toy Story 4 (2019)")
    XCTAssertText("title", with: "4. Us (2019)")
  }
}
