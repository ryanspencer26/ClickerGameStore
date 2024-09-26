//
//  ShopViewController.swift
//  ClickerGameStore
//
//  Created by RYAN SPENCER on 9/26/24.
//

import UIKit

class ShopViewController: UIViewController {
    
    @IBOutlet weak var pointsLabel: UILabel!
    let alert = UIAlertController(title: "Insufficient Funds", message: "You need more points", preferredStyle: .alert)
    let button = UIAlertAction(title: "Ok", style: .default)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pointsLabel.text = "Points: \(AppData.points)"
    }
    
    
    @IBAction func mult2(_ sender: Any) {
        if AppData.points < 100{
            self.present(alert, animated: true)
        } else {
            AppData.points -= 100
            pointsLabel.text = "Points: \(AppData.points)"
            AppData.mult = 2
        }
    }
    
    @IBAction func mult3(_ sender: Any) {
        if AppData.points < 500{
            self.present(alert, animated: true)
        } else {
            AppData.points -= 500
            pointsLabel.text = "Points: \(AppData.points)"
            AppData.mult = 3
        }
    }
    
    @IBAction func mult5(_ sender: Any) {
        if AppData.points < 1000{
            self.present(alert, animated: true)
        } else {
            AppData.points -= 1000
            pointsLabel.text = "Points: \(AppData.points)"
            AppData.mult = 5
        }
    }
    
    @IBAction func randomImages(_ sender: Any) {
        if AppData.points < 5000{
            self.present(alert, animated: true)
        } else {
            AppData.points -= 5000
            pointsLabel.text = "Points: \(AppData.points)"
            AppData.randomImages = true
        }
    }
    
    @IBAction func cookie(_ sender: Any) {
        if AppData.points < 10000{
            self.present(alert, animated: true)
        } else {
            AppData.points -= 10000
            pointsLabel.text = "Points: \(AppData.points)"
            AppData.cookie = true
        }
    }
    
}
