//
//  ViewController.swift
//  DarkMode
//
//  Created by cuongdd on 09/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var modeLabel: UILabel!
    var isDardMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isDardMode = traitCollection.userInterfaceStyle == .dark
        modeLabel.text = traitCollection.userInterfaceStyle == .dark ? "dark mode" : "light mode"
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        isDardMode = traitCollection.userInterfaceStyle == .dark
        updateMode(isChange: traitCollection.userInterfaceStyle == .dark)
    }
    
    @IBAction func tapChangeMode(_ sender: UIButton) {
        isDardMode = !isDardMode
        updateMode(isChange: isDardMode)
    }
    
    private func updateMode(isChange: Bool) {
        modeLabel.text = traitCollection.userInterfaceStyle == .dark ? "dark mode" : "light mode"
        view.overrideUserInterfaceStyle = isChange ? .dark : .light
    }
    
    
}

