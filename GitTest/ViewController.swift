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
    @IBOutlet weak var imageViewJawn: UIImageView!
    
    var points = 0.0
    var power = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update(){
        if points != 1 {
            pointsYall.text = "\(points) points"
        } else {
            pointsYall.text = "\(points) point"
        }
        powerLabel.text = "Power = \(power)"
        
        if Int(points) % 2 == 0{
            imageViewJawn.image = #imageLiteral(resourceName: "newAstley")
            pointsYall.textColor = UIColor.white
        } else if Int(points) % 2 == 1{
            imageViewJawn.image = #imageLiteral(resourceName: "oldAstley")
        }

    }

    @IBAction func buttonPress(_ sender: UIButton) {
        points += power
        update()
    }
    
    @IBAction func powerIncrease10(_ sender: Any) {
        if points >= 10{
            points -= 10
            power += 5
            update()

        }
    }
    @IBAction func powerIncrease100(_ sender: Any) {
        if points >= 100{
            points -= 100
            power += 50
            update()

        }
    }
    @IBAction func powerIncrease1000(_ sender: Any) {
        if points >= 1000{
            points -= 1000
            power += 500
            update()

        }
    }
    
}

