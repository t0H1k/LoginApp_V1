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
    
    private let correctUserName = "user11"
    private let correctPassword = "qwerty"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = correctUserName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButtonTapped() {
        guard userNameTF.text == correctUserName,
                passwordTF.text == correctPassword else {
            showAlert(
                title: "Ooops!",
                massage: "Wrong User Name or Password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }

    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", massage: "Your name is \(correctUserName)")
        : showAlert(title: "Ooops!", massage: "Your password is \(correctPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(title: String, massage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

