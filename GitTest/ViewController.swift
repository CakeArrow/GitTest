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
    
    var points = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        points += 1
        if points != 1 {
            pointsYall.text = "\(points) points"
        } else {
            pointsYall.text = "\(points) point"
        }
    }

}

