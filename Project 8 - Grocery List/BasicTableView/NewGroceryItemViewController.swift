//
//  NewGroceryItemViewController.swift
//  BasicTableView
//
//  Created by Cameron Ingham on 8/21/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class NewGroceryItemViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }
    
    // MARK: - Interactions
    @IBAction func doneButton(_ sender: Any) {
        let item = textView.text.trimmingCharacters(in: .whitespaces)
        if !item.isEmpty {
            GroceryController.groceries.append(GroceryItem(name: item))
            navigationController?.popViewController(animated: true)
        }
    }

}
