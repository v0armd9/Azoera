//
//  ArticleCollectionViewCell.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class ArticleCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var backgroundImageView: UIImageView!
  @IBOutlet weak var categoryBackgroundView: UIView!
  @IBOutlet weak var otherInfoLabel: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    otherInfoLabel.rotate(by: -CGFloat.pi)
  }
}
