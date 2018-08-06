//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Cameron Ingham on 8/5/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties
    let model = Model()

    // MARK: - Outlets
    @IBOutlet weak var subTotalTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipValueLabel: UILabel!
    @IBOutlet weak var totalValueLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        subTotalTextField.becomeFirstResponder()
        createToolbar()
        tipPercentSlider.isEnabled = false
    }
    
    // MARK: - Interactions
    @IBAction func sliderChanged(_ sender: UISlider) {
        setTipPercentLabels(percent: Int(sender.value))
        model.tipPercentFromSlider = Int(sender.value)
        updateLabels()
    }

    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyboard))
        
        toolbar.setItems([flexibleSpace, doneButton], animated: true)
        
        subTotalTextField.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard() {
        subTotalTextField.resignFirstResponder()
        //tipPercentSlider.isEnabled = true
        
        if subTotalTextField.text?.count == 0 {
            subTotalTextField.text = "$0.00"
            model.subtotalFromTextField = "0.00"
            updateLabels()
        } else {
            model.subtotalFromTextField = subTotalTextField.text!
            model.tipPercentFromSlider = Int(tipPercentSlider.value)
            updateLabels()
            
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        tipPercentSlider.isEnabled = true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        tipPercentSlider.isEnabled = false
    }
    
    func setTipPercentLabels(percent: Int) {
        tipPercentLabel.text = "Tip (\(percent)%):"
    }
    
    func updateLabels(){
        subTotalTextField.text = model.subtotalAsCurrency
        tipValueLabel.text = model.tipAmountAsCurrency
        totalValueLabel.text = model.totalAmountAsCurrency
    }
}

