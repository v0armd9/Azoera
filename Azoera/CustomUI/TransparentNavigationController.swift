//
//  TransparentNavigationController.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//
import UIKit

class TransparentNavigationController: UINavigationController {
  // MARK: - Properties
  override var preferredStatusBarStyle: UIStatusBarStyle { // Sets the status bar style to be light
    return .lightContent
  }
  
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  
  // MARK: - Setup
  func setupViews() {
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.shadowImage = UIImage()
    navigationBar.isTranslucent = true
    view.backgroundColor = .clear
  }
}
