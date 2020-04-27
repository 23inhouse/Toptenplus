//
//  AppDelegate+gotoVC.swift
//  Toptenplus
//
//  Created by Benjamin Lewis on 27/4/20.
//  Copyright © 2020 Benjamin Lewis. All rights reserved.
//

import UIKit

extension AppDelegate {
  func gotoAppVC() {
    let appViewController = ToptenViewController()
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = appViewController
    window?.makeKeyAndVisible()
  }
}
