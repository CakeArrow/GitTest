//
//  ViewController.swift
//  GitTest
//
//  Created by  on 11/6/17.
//  Copyright © 2017 HiCrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pointsYall: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    
    var points = 0.0
    var power = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        points += power
        if points != 1 {
            pointsYall.text = "\(points) points"
        } else {
            pointsYall.text = "\(points) point"
        }
    }
    
    @IBAction func powerIncrease10(_ sender: Any) {
        if points >= 10{
            points -= 10
            power *= 10
            powerLabel.text = "Power = \(power)"
        }
    }
    
}

