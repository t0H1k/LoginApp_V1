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
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "👻"
        setGradientBackground()
        welcomeUserNameLabel.text = userName
        
    }
    

    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
        
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 12/255, green: 100/255, blue: 30/255, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255/255, green: 50/255, blue: 10/255, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
