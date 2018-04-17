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
    var diceArray : Array = [""]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        // Only triggered when view loads up
        super.viewDidLoad()
        
        diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        // Function generates random numbers between 0 - 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))

        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

