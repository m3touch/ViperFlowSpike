//
//  PresentedWireframe.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class PresentedWireframe: VIPERChildWireframe {
    
    // Viper connect
    var userInterface: PresentedViewController?
    var presenter: PresentedPresenter?
    
    
    // Viper Child Wireframe
    typealias UIComponent = PresentedViewController
    func navigateToUserInterfaceFromViewController(viewController: UIViewController) {
        
        // Get the view controller form the storyboard
        let uiController = controllerFromStoryboard(SBComponentNames.presentedView)
        
        // Add the event handler to the view
        uiController.eventHandler = presenter
        
        // Save the user interface
        userInterface = uiController
        
        // Set the user interface to the presenter
        presenter!.userInterface = uiController
        
        // Present the view controller
        print("ROUTER (Presented): Show `presentedVC`")
        viewController.presentViewController(uiController, animated: true, completion: nil)
    }
    
    // MARK: Navigation
    func navigateToMain() {
        print("ROUTING (Presented): Dismiss `presentedVC`")
        userInterface?.dismissViewControllerAnimated(true, completion: nil)
    }

}