//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text!) else {
            fatalError("----- can not convert displayLabel.text to a Double")
        }
        if let calMethod = sender.currentTitle {
            if calMethod == "+/-" {
                displayLabel.text = String(number * -1)
            }
            if calMethod == "%" {
                displayLabel.text = String(number / 100)
            }
            if calMethod == "AC" {
                displayLabel.text = "0.0"
            }
        }
        
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
//        var displayValue: [String]
        //What should happen when a number is entered into the keypad
        if let numValue: String =  sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text! = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text! += numValue
            }
            
        }
    }

}

