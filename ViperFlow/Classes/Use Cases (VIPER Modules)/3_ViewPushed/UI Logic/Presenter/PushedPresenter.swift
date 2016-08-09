//
//  PushedPresenter.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class PushedPresenter: PushedInterface, PushedInteractorDelegate {
    
    // Viper connect
    var userInterface: PushedViewInterface?
    var dataProvider: PushedInteractorInterface?
    var router: PushedWireframe?
    
    
    // MARK: Pushed Interface
    func colorizeButtonSelected() {
        print("PRESENTER (Pushed): Recived event saying that the user wants to colorize the bottom view. Check the stored color to colorize")
        dataProvider?.getColorFromDataStorage()
    }
    
    // MARK: Pushed Interactor Delegate
    func foundColor(color:UIColor) {
        print("PRESENTER (Pushed): Recived the stored color to colorize. Tell the view to update the bottom view color")
        userInterface?.updateBottomViewWithColor(color)
    }
    
}