//
//  PresentTransition.swift
//  ViperFlow
//
//  Created by Marta Tarragó on 04/08/16.
//  Copyright © 2016 marta. All rights reserved.
//

import Foundation
import UIKit


class PresentTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.72
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        // Get the origin view controller
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
        
        // Get the view controller that has to be transitioned
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! CustomTransitionViewController
        
        // Move the element
        toVC.view.alpha = 1.0
        toVC.view.frame = UIScreen.mainScreen().bounds
        
        // Add the animated views to the container view
        let containerView = transitionContext.containerView()
        containerView!.addSubview(toVC.view)
        
        // Change the frame of the animated view
        let toViewFrame = CGRectMake(0, 0, 260, 300)
        toVC.view.frame = toViewFrame
        
        
        // Get the center of the screen as the final center
        let finalCenter = CGPointMake(fromVC!.view.bounds.size.width / 2, fromVC!.view.bounds.size.height / 2)
        toVC.view.center = CGPointMake(finalCenter.x, finalCenter.y - 1000)
        
        // Type of animation
        let options = UIViewAnimationOptions.CurveEaseIn
        
        // Animate
        UIView.animateWithDuration(self.transitionDuration(transitionContext),
                                   delay: 0.0,
                                   usingSpringWithDamping: 0.64,
                                   initialSpringVelocity: 0.22,
                                   options: options,
                                   animations: {
                                        // The animation to create
                                        fromVC!.view.alpha = 0.4
                                        toVC.view.center = finalCenter
                                    },
                                   completion: { finished in
                                    
                                    transitionContext.completeTransition(true)
                                    }
        )
    }
}