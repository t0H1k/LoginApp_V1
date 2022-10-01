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
        setGradientBackground()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        welcomeUserNameLabel.text = loginVC.userName
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
        
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 012/255, green: 149/255, blue: 0/255, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255/255, green: 94/255, blue: 58/255, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
