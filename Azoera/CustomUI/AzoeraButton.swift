//
//  AzoeraButton.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    self.updateFontTo(fontName: FontNames.latoRegular)
    setUpUI()
  }
  
  func updateFontTo(fontName: String){
    guard let size = self.titleLabel?.font.pointSize else { return }
    self.titleLabel?.font = UIFont(name: fontName, size: size)!
  }
    
    func setUpUI() {
        self.backgroundColor = .greenAccent
        self.setTitleColor(UIColor.mainTextColor, for: .normal)
        self.addCornerRadius(8)
    }
  
}
