//
//  ToptenItemViewCell.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

class ToptenItemViewCell: UITableViewCell {
  private let whitespaceSize: CGFloat = 10

  var titleText: String = "" {
    didSet {
      title.text = titleText
      title.accessibilityLabel = titleText
    }
  }

  private let title: UILabel = {
    let title = UILabel()
    title.numberOfLines = 2
    title.font = UIFont.preferredFont(forTextStyle: .title3)
    return title
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    selectionStyle = UITableViewCell.SelectionStyle.none
    separatorInset = UIEdgeInsets(top: 0, left: whitespaceSize, bottom: 0, right: 0)

    setupViews()
    setupConstraints()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension ToptenItemViewCell {
  func setupViews() {
    addSubview(title)
  }

  func setupConstraints() {
    title.constrain(to: self, margin: whitespaceSize)
  }
}
