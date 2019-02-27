//
//  ViewController.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  @IBOutlet weak var azoreoIcon: UIImageView!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var confirmPasswordTextField: UITextField!
  @IBOutlet weak var signUpButton: UIButton!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var signUpToggleButton: UIButton!
  @IBOutlet weak var disclosureLabel: UILabel!
  @IBOutlet weak var disclosureButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    azoreoIcon.addAccentBorder()
    azoreoIcon.addSmallCornerRadius()
    signUpButton.addLargeCornerRadius()
  }
  
  @IBAction func signUpToggleButtonTapped(_ sender: Any) {
    toggleToSignUp()
  }
  
  @IBAction func logInToggleButtonTapped(_ sender: Any) {
    toggleToLogIn()
  }
  
  func toggleToLogIn(){
    UIView.animate(withDuration: 0.2) {
      self.loginButton.tintColor = UIColor.mainTextColor
      self.signUpToggleButton.tintColor = UIColor.subltleTextColor
      self.signUpButton.setTitle("Log me in", for: .normal)
      self.confirmPasswordTextField.isHidden = true
      self.disclosureLabel.text = "Forgot?"
      self.disclosureButton.setTitle("Remind", for: .normal)
    }
  }
  
  func toggleToSignUp() {
    UIView.animate(withDuration: 0.2) {
      self.loginButton.tintColor = UIColor.subltleTextColor
      self.signUpToggleButton.tintColor = UIColor.mainTextColor
      self.signUpButton.setTitle("Sign me up", for: .normal)
      self.confirmPasswordTextField.isHidden = false
      self.disclosureLabel.text = "Help?"
      self.disclosureButton.setTitle("FAQ", for: .normal)
    }
  }
}

