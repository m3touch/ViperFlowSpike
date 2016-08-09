//
//  PresentedViewController.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController, PresentedViewInterface {
    
    // Viper connect
    var eventHandler: PresentedInterface?
    
    // UI Events
    @IBAction func closeButtonSelected(sender: UIButton) {
        
        print("\nVIEW (PresentedVC): Close button selected")
        eventHandler?.returnToMain()
    }

}
