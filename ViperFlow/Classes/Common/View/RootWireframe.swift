//
//  RootWireframe.swift
//  ViperSpike
//
//  Created by Marta Tarragó on 01/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

protocol RootWireframe {
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow)
}

extension RootWireframe {
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navCtrlr = navigationControllerFromWindow(inWindow)
        navCtrlr.viewControllers = [viewController]
    }
    
    private func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navCtrlr = window.rootViewController as! UINavigationController
        return navCtrlr
    }
    
}