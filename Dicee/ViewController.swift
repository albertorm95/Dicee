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
        changeDiceValue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceValue()
    }
    
    func randomDiceIndex() -> Int {
        return Int(arc4random_uniform(6))
    }
    
    func changeDiceValue() {
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex()])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex()])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceValue()
    }
    
}

