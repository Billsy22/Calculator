//
//  MainViewController.swift
//  Calculator
//
//  Created by Taylor Bills on 2/26/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: -  Properties
    var argumentOne = 0
    
    // MARK: -  Outlets
    
    @IBOutlet weak var variableLabel: UILabel!
    @IBOutlet weak var storedLabel: UILabel!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var decimalAndFractionButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var timesButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    // MARK: -  Actions
    
    @IBAction func oneButtonTapped(_ sender: Any) {
        display(number: 1)
    }
    @IBAction func twoButtonTapped(_ sender: Any) {
    }
    @IBAction func threeButtonTapped(_ sender: Any) {
    }
    @IBAction func fourButtonTapped(_ sender: Any) {
    }
    @IBAction func fiveButtonTapped(_ sender: Any) {
    }
    @IBAction func sixButtonTapped(_ sender: Any) {
    }
    @IBAction func sevenButtonTapped(_ sender: Any) {
    }
    @IBAction func eightButtonTapped(_ sender: Any) {
    }
    @IBAction func nineButtonTapped(_ sender: Any) {
    }
    @IBAction func zeroButtonTapped(_ sender: Any) {
    }
    @IBAction func decimalAndFractionButtonTapped(_ sender: Any) {
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    @IBAction func plusButtonTapped(_ sender: Any) {
    }
    @IBAction func minusButtonTapped(_ sender: Any) {
    }
    @IBAction func timesButtonTapped(_ sender: Any) {
    }
    @IBAction func divideButtonTapped(_ sender: Any) {
    }
    @IBAction func equalButtonTapped(_ sender: Any) {
    }
    
    
    
    // MARK: -  Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
}

// MARK: -  Extension: Edit Initial View
extension MainViewController {
    
    // Circle Buttons
    func circle(button: UIButton) {
        button.clipsToBounds = true
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
    }
    
    // Rounded Button corners
    func roundedCorner(button: UIButton) {
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
    }
    
    // Set the initial view
    func setViews() {
        variableLabel.text
        variableLabel.text = "\(0)"
        storedLabel.text = ""
        
        circle(button: oneButton)
        circle(button: twoButton)
        circle(button: threeButton)
        circle(button: fourButton)
        circle(button: fiveButton)
        circle(button: sixButton)
        circle(button: sevenButton)
        circle(button: eightButton)
        circle(button: nineButton)
        circle(button: zeroButton)
        
        roundedCorner(button: decimalAndFractionButton)
        roundedCorner(button: clearButton)
        roundedCorner(button: plusButton)
        roundedCorner(button: minusButton)
        roundedCorner(button: timesButton)
        roundedCorner(button: divideButton)
        roundedCorner(button: equalButton)
    }
}

// MARK: -  Extension: Button Helper Methods
extension MainViewController {
    
    // Number Buttons
    func display(number: Int) {
        if variableLabel.text <= 8 {
            if variableLabel.text == "0" {
                variableLabel.text = "\(number)"
            } else {
                variableLabel.text?.append("\(number)")
            }
        }
    }
}
