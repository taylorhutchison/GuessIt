//
//  ViewController.swift
//  GuessIt
//
//  Created by Taylor Hutchison on 2/21/16.
//  Copyright © 2016 STH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageToPlayer: UILabel!
    
    @IBOutlet weak var guessRangeLabel: UILabel!
    
    @IBAction func guessInput(sender: AnyObject) {
        //let x = sender as! UITextField
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

