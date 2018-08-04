//
//  ViewController.swift
//  Writer
//
//  Created by Cameron Ingham on 8/4/18.
//  Copyright © 2018 Cameron Ingham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Lifecycle Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        setTheme(dark: UserDefaults.standard.bool(forKey: "nightMode"))
        NotificationCenter.default.addObserver(self, selector: #selector(settingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    // MARK: - Functions
    
    @objc func settingsChanged() {
        setTheme(dark: UserDefaults.standard.bool(forKey: "nightMode"))
    }
    
    func setTheme(dark: Bool){
        if dark {
            view.backgroundColor = .black
            textView.textColor = .white
            textView.keyboardAppearance = .dark
            UIApplication.shared.statusBarStyle = .lightContent
        } else {
            view.backgroundColor = .white
            textView.textColor = .black
            textView.keyboardAppearance = .light
            UIApplication.shared.statusBarStyle = .default
        }
    }

}

