//
//  CalculationController.swift
//  Calculator
//
//  Created by Taylor Bills on 2/26/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

class CalculationController {
    
    // MARK: -  Properties
    static let shared = CalculationController()
    
    // MARK: -  Calculations
    
    func add(_ argumentOne: Double, to argumentTwo: Double) -> Double {
        let result = argumentOne + argumentTwo
        return result
    }
    
    func subtract(_ argumentOne: Double, from argumentTwo: Double) -> Double {
        let result = argumentOne - argumentTwo
        return result
    }
    
    func productOf(_ argumentOne: Double, times argumentTwo: Double) -> Double {
        let result = argumentOne * argumentTwo
        return result
    }
    
    func quotientOf(_ argumentOne: Double, dividedBy argumentTwo: Double) -> Double {
        let result = argumentOne / argumentTwo
        return result
    }
}
