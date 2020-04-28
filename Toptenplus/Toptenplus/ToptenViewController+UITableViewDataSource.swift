//
//  ToptenViewController+UITableViewDataSource.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

extension ToptenViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    let item = toptenResults.remove(at: sourceIndexPath.row)
    toptenResults.insert(item, at: destinationIndexPath.row)
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return toptenResults.count
  }
}
