//
//  CustomizedPresenter.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation

class CustomizedPresenter: CustomizedInterface, CustomizedInteractorDelegate {
    
    // Viper connect
    var userInterface: CustomTransitionViewInterface?
    var dataProvider: CustomizedInteractorInterface?
    var router: CustomizedWireframe?
    
    
    // MARK: Customized Interface
    func closeButtonSelected() {
        
        print("PRESENTER (Transition): Return to main")
        router?.navigateToMain()
    }
}