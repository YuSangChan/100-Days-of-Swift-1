//
//  FirstViewController.swift
//  Passing Data
//
//  Created by Cameron Ingham on 8/6/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SecondViewController else {return}
        destination.sentMessage = textView.text
    }

}
