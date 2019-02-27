//
//  AzoeraLabel.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraLabel: UILabel {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    self.updateFontTo(fontName: FontNames.latoRegular)
  }
  
  func updateFontTo(fontName: String){
    let size = self.font.pointSize
    self.font = UIFont(name: fontName, size: size)!
  }
}
