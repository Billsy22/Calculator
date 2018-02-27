//
//  MainViewController.swift
//  Calculator
//
//  Created by Taylor Bills on 2/26/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextViewDelegate {
    
    // MARK: -  Properties
    var argumentOne = "\(0)"
    
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
        display(number: 2)
    }
    @IBAction func threeButtonTapped(_ sender: Any) {
        display(number: 3)
    }
    @IBAction func fourButtonTapped(_ sender: Any) {
        display(number: 4)
    }
    @IBAction func fiveButtonTapped(_ sender: Any) {
        display(number: 5)
    }
    @IBAction func sixButtonTapped(_ sender: Any) {
        display(number: 6)
    }
    @IBAction func sevenButtonTapped(_ sender: Any) {
        display(number: 7)
    }
    @IBAction func eightButtonTapped(_ sender: Any) {
        display(number: 8)
    }
    @IBAction func nineButtonTapped(_ sender: Any) {
        display(number: 9)
    }
    @IBAction func zeroButtonTapped(_ sender: Any) {
        display(number: 0)
    }
    @IBAction func decimalAndFractionButtonTapped(_ sender: Any) {
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
        guard let last = argumentOne.last else { return }
        guard let index = argumentOne.index(of: last) else { return }
        argumentOne.remove(at: index)
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
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(textView.text.count) > 10 && range.length == 0 {
            return false
        }
        return true
    }
    
    // Set the initial view
    func setViews() {
        
        variableLabel.text = "\(argumentOne)"
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
        if argumentOne.count < 9 {
            if argumentOne == "\(0)" {
                argumentOne = "\(number)"
            } else {
                argumentOne.append("\(number)")
            }
        } else {
            oneButton.isEnabled = false
            twoButton.isEnabled = false
            threeButton.isEnabled = false
            fourButton.isEnabled = false
            fiveButton.isEnabled = false
            sixButton.isEnabled = false
            sevenButton.isEnabled = false
            eightButton.isEnabled = false
            nineButton.isEnabled = false
            zeroButton.isEnabled = false
        }
    }
}


