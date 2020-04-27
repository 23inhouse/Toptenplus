//
//  ViewController.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

class ToptenViewController: UIViewController {
  let toptenResults = [
    "Black Panther (2018)",
    "Avengers: Endgame (2019)",
    "Us (2019)",
    "Toy Story 4 (2019)",
    "Lady Bird (2017)",
    "Mission: Impossible - Fallout (2018)",
    "The Wizard of Oz (1939)",
    "The Irishman (2019)",
    "Citizen Kane (1941)",
    "BlacKkKlansman (2018)",
    "The Cabinet of Dr. Caligari (Das Cabinet des Dr. Caligari) (1920)",
    "Get Out (2017)",
  ]

  let reuseIdentifier = "toptencell"

  lazy private var toptenItemsView = ToptenItemsView(reuseIdentifier: reuseIdentifier)

  override func viewDidLoad() {
    super.viewDidLoad()

    setupViews()
    setupConstraints()
  }
}

private extension ToptenViewController {
  func setupConstraints() {
    toptenItemsView.constrain(to: view.safeAreaLayoutGuide)
  }

  func setupViews() {
    view.backgroundColor = .white
    view.addSubview(toptenItemsView)

    toptenItemsView.dataSource = self
    toptenItemsView.delegate = self
  }
}
