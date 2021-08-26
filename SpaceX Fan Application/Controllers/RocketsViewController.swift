//
//  SpaceXRocketsViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 16.08.2021.
//

import UIKit

class RocketsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Falcon9(_ sender: UIButton) {
        performSegue(withIdentifier: "Falcon9", sender: self)
    }
    
    @IBAction func Falcon1(_ sender: UIButton) {
        performSegue(withIdentifier: "Falcon1", sender: self)
    }
    
    @IBAction func FalconHeavy(_ sender: UIButton) {
        performSegue(withIdentifier: "FalconHeavy", sender: self)
    }
    @IBAction func Starship(_ sender: UIButton) {
        performSegue(withIdentifier: "Starship", sender: self)
    }
    
    
    
}
