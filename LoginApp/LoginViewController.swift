//
//  ViewController.swift
//  LoginApp
//
//  Created by Anton Boev on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userName
    }
     
    // MARK: - IBAction
    @IBAction func logInButtonTapped() {
        if userNameTF.text == "user11" && passwordTF.text == "qwerty" {
        } else {
            showAlert(withTitle: "Ooops!", andMassage: "Wrong User Name or Password")
        }
    }

    @IBAction func forgotPasswordTapped() {
        showAlert(withTitle: "No problem", andMassage: "Your password is qwerty")
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(withTitle: "No problem", andMassage: "Your User Name is user11")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMassage massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        present(alert, animated: false)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in self.passwordTF.text = "" }))
    }
    
    // MARK: - UITouch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
}


