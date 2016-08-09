//
//  MainWireframe.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class MainWireframe: VIPERMainWireframe {
    
    // Viper connect
    var userInterface: MainViewController?
    var presenter: MainPresenter?
    
    // Viper routing
    var presentedWireframe: PresentedWireframe?
    var pushedWireframe: PushedWireframe?
    var transitionedWireframe: CustomizedWireframe?
    
    
    // MARK: VIPER Main Wireframe
    typealias UIComponent = MainViewController
    func presentUserInterfaceFromWindow(window: UIWindow)
    {
        // Get the view controller form the storyboard
        let uiController = controllerFromStoryboard(SBComponentNames.mainView)
        
        // Add the event handler to the view
        uiController.eventHandler = presenter
        
        // Save the user interface
        userInterface = uiController
        
        // Set the user interface to the presenter
        presenter!.userInterface = uiController
        
        // Show as root view controller in window
        showRootViewController(uiController, inWindow: window)
        
    }
    
    // MARK: Navigation
    func goToPresentedWireframe() {
        
        // Configure new module dependencies
        preparePresentedWireframeToPresent()
        
        print("ROUTER (Main): Manage the routing to `presentedVC`")
        presentedWireframe?.navigateToUserInterfaceFromViewController(userInterface!)
        
    }
    
    func goToPushedWireframe() {
        
        // Configure new module dependencies
        preparePushedWireframeToPresent()
        
        print("ROUTER (Main): Manage the routing to `pushedVC`")
        pushedWireframe?.navigateToUserInterfaceFromViewController(userInterface!)
        
    }
    
    func goToCustomTransitionWireframe() {
        
        // Configure new module dependencies
        prepareTransitionWireframeToPresent()
        
        print("ROUTER (Main): Manage the routing to `customTransitionVC`")
        transitionedWireframe?.navigateToUserInterfaceFromViewController(userInterface!)
        
    }
    
    private func preparePresentedWireframeToPresent() {
        
        // Init the dummy module components
        let wireframe = PresentedWireframe()
        let interactor = PresentedInteractor()
        let presenter = PresentedPresenter()
        
        // Connect the presented wireframe to the current
        presentedWireframe = wireframe
        
        
        // Connect the components of presented module
        wireframe.presenter = presenter
        
        presenter.router = wireframe
        presenter.dataProvider = interactor
        
        interactor.dataDelegate = presenter
    }
    
    private func preparePushedWireframeToPresent() {
        
        // Init the dummy module components
        let wireframe = PushedWireframe()
        let interactor = PushedInteractor()
        let presenter = PushedPresenter()
        
        // Connect the presented wireframe to the current
        pushedWireframe = wireframe
        
        
        // Connect the components of presented module
        wireframe.presenter = presenter
        
        presenter.router = wireframe
        presenter.dataProvider = interactor
        
        interactor.dataDelegate = presenter
    }
    
    private func prepareTransitionWireframeToPresent() {
        
        // Init the dummy module components
        let wireframe = CustomizedWireframe()
        let interactor = CustomizedInteractor()
        let presenter = CustomizedPresenter()
        
        // Connect the presented wireframe to the current
        transitionedWireframe = wireframe
        
        
        // Connect the components of presented module
        wireframe.presenter = presenter
        
        presenter.router = wireframe
        presenter.dataProvider = interactor
        
        interactor.dataDelegate = presenter
    }
    
}











