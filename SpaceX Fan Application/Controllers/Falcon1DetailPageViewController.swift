//
//  Falcon1DetailPageViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 24.08.2021.
//

import UIKit

class Falcon1DetailPageViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var stagesLabel: UILabel!
    @IBOutlet weak var boostersLabel: UILabel!
    @IBOutlet weak var costperlaunchLabel: UILabel!
    @IBOutlet weak var succesrateLabel: UILabel!
    @IBOutlet weak var firstFlightLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var wikipediaLabel: UILabel!
    @IBOutlet weak var descriptLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    var buttonTappedCount : Int = 0
    @IBAction func favoriteButton(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name: Notification.Name("myBtnTapped2"), object: nil)
        buttonTappedCount += 1
        if buttonTappedCount % 2 == 0{
                favoriteButton.title = "Favorite"
            } else {
                favoriteButton.title = "Unfavorite"
            }
        

        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rocketURL = "https://api.spacexdata.com/v4/rockets/"
        
        func fetchRocket(){
            let urlString = "\(rocketURL)5e9d0d95eda69955f709d1eb"
            performRequest(urlString: urlString)
        }
        func performRequest(urlString : String){
            if let url = URL(string: urlString){
                let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                    print(error!)
                        return
                }
                    if let safeData = data {
                      parseJSON(rocketData: safeData)
                    }
                    
                }
                task.resume()
            }
        }
        
        func parseJSON(rocketData : Data){
            let decoder = JSONDecoder()
            do {
               let decodedData =   try decoder.decode(RocketData.self, from: rocketData)
                DispatchQueue.main.async {
                    self.nameLabel.text = "Name: \(decodedData.name)"
                    self.typeLabel.text = "Type: \(decodedData.type)"
                    self.activeLabel.text = "Active: \(String(decodedData.active))"
                    self.stagesLabel.text = "Stages: \(String(decodedData.stages))"
                    self.boostersLabel.text = "Boosters: \(String(decodedData.boosters))"
                    self.costperlaunchLabel.text = "Cost per Launch: \(String(decodedData.cost_per_launch))"
                    self.succesrateLabel.text = "Success Rate Percentage: \(String(decodedData.success_rate_pct))"
                    self.firstFlightLabel.text = "First Flight: \(decodedData.first_flight)"
                    self.companyLabel.text = "Company: \(decodedData.company)"
                    self.countryLabel.text = "Country: \(decodedData.country)"
                    self.wikipediaLabel.text = "Wikipedia: \(decodedData.wikipedia)"
                    self.descriptLabel.text = "Desciription: \(decodedData.description)"                    
                }
                
            } catch {
                print(error.localizedDescription)
            }
        
        // Do any additional setup after loading the view.
        }
        fetchRocket()
    }

}
