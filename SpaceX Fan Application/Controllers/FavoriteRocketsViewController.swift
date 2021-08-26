//
//  FavoriteRocketsViewController.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 17.08.2021.
//

import UIKit
import Firebase
class FavoriteRocketsViewController: UIViewController {
    @objc func myBtnTappedAction1(notification : Notification) {
        let button1 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button1.setTitle("Falcon9", for: .normal)
        self.view.addSubview(button1)
}
    @objc func myBtnTappedAction2(notification : Notification) {
        let button2 = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        button2.setTitle("Falcon9", for: .normal)
        self.view.addSubview(button2)
}
    @objc func myBtnTappedAction3(notification : Notification) {
        let button3 = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
        button3.setTitle("Falcon9", for: .normal)
        self.view.addSubview(button3)
}
    @objc func myBtnTappedAction4(notification : Notification) {
        let button4 = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        button4.setTitle("Falcon9", for: .normal)
        self.view.addSubview(button4)
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.myBtnTappedAction1(notification:)), name: Notification.Name("myBtnTapped1"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.myBtnTappedAction2(notification:)), name: Notification.Name("myBtnTapped2"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.myBtnTappedAction3(notification:)), name: Notification.Name("myBtnTapped3"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.myBtnTappedAction4(notification:)), name: Notification.Name("myBtnTapped4"), object: nil)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButton(_ sender: UIBarButtonItem) {
       do {
         try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
       } catch let signOutError as NSError {
         print("Error signing out: %@", signOutError)
       }
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
