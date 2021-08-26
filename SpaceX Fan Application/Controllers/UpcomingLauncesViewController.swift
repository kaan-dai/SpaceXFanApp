//
//  UpcomingLauncesViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 16.08.2021.
//

import UIKit

class UpcomingLauncesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Upcomin1(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming1", sender: self)
    }
    
    @IBAction func Upcoming2(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming2", sender: self)
    }
    
    @IBAction func PolarButton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming3", sender: self)
    }
    @IBAction func Star29Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming4", sender: self)
    }
    @IBAction func Star30Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming5", sender: self)
    }
    @IBAction func Star31Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming6", sender: self)
    }
    @IBAction func InsperationButton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming8", sender: self)
    }
    @IBAction func Crew3Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming9", sender: self)
    }
    @IBAction func USSF44Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming10", sender: self)
    }
    @IBAction func Sarah1Buttton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming11", sender: self)
    }
    @IBAction func DARTButton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming12", sender: self)
    }
    @IBAction func Turksat5BButton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming13", sender: self)
    }
    @IBAction func NROL87Button(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming7", sender: self)
    }
    @IBAction func WorldButton(_ sender: UIButton) {
        performSegue(withIdentifier: "upcoming14", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
