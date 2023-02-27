//
//  ViewController.swift
//  Calculator
//
//  Created by Toni Lozano Fernández on 13/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numString = sender.currentTitle {
//            if (displayLabel.text == "0") && (sender.currentTitle != ".") {
//                displayLabel.text = ""
//            }
            
            if isFinishedTypingNumber {
                displayLabel.text = sender.currentTitle
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numString
            }
        }
    }
    
}

