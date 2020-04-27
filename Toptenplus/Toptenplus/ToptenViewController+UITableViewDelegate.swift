//
//  ToptenViewController+UITableViewDelegate.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

extension ToptenViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ToptenItemViewCell

    let topTenItem = toptenResults[indexPath.row]

    cell.titleText = topTenItem

    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
}