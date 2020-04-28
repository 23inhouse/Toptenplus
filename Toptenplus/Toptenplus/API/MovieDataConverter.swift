//
//  MovieDataConverter.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 28/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import Foundation

struct MovieDataConverter {
  var movieData: MovieRawData

  func convert() -> [String] {
    let sorted = movieData.items.sorted(by: { $0.rank < $1.rank })
    return sorted.map { $0.name }
  }
}
