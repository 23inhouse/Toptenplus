//
//  UITestExtensions.swift
//  ToptenplusUITests
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import XCTest

extension XCTestCase {
  @discardableResult
  func XCTAssertText(_ type: String, with label: String, file: StaticString = #file, line: UInt = #line) -> XCUIElement {
    let staticTextElement = XCUIApplication().staticTexts[label].firstMatch

    let existenceErrorMessage = "Can't find [\(type)] with [\(label)]"
    XCTAssertTrue(staticTextElement.exists, existenceErrorMessage, file: file, line: line)
    let labelErrorMessage = "Wrong content in [\(type)]\n\nExpected: [\(label)]\n\nFound: [\(staticTextElement.label)]"
    XCTAssertEqual(staticTextElement.label, label, labelErrorMessage, file: file, line: line)

    return staticTextElement
  }
}
