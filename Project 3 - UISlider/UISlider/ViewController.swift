//
//  ViewController.swift
//  UISlider
//
//  Created by Cameron Ingham on 8/4/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        changeLabelColor(value: slider.value)
    }
    
    // MARK: - Interactions
    @IBAction func sliderChanged(_ sender: UISlider) {
        changeLabelColor(value: sender.value)
    }
    
    // MARK: - Functions
    func changeLabelColor(value: Float){
        helloLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(value))
    }

}

