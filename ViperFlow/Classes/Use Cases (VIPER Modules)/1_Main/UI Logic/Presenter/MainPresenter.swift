//
//  MainPresenter.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation

class MainPresenter: MainInterface, MainInteractorDelegate {
    
    // Viper connect
    var userInterface: MainViewInterface?
    var router: MainWireframe?
    var dataProvider: MainInteractorInterface?
    
    
    // MARK: Main Interface
    func navigateToPushedView() {
        
        print("PRESENTER (Main): Need to route to `pushedVC`")
        
        // Have to route to the requested VC
        router?.goToPushedWireframe()
        
    }
    
    func navigateToPresentedView() {
        
        print("PRESENTER (Main): Need to route to `presentedVC`")
        
        // Have to route to the requested VC
        router?.goToPresentedWireframe()
        
    }
    
    func naivgateToCustomTransitionView(){
        
        print("PRESENTER (Main): Need to route to `customTransitionVC`")
        
        // Have to route to the requested VC
        router?.goToCustomTransitionWireframe()
        
    }
    
}