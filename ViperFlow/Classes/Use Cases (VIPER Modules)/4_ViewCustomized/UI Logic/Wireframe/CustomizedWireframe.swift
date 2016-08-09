//
//  CustomizedWireframe.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class CustomizedWireframe: NSObject, UIViewControllerTransitioningDelegate, VIPERChildWireframe {
    
    // Viper connect
    var userInterface: CustomTransitionViewController?
    var presenter: CustomizedPresenter?
    
    
    // MARK: Viper Wireframe
    typealias UIComponent = CustomTransitionViewController
    func navigateToUserInterfaceFromViewController(viewController: UIViewController) {
        
        // Get the view controller form the storyboard
        let uiController = controllerFromStoryboard(SBComponentNames.customTransView)
        
        // Add the event handler to the view
        uiController.eventHandler = presenter
        
        // Save the user interface
        userInterface = uiController
        
        // Set the user interface to the presenter
        presenter!.userInterface = uiController
        
        // Customize transitions
        uiController.modalPresentationStyle = .Custom
        uiController.transitioningDelegate = self
        
        // Present the view controller
        print("ROUTER (Transition): Show `presentedVC`")
        viewController.presentViewController(uiController, animated: true, completion: nil)
    }
    
    // MARK: Transition Delegate
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PresentTransition()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return DismissTransition()
    }
    
    // MARK: Navigation
    func navigateToMain() {
        print("ROUTING (Transition): Dismiss `customTransitionVC`")
        userInterface?.dismissViewControllerAnimated(true, completion: nil)
    }
    
}