//
//  PresentedPresenter.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation

class PresentedPresenter: PresentedInterface, PresentedInteractorDelegate {
    
    // Viper connect
    var userInterface: PresentedViewInterface?
    var router: PresentedWireframe?
    var dataProvider: PresentedInteractorInterface?
    
    // MARK: Presented Interface
    func returnToMain() {
        
        print("PRESENTER (PresentedVC): Need to route to main")
        router?.navigateToMain()
    }
    
}