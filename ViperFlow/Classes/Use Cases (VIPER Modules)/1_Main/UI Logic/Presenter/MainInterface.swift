//
//  MainInterface.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation

protocol MainInterface {
    // Navigation requests
    func navigateToPushedView()
    func navigateToPresentedView()
    func naivgateToCustomTransitionView()
}