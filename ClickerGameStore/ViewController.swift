//
//  ViewController.swift
//  ClickerGameStore
//
//  Created by RYAN SPENCER on 9/25/24.
//

import UIKit

class AppData: UIViewController {
    static var points = 0
    static var mult = 1
}

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapRecognized(_ sender: UITapGestureRecognizer) {
        AppData.points += 1 * AppData.mult
        updateScore()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateScore()
    }
    
    func updateScore(){
        scoreLabel.text = "\(AppData.points) points"
    }
    
}

