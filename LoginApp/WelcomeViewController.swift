//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anton Boev on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserNameLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "👻"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        welcomeUserNameLabel.text = loginVC.userName
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
        
    }
}
