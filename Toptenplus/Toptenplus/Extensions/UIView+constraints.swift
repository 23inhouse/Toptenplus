//
//  UIView+constraints.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

extension UIView {
  func constrain(to otherView: UIView, margin: CGFloat = 0) {
    translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      leadingAnchor.constraint(equalTo: otherView.leadingAnchor, constant: margin),
      trailingAnchor.constraint(equalTo: otherView.trailingAnchor, constant: -margin),
      topAnchor.constraint(equalTo: otherView.topAnchor, constant: margin),
      bottomAnchor.constraint(equalTo: otherView.bottomAnchor, constant: -margin),
      ])
  }

//  func constrain(to otherView: UIView, height: CGFloat) {
//    translatesAutoresizingMaskIntoConstraints = false
//    NSLayoutConstraint.activate([
//      leadingAnchor.constraint(equalTo: otherView.leadingAnchor),
//      trailingAnchor.constraint(equalTo: otherView.trailingAnchor),
//      heightAnchor.constraint(equalToConstant: height),
//      ])
//  }
//
  func constrain(to layoutGuide: UILayoutGuide) {
    translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
      trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor),
      topAnchor.constraint(equalTo: layoutGuide.topAnchor),
      bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor),
      ])
  }
}
