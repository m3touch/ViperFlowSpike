//
//  DismissTransition.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit

class DismissTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.72
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        // Get the view controller that has to be transitioned
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! CustomTransitionViewController
        // Get the view controller that has to be transitioned
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
        
        // Get the center of the screen as the final center
        let finalCenter = CGPointMake(160.0, (fromVC.view.bounds.size.height / 2) - 1000.0)
        
        // Type of animation
        let options = UIViewAnimationOptions.CurveEaseOut
        
        // Animate
        UIView.animateWithDuration(self.transitionDuration(transitionContext),
                                   delay: 0.0,
                                   usingSpringWithDamping: 0.64,
                                   initialSpringVelocity: 0.22,
                                   options: options,
                                   animations: {
                                        // The animation to create
                                        fromVC.view.center = finalCenter
                                        toVC!.view.alpha = 1.0
                                    },
                                   completion: { finished in
                                        fromVC.view.removeFromSuperview()
                                        transitionContext.completeTransition(true)
                                    }
        )
    }
}