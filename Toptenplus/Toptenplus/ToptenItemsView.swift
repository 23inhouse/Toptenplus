//
//  ToptenItemsView.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

class ToptenItemsView: UITableView {
  init(reuseIdentifier: String) {
    super.init(frame: .zero, style: .plain)

    register(ToptenItemViewCell.self, forCellReuseIdentifier: reuseIdentifier)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
