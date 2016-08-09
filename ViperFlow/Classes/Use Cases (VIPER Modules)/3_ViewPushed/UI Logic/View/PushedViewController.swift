//
//  PushedViewController.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController, PushedViewInterface {
    
    // Viper connect
    var eventHandler: PushedInterface?
    
    // UI
    @IBOutlet weak var colorizedView: UIView!
    

    
    // MARK: UI events
    @IBAction func colorizeView(sender: UIButton) {
        
        print("\nVIEW (Pushed): Button selected to colorize the bottom view")
        eventHandler?.colorizeButtonSelected()
        
    }
    
    // Pushed View Interface
    func updateBottomViewWithColor(color: UIColor) {
        
        print("VIEW (Pushed): Colorize view with presented color")
        colorizedView.backgroundColor = color
        
    }
    

}
