//
//  AzoeraTextField.swift
//  Azoera
//
//  Created by Darin Marcus Armstrong on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
        
    }
    
    func setUpUI() {
        self.overridePlaceholderColor()
        self.addCornerRadius(10)
        self.backgroundColor = .blackOverlay
        self.layer.masksToBounds = true
        self.textColor = .mainTextColor
        self.tintColor = .mainTextColor
        overrideFontStyle(with: FontNames.latoRegular)
        self.addBorder()
    }
    
    func overridePlaceholderColor() {
        let currentPlaceholderText = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholderText ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.subltleTextColor, NSAttributedString.Key.font : UIFont(name: FontNames.latoLight, size: 16)!])
    }
    
    func overrideFontStyle(with fontName: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: fontName, size: size)!
    }
    
    
}
