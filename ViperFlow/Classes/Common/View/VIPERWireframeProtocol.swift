//
//  VIPERWireframeProtocol.swift
//  ViperSpike
//
//  Created by Marta Tarragó on 01/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

/// VIPER Wireframe
protocol VIPERWireframeProtocol {
    associatedtype UIComponent : UIViewController
    func mainStoryBoard() -> UIStoryboard
    func controllerFromStoryboard(name: String) -> UIComponent
}

/// Default behaviour for a VIPER Wireframe
extension VIPERWireframeProtocol {
    /// Returns the main `UIStoriboard`
    func mainStoryBoard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: SBComponentNames.storyName, bundle: NSBundle.mainBundle())
        return storyboard
    }
    
    /// Retruns the controller this wireframe referes to. The type will depend of the definition (`typealias`) of `UIComponent`.
    func controllerFromStoryboard(name: String) -> UIComponent {
        let storyboard = mainStoryBoard()
        let uiComponent = storyboard.instantiateViewControllerWithIdentifier(name) as! UIComponent
        return uiComponent
    }
}


/// Conforms to `VIPERWireframeProtocol`. Has to implement the function to present a new main wireframe from the main window.
protocol VIPERMainWireframe : VIPERWireframeProtocol, RootWireframe {
    func presentUserInterfaceFromWindow(window: UIWindow)
}

/// Conforms to `VIPERWireframeProtocol`. Has to implement the function to present a new wireframe from an existing `UIViewController` that is in charge of the navigation scheme.
protocol VIPERChildWireframe : VIPERWireframeProtocol {
    func navigateToUserInterfaceFromViewController(viewController: UIViewController)
}