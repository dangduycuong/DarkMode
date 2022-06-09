//
//  UIColor+Extension.swift
//  DarkMode
//
//  Created by cuongdd on 09/06/2022.
//

import UIKit

public extension UIColor {
    static var semanticAlert: UIColor {
        return UIColor(named: "semantic-alert", in: Bundle(for: AppDelegate.self), compatibleWith: nil)!
    }
}
