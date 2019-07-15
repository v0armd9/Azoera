//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Darin Marcus Armstrong on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var logInLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: AzoeraTextField!
    @IBOutlet weak var passwordTextField: AzoeraTextField!
    @IBOutlet weak var passwordConfirmTextField: AzoeraTextField!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var actionButton: AzoeraButton!
    @IBOutlet weak var vertButtonStack: UIStackView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUPUI()
        
    }
    func setUPUI() {
        signUpButton.rotate()
        logInButton.rotate()
        self.view.backgroundColor = UIColor.azoeraBackground
        logInButton.setTitleColor(.subltleTextColor, for: .normal)
        signUpButton.setTitleColor(.mainTextColor, for: .normal)
        faqButton.setTitleColor(.azoeraGreen, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
        vertButtonStack.spacing = 60
        logInLabel.textColor = .subltleTextColor
        welcomeLabel.textColor = .mainTextColor
        
    }
    
    @IBAction func logInToggleButtonTapped(_ sender: UIButton) {
        toggleLogin()
    }
    
    
    @IBAction func signUpToggleButtonTapped(_ sender: UIButton) {
        toggleToSignUp()
    }
    
    func toggleLogin() {
        UIView.animate(withDuration: 0.2) {
            self.logInButton.setTitleColor(.mainTextColor, for: .normal)
            self.signUpButton.setTitleColor(.subltleTextColor, for: .normal)
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
            self.actionButton.setTitle("Log me in", for: .normal)
            self.passwordConfirmTextField.isHidden = true
            //self.vertButtonStack.spacing = 60

            
        }
    }
    
    func toggleToSignUp() {
        UIView.animate(withDuration: 0.2) {
            self.logInButton.setTitleColor(.subltleTextColor, for: .normal)
            self.signUpButton.setTitleColor(.mainTextColor, for: .normal)
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
            self.actionButton.setTitle("Sign me up", for: .normal)
            self.passwordConfirmTextField.isHidden = false
            //self.vertButtonStack.spacing = 60

        }
        
    }
    
}
