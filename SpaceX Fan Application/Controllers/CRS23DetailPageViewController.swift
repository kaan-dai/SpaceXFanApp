//
//  CRS20DetailPageViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 24.08.2021.
//

import UIKit

class CRS23DetailPageViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fligtNumberLabel: UILabel!
    @IBOutlet weak var dateUTCLabel: UILabel!
    @IBOutlet weak var dataUnixLabel: UILabel!
    @IBOutlet weak var dateLocalLabel: UILabel!
    @IBOutlet weak var datePrecisionLabel: UILabel!
    @IBOutlet weak var upComingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let launchURL = "https://api.spacexdata.com/v4/launches/"
        
        func fetchRocket(){
            let urlString = "\(launchURL)5fe3b11eb3467846b324216c"
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
               let decodedData =   try decoder.decode(LaunchData.self, from: rocketData)
                DispatchQueue.main.async {
                    self.nameLabel.text = "Name: \(decodedData.name)"
                    self.fligtNumberLabel.text = "Flight Number: \(String(decodedData.flight_number))"
                    self.dateUTCLabel.text = "DataUTC: \(decodedData.date_utc)"
                    self.dataUnixLabel.text = "Date Unix: \(String(decodedData.date_unix))"
                    self.dateLocalLabel.text = "Date Local: \(decodedData.date_local)"
                    self.datePrecisionLabel.text = "Date Precision: \(decodedData.date_precision)"
                    self.upComingLabel.text = "Upcoming: \(String(decodedData.upcoming))"
                    
                }
                
            } catch {
                print(error)
            }
        
        // Do any additional setup after loading the view.
        }
        fetchRocket()
    }
}
