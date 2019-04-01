//
//  StyleGuide.swift
//  TestAzoera
//
//  Created by DevMountain on 3/22/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

extension UIView {
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = UIColor.borderHighlightGray) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func rotate(by radians: CGFloat = (-CGFloat.pi/2)) {
        self.transform = CGAffineTransform(rotationAngle: radians)
    }
}

struct FontNames {
    static let latoBold = "Lato-Bold"
    static let latoRegular = "Lato-Regular"
    static let latoLight = "Lato-Light"
}

extension UIColor {
    static let greenAccent = UIColor(named: "greenAccent")!
    static let spaceGray = UIColor(named: "spaceGray")!
    static let borderHighlightGray = UIColor(named: "boderHighlight")!
    static let subltleTextColor = UIColor(named: "subtleText")!
    static let mainTextColor = UIColor(named: "mainText")!
    static let blackOverlay = UIColor(named: "blackOverlay")!
}
