//
//  MovieDataConverterTests.swift
//  MovieDataConverterTests
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import XCTest
@testable import Toptenplus

class MovieDataConverterTests: XCTestCase {
  func testConversion() {
    var movies: [String]!

    let exp = expectation(description: "Loading movies")

    API.fetchData("test-movies") { rawData in
      movies = MovieDataConverter(movieData: rawData).convert()
      exp.fulfill()
    }

    waitForExpectations(timeout: 3)

    XCTAssertEqual(movies[0], "First movie (2020)")
    XCTAssertEqual(movies[1], "Second movie (2020)")
    XCTAssertEqual(movies[2], "Last movie (2020)")
  }
}
