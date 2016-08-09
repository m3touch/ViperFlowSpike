//
//  AppDependencies.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 02/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    
    // The central wireframe of the app
    var rootWireframe = MainWireframe()
    
    
    init() {
        
        configureDependencies()
    }
    
    private func configureDependencies() {
        
        // Init the list module components
        let presenter = MainPresenter()
        let interactor = MainInteractor()
        // list data manager
        
        // Connect the list components
        presenter.dataProvider = interactor
        presenter.router = rootWireframe
        
        interactor.dataDelegate = presenter
        
        rootWireframe.presenter = presenter
        
    }
    
    func installRootViewcontrollerIntoWindow(window: UIWindow) {
        
        rootWireframe.presentUserInterfaceFromWindow(window)
    }
}