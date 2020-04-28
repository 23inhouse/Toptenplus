//
//  API.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 28/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import Foundation

struct API {
  static func fetchData(completion: @escaping (MovieRawData) -> Void) {
    guard let jsonPath = Bundle.main.path(forResource: "movies", ofType: "json") else {
      print("ERROR: could find json file")
      return
    }

    let url = URL(fileURLWithPath: jsonPath)

    do {
      let data = try Data(contentsOf: url)
      guard let rawData = MovieRawData.decode(from: data) else {
        print("Error: Couldn't decode data")
        return
      }

      completion(rawData)
    } catch {
      print("Error:", error.localizedDescription)
    }
  }
}
