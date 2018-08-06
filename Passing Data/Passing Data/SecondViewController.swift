//
//  SecondViewController.swift
//  Passing Data
//
//  Created by Cameron Ingham on 8/6/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties
    var sentMessage: String?
    
    // MARK: - Outlets
    @IBOutlet weak var messageLabel: UILabel!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = sentMessage
    }

}
