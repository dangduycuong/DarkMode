//
//  DetailViewController.swift
//  DarkMode
//
//  Created by cuongdd on 09/06/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    var disable: Bool = true {
        didSet {
            buttons.forEach({ $0.isEnabled =  disable })
        }
    }
    
    var numbers = [Int](0..<10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        view.overrideUserInterfaceStyle = .dark
    }
    
    @IBAction func changeEnable(_ sender: UIButton) {
        disable = !disable
        
        for button in buttons {
            button.backgroundColor = UIColor.semanticAlert
        }
        
        numbers.forEach({ number in
        })
    }
    
}
