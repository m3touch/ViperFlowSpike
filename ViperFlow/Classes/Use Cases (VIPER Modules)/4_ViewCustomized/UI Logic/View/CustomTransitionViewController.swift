//
//  CustomTransitionViewController.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import UIKit

class CustomTransitionViewController: UIViewController, CustomTransitionViewInterface {
    
    // Viper connect
    var eventHandler: CustomizedPresenter?
    
    
    // UI events
    @IBAction func closeView(sender: UIButton) {
        
        print("\nVIEW (Transition): Close button selected")
        eventHandler?.closeButtonSelected()
    }

}
