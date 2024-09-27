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
    static var cookie = false
    static var randomImages = false
}

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScore()
        imageView.image = UIImage.dot
        imageView.isHidden = true
    }

    @IBAction func tapRecognized(_ sender: UITapGestureRecognizer) {
        AppData.points += 1 * AppData.mult
        updateScore()
        if AppData.cookie{
            imageView.image = UIImage.cookie
        } else {
            if AppData.randomImages{
                let ran = Int.random(in: 1...3)
                if ran == 1{
                    imageView.image = UIImage.pumpkin
                } else if ran == 2{
                    imageView.image = UIImage.pumpkinmeme
                } else {
                    imageView.image = UIImage.ghost
                }
            }
        }
        imageView.isHidden = false
        imageView.center = sender.location(in: view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateScore()
    }
    
    func updateScore(){
        scoreLabel.text = "\(AppData.points)pts"
    }
    
}

