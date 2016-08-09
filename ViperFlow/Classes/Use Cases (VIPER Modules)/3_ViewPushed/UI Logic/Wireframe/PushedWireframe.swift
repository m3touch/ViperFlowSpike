//
//  PushedWireframe.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class PushedWireframe: VIPERChildWireframe {
    
    // Viper connect
    var userInterface: PushedViewController?
    var presenter: PushedPresenter?
    
    // MARK: Viper Child Wireframe
    typealias UIComponent = PushedViewController
    func navigateToUserInterfaceFromViewController(viewController: UIViewController) {
        
        // Get the view controller form the storyboard
        let uiController = controllerFromStoryboard(SBComponentNames.pushedView)
        
        // Add the event handler to the view
        uiController.eventHandler = presenter
        
        // Save the user interface
        userInterface = uiController
        
        // Set the user interface to the presenter
        presenter!.userInterface = uiController
        
        // Present the view controller
        print("ROUTER (Pushed): Show `pushedVC`")
        viewController.navigationController?.pushViewController(userInterface!, animated: true)
        
    }
    
}