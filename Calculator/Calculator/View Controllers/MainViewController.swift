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
    var numberOnScreen: Double = 0
    var storedNumber: Double = 0
    var mathFunction = false
    var operation = 0
    
    // MARK: -  Outlets
    
    @IBOutlet weak var variableLabel: UILabel!
    @IBOutlet weak var storedLabel: UILabel!
    @IBOutlet var allButtons: [UIButton]!
    
    // MARK: -  Actions
    
    @IBAction func numbersTapped(_ sender: UIButton) {
        if variableLabel.text != "0" {
            if mathFunction != true {
                variableLabel.text = variableLabel.text! + "\(sender.tag)"
                numberOnScreen = Double(variableLabel.text!)!
            } else {
                variableLabel.text = variableLabel.text! + "\(sender.tag)"
                numberOnScreen = Double(variableLabel.text!)!
                mathFunction = false
            }
        } else {
            if mathFunction != true {
                variableLabel.text = "\(sender.tag)"
                numberOnScreen = Double(variableLabel.text!)!
            } else {
                variableLabel.text = "\(sender.tag)"
                numberOnScreen = Double(variableLabel.text!)!
                mathFunction = false
            }
        }
    }
    
    @IBAction func mathButtons(_ sender: UIButton) {
        if variableLabel.text != "0" && sender.tag != 11 && sender.tag != 16 {
            
            if sender.tag == 12 {
                if storedNumber != 0 {
                    storedNumber += numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                } else {
                    storedNumber = numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                }
            }
            
            if sender.tag == 13 {
                if storedNumber != 0 {
                    storedNumber -= numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                } else {
                    storedNumber = numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                }
            }
            
            if sender.tag == 14 {
                if storedNumber != 0 {
                    storedNumber *= numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                } else {
                    storedNumber = numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                }
            }
            
            if sender.tag == 15 {
                if storedNumber != 0 {
                    storedNumber /= numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                } else {
                    storedNumber = numberOnScreen
                    storedLabel.text = "\(storedNumber)"
                }
            }
            
            variableLabel.text = "0"
            numberOnScreen = Double(variableLabel.text!)!
            operation = sender.tag
            mathFunction = true
            
        } else if sender.tag == 16 {
            if operation == 12 {
                variableLabel.text = "\(storedNumber + numberOnScreen)"
                storedLabel.text = ""
            } else if operation == 13 {
                variableLabel.text = "\(storedNumber - numberOnScreen)"
                storedLabel.text = ""
            } else if operation == 14 {
                variableLabel.text = "\(storedNumber * numberOnScreen)"
                storedLabel.text = ""
            } else if operation == 15 {
                variableLabel.text = "\(storedNumber / numberOnScreen)"
                storedLabel.text = ""
            }
        } else if sender.tag == 11 {
            variableLabel.text = ""
            storedLabel.text = ""
            storedNumber = 0
            numberOnScreen = 0
            operation = 0
        }
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
        
        variableLabel.text = ""
        storedLabel.text = ""
        
        circle(button: allButtons[0])
        circle(button: allButtons[1])
        circle(button: allButtons[2])
        circle(button: allButtons[3])
        circle(button: allButtons[4])
        circle(button: allButtons[5])
        circle(button: allButtons[6])
        circle(button: allButtons[7])
        circle(button: allButtons[8])
        circle(button: allButtons[9])
        
        roundedCorner(button: allButtons[10])
        roundedCorner(button: allButtons[11])
        roundedCorner(button: allButtons[12])
        roundedCorner(button: allButtons[13])
        roundedCorner(button: allButtons[14])
        roundedCorner(button: allButtons[15])
        roundedCorner(button: allButtons[16])
    }
}



