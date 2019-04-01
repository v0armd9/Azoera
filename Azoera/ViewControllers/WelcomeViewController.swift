//
//  ViewController.swift
//  TestAzoera
//
//  Created by DevMountain on 3/14/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailTextFiled: AzoeraTextField!
    @IBOutlet weak var signInButton: AzoeraButton!
    @IBOutlet weak var confirmPasswordTextField: AzoeraTextField!
    @IBOutlet weak var passwordTextField: AzoeraTextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    func setUpUI(){
        signUpButton.rotate()
        loginButton.rotate()
        self.view.backgroundColor = .spaceGray
        loginButton.setTitleColor(.subltleTextColor, for: .normal)
        signUpButton.setTitleColor(.mainTextColor, for: .normal)
        faqButton.setTitleColor(.greenAccent, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
    }
    
    @IBAction func loginToggleButtonTapped(_ sender: Any) {
        toggleToLogIn()
        
    }
    
    @IBAction func signUpToggleButtonTapped(_ sender: Any) {
        toggleToSignUp()
    }
    
    func toggleToLogIn(){
        UIView.animate(withDuration: 0.2) {
            self.loginButton.tintColor = UIColor.mainTextColor
            self.signUpButton.tintColor = UIColor.subltleTextColor
            self.signInButton.setTitle("Log me in", for: .normal)
            self.confirmPasswordTextField.isHidden = true
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
        }
    }
    
    func toggleToSignUp() {
        UIView.animate(withDuration: 0.2) {
            self.loginButton.tintColor = UIColor.subltleTextColor
            self.signUpButton.setTitleColor(UIColor.mainTextColor, for: .normal)
            self.signInButton.setTitle("Sign me up", for: .normal)
            self.confirmPasswordTextField.isHidden = false
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
        }
    }
    
}
