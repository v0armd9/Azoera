//
//  LatoLightLabel.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class LatoLightLabel: AzoeraLabel {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    updateFontTo(fontName: FontNames.latoLight)
    self.textColor = UIColor.subltleTextColor
  }
  
}
