//
//  ViewController.swift
//  GetDateAndTime
//
//  Created by Cameron Ingham on 8/6/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    let dateFormatter = DateFormatter()
    
    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Lifecycle Functions
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setCurrentDate()
    }
    
    // MARK: - Interactions
    @IBAction func refreshButton(_ sender: Any) {
       setCurrentDate()
    }
    
    // MARK: - Functions
    func setCurrentDate(){
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        dateLabel.text = dateFormatter.string(from: Date())
    }

    
}

