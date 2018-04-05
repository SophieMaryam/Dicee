//
//  ViewController.swift
//  Dicee
//
//  Created by Sophie van Wersch on 04/04/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Function generates random numbers between 0 - 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
    }
    
}

