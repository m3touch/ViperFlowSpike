//
//  MainViewController.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewInterface {
    
    // Viper connect
    var eventHandler: MainInterface?
    
    
    // UI Interaction
    @IBAction func presentVCButtonSelected(sender: UIButton) {
        
        print("\nVIEW (Main): Button selected to show `presentVC`")
        
        // Pass the user feedback to presenter
        eventHandler?.navigateToPresentedView()
    }
    
    @IBAction func pushVCButtonSelected(sender: UIButton) {
        
        print("\nVIEW (Main): Button selected to show `pushVC`")
        
        // Pass the user feedback to presenter
        eventHandler?.navigateToPushedView()
    }
    
    @IBAction func customTransitionButtonSelected(sender: UIButton) {
        
        print("\nVIEW (Main): Button selected to show `customTransition`")
        
        // Pass the user feedback to presenter
        eventHandler?.naivgateToCustomTransitionView()
    }

}
