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
      NSAttributedString(string: currentPlaceholderText ?? "", attributes: [
        NSAttributedString.Key.foregroundColor: UIColor.subltleTextColor,
        NSAttributedString.Key.font: UIFont(name: FontNames.latoLight, size: 16)!
        ])
  }
  
  func setUpUI(){
    self.updatePlaceholderColor()
    self.addCornerRadius(10)
    self.backgroundColor = .blackOverlay
    self.layer.masksToBounds = true
    self.textColor = UIColor.mainTextColor
    self.tintColor = UIColor.mainTextColor
    updateFontTo(fontName: FontNames.latoRegular)
    self.addAccentBorder()
  }
  
  func updateFontTo(fontName: String){
    guard let size = self.font?.pointSize else { return }
    self.font = UIFont(name: fontName, size: size)!
  }
}

