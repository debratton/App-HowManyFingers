//
//  ViewController.swift
//  HowManyFingers
//
//  Created by David E Bratton on 10/19/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessText: UITextField!
    @IBOutlet weak var answerText: UILabel!
    @IBOutlet weak var guessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guessButton.isEnabled = false
    }
    
    @IBAction func guessTextChanged(_ sender: UITextField) {
        if sender.text != "" {
            guessButton.isEnabled = true
        } else {
            guessButton.isEnabled = false
        }
    }
    
    @IBAction func guessButtonPressed(_ sender: Any) {
        let guessNumber = Int.random(in: 0 ... 10)
        if let number = guessText.text {
            if let convertedNumber = Int(number) {
                if convertedNumber == guessNumber {
                    answerText.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
                    answerText.text = "That is Correct!!"
                } else {
                    answerText.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
                    answerText.text = "You didn't guess the correct number: \(guessNumber)"
                }
            }
        }
        guessButton.isEnabled = false
        guessText.text = ""
    }
}

