//
//  ViewController.swift
//  Dicee
//
//  Created by econfig on 10/11/17.
//  Copyright © 2017 Alberto Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDiceValue(randomValue1: randomDiceIndex(), randomValue2: randomDiceIndex())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceValue(randomValue1: randomDiceIndex(), randomValue2: randomDiceIndex())
    }
    
    func randomDiceIndex() -> Int {
        return Int(arc4random_uniform(6))
    }
    
    func changeDiceValue(randomValue1 : Int, randomValue2 : Int) {
        diceImageView1.image = UIImage(named: diceArray[randomValue1])
        diceImageView2.image = UIImage(named: diceArray[randomValue2])
    }
    
}

