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
    var numberAfter = 0
    var numberBefore = 0
    var symbol: MathSymbol?
    
    enum MathSymbol {
        case add
        case subtract
        case multiply
        case divide
    }
    
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
        if numberBefore != 0 && numberAfter == 0 {
            numberAfter = 0
            variableLabel.text = "\(numberAfter)"
            numberBefore = 0
            storedLabel.text = ""
        } else if numberBefore != 0 && numberAfter != 0 {
            numberAfter = 0
            variableLabel.text = "\(numberAfter)"
        } else if numberBefore == 0 {
            numberAfter = 0
            variableLabel.text = "\(numberAfter)"
        }
    }
    @IBAction func plusButtonTapped(_ sender: Any) {
            symbol = .add
            doCalculation()
    }
    @IBAction func minusButtonTapped(_ sender: Any) {
        symbol = .subtract
        doCalculation()
    }
    @IBAction func timesButtonTapped(_ sender: Any) {
        symbol = .multiply
        doCalculation()
    }
    @IBAction func divideButtonTapped(_ sender: Any) {
        symbol = .divide
        doCalculation()
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
        
        variableLabel.text = "\(numberAfter)"
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
        guard let variableLabelText = variableLabel.text else { return }
        if variableLabelText.count < 9 {
            if numberAfter == 0 {
                numberAfter = number
            } else {
                numberAfter *= 10
                numberAfter += number
            }
        }
        variableLabel.text = "\(numberAfter)"
    }
    
    // Update our numbers
    func updateLabels() {
        numberAfter = 0
        storedLabel.text = "\(numberBefore)"
    }
    
    // Operator buttons
    func doCalculation() {
        if symbol == nil {
            return
        }
        
        switch symbol! {
        case .add:
            print("Add \(numberBefore) and \(numberAfter)")
            numberBefore += numberAfter
            updateLabels()
        case .subtract:
            print("Subtract \(numberBefore) from \(numberAfter)")
            numberBefore -= numberAfter
            updateLabels()
        case .multiply:
            print("Multiply \(numberBefore) by \(numberAfter)")
            numberBefore += numberAfter
            updateLabels()
        case .divide:
            print("Divide \(numberBefore) by \(numberAfter)")
            numberBefore /= numberAfter
            updateLabels()
        }
    }
}



