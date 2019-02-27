//
//  AzoeraTextField.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraTextField: UITextField {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setUpUI()
  }
  
  func updatePlaceholderColor() {
    let currentPlaceholderText = self.placeholder
    self.attributedPlaceholder =
      NSAttributedString(string: currentPlaceholderText ?? "", attributes: [NSAttributedString.Key.foregroundColor: UIColor.subltleTextColor])
  }
  
  func setUpUI(){
    self.updatePlaceholderColor()
    self.addLargeCornerRadius()
    self.addAccentBorder()
    self.textColor = UIColor.mainTextColor
    self.tintColor = UIColor.mainTextColor
  }
}

