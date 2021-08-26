//
//  ViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 16.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var pressEnter: UIButton!
    @IBOutlet weak var titleOfApp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOfApp.text = ""
        var charIndex = 0.0
        let titleText = "SpaceX Fan🚀"
        
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) {(timer) in
                self.titleOfApp.text?.append(letter)
                
            }
            charIndex += 1
        }
        // Do any additional setup after loading the view.
    }
     
    @IBAction func pressEnter(_ sender: UIButton) {
        performSegue(withIdentifier: "welcomeToHomePage", sender: self)
        
    }
    
}

