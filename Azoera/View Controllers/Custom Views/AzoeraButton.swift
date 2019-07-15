//
//  AzoeraButton.swift
//  Azoera
//
//  Created by Darin Marcus Armstrong on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func updateFont(to fontName: String) {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: fontName, size: size)
    }
    
    func setUpUI() {
        updateFont(to: FontNames.latoRegular)
        self.backgroundColor = .azoeraGreen
        self.setTitleColor(.mainTextColor, for: .normal)
        self.addCornerRadius(8)
    }
    
}
