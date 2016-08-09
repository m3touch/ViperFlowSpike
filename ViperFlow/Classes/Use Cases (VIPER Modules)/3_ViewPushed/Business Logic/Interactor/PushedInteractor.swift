//
//  PushedInteractor.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class PushedInteractor: PushedInteractorInterface {
    
    // Viper connect
    var dataDelegate: PushedInteractorDelegate?
    
    // MARK: Pushed Interactor Interface
    func getColorFromDataStorage() {
        print("INTERACTOR (Pushed): Get the stored color. Check entities, managed objects and play with the data manager. Then return the color to the presenter.")
        
        // Imagine this function checks from some storage the color that it has to be retrived to the user.
        // May be it is in user defaults as a result of an in app configuration
        let storedColor = UIColor.purpleColor()
        
        // Return the color to the data delegate
        dataDelegate?.foundColor(storedColor)
        
    }
}