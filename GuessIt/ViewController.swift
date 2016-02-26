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
    
    @IBOutlet weak var guessInput: UITextField!
    
    @IBAction func StepperValueChanged(sender: UIStepper) {
        self.maxGuessValue = Int(pow(Double(10),Double(sender.value)))
        self.generateSecretNumber()
        print(self.secretNumber)
        self.setGuessLabel()
    }
    @IBAction func enterGuess(sender: UIButton) {
        if(Int(self.guessInput.text!) == self.secretNumber){
            self.messageToPlayer.text = "You got it!";
        }
        else if (Int(self.guessInput.text!) > self.secretNumber){
            self.messageToPlayer.text = "Guess is too high";
        }
        else {
            self.messageToPlayer.text = "Guess is too low";
        }
    }
    
    func setGuessLabel(){
        self.guessRangeLabel.text = "1 and " + String(self.maxGuessValue)
    }
    
    func generateSecretNumber(){
        self.secretNumber = Int(arc4random_uniform(UInt32(self.maxGuessValue)) + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.maxGuessValue = 10
        self.generateSecretNumber()
        self.setGuessLabel()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

