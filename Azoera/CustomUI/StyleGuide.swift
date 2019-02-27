//
//  StyleGuide.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

extension UIColor {
  static let greenAccent = UIColor(named: "greenAccent")!
  static let spaceGray = UIColor(named: "spaceGray")!
  static let borderHighlightGray = UIColor(named: "boderHighlight")!
  static let subltleTextColor = UIColor(named: "subtleText")!
  static let mainTextColor = UIColor(named: "mainText")
}

extension UIView {
  func addSmallCornerRadius() {
    self.layer.cornerRadius = 4
  }
  
  func addLargeCornerRadius() {
    self.layer.cornerRadius = 10
  }
  
  func addDropShadow() {
    self.layer.shadowOffset = CGSize(width: 0, height: 6)
    self.layer.shadowRadius = 30
    self.layer.shadowOpacity = 0.5
  }
  
  func addAccentBorder() {
    self.layer.borderWidth = 1
    self.layer.borderColor = UIColor.borderHighlightGray.cgColor
  }
}
