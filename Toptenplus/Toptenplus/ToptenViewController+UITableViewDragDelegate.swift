//
//  ToptenViewController+UITableViewDragDelegate.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 28/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

extension ToptenViewController: UITableViewDragDelegate {
  func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
    return [UIDragItem(itemProvider: NSItemProvider())]
  }
}
