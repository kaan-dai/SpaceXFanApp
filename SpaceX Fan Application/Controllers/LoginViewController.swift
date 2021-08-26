//
//  LoginViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 16.08.2021.
//

import UIKit
import Firebase
class LoginViewController : UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var tryRegisterButton: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginButton(_ sender: UIButton) {
        emailTextfield.endEditing(true)
        passwordTextfield.endEditing(true)
        
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
              
                if let e = error{
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "loginToFavoriteRockets", sender: self)
                }
            }
        }
    }
    @IBAction func tryRegisterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToRegister", sender: self)
    }
}
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextfield.endEditing(true)
        passwordTextfield.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if emailTextfield.text != "" {
            return true
        } else {
            emailTextfield.placeholder = "Type something"
            return false
        }
    }
}
