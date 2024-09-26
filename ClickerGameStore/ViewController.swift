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
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage.pumpkin
        imageView.isHidden = true
    }

    @IBAction func tapRecognized(_ sender: UITapGestureRecognizer) {
        AppData.points += 1 * AppData.mult
        updateScore()
        imageView.isHidden = false
        imageView.center = sender.location(in: view)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateScore()
    }
    
    func updateScore(){
        scoreLabel.text = "\(AppData.points) points"
    }
    
}

