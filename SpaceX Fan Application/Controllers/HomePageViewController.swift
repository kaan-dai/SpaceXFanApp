//
//  HomePageViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 16.08.2021.
//

import UIKit

class HomePageViewController : UIViewController{
    @IBOutlet weak var rocketsButton: UIButton!
  
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var upcomingLaunchesButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rocketsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "homePageToRockets", sender: self)
        
    }
   
   
    @IBAction func favoriteButton(_ sender: UIButton) {
        performSegue(withIdentifier: "fovariteToLogin", sender: self)
    }
    @IBAction func upcomingLaunchesButtıon(_ sender: UIButton) {
        performSegue(withIdentifier: "homePageToLaunches", sender: self)

    }
}
