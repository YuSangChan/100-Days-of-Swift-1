//
//  ViewController.swift
//  Tap Counter
//
//  Created by Cameron Ingham on 8/3/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var count = 0 {
        didSet {
            countLabel.text = "\(count)"
        }
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: - Lifecycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    // MARK: - Interactions
    
    @IBAction func tapCounter(_ sender: UIButton) {
        count += 1
    }
    
    @IBAction func longTapCounter(_ sender: Any) {
        count += 1
    }
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        count = 0
    }
    
}

