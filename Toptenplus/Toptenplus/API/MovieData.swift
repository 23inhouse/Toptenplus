//
//  MovieData.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 28/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import Foundation

struct MovieRawData: Decodable {
  var items: [MovieRawItem]
}

struct MovieRawItem: Decodable {
  var rank: Int
  var name: String
}

extension MovieRawData {
  static func decode(from json: Data) -> MovieRawData? {
    do {
      return try JSONDecoder().decode(MovieRawData.self, from: json)
    } catch {
      print("""
        Error: Couldn't decode the JSON string
        \(error.localizedDescription)
        """)
    }

    return nil
  }
}
