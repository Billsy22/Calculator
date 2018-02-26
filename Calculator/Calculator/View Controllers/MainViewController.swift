//
//  MainViewController.swift
//  Calculator
//
//  Created by Taylor Bills on 2/26/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: -  Outlets
    
    @IBOutlet weak var calculationTextView: UITextView!
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
    
    
    // MARK: -  Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController {
    
    // MARK: -  Edit Views
    
    func circle(button: UIButton) {
        button.clipsToBounds = true
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
    }
    
    func roundedCorner(button: UIButton) {
        button.clipsToBounds = true
        button.layer.cornerRadius = 0.15
    }
    
    func setViews() {
        calculationTextView.text = "\(0)"
        
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
        
        roundedCorner(button: equalButton)
    }
}
