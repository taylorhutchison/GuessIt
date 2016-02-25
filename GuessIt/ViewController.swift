//
//  ViewController.swift
//  GuessIt
//
//  Created by Taylor Hutchison on 2/21/16.
//  Copyright © 2016 STH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxGuessValue: Int = 0;
    var secretNumber: Int = 0;

    @IBOutlet weak var messageToPlayer: UILabel!
    
    @IBOutlet weak var guessRangeLabel: UILabel!
    
    @IBAction func guessInput(sender: AnyObject) {
        let x = sender as! UITextField
        messageToPlayer.text = x.text;
        print("it works")
    }
    
    @IBAction func StepperValueChanged(sender: UIStepper) {
        self.generateSecretNumber()
        maxGuessValue = Int(pow(Double(10),Double(sender.value)))
        self.setGuessLabel()
    }
    
    func setGuessLabel(){
        self.guessRangeLabel.text = "1 and " + String(maxGuessValue)
    }
    
    func generateSecretNumber(){
        self.secretNumber = Int(arc4random_uniform(UInt32(maxGuessValue)) + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.maxGuessValue = 10
        self.setGuessLabel()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

