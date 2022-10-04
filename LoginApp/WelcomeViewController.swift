//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anton Boev on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUserNameLabel: UILabel!
    
    var userName = ""
    
    private let firstColor = UIColor(
        red: 200/255,
        green: 50/255,
        blue: 100/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 100/255,
        green: 180/255,
        blue: 250/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        welcomeUserNameLabel.text = "Welcome, \(userName)!"
    }
}

    
//MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
