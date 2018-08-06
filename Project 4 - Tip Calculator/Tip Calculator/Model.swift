//
//  Model.swift
//  Tip Calculator
//
//  Created by Cameron Ingham on 8/5/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import Foundation

class Model {
    
    // MARK: - Properties
    var subtotalFromTextField = "0.00"
    var tipPercentFromSlider = 15

    // MARK: - Decimals for Calculation
    var subtotalAsDecimal: NSDecimalNumber {
        return NSDecimalNumber(string: subtotalFromTextField)
    }

    var tipPercent: NSDecimalNumber {
        return NSDecimalNumber(value: Double(tipPercentFromSlider)).dividing(by: NSDecimalNumber(value: 100))
    }
    
    var tipAmount: NSDecimalNumber {
        return subtotalAsDecimal.multiplying(by: tipPercent)
    }
    
    var totalAmount: NSDecimalNumber {
        return subtotalAsDecimal.adding(tipAmount)
    }
    
    // MARK: - Convert to Currency
    let formatter = NumberFormatter()
    
    var subtotalAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: subtotalAsDecimal as NSNumber)!
    }
    
    var tipAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: tipAmount as NSNumber)!
    }
    
    var totalAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: totalAmount as NSNumber)!
    }

}















