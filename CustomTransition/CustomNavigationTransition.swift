//
//  CustomNavigationTransition.swift
//  CustomTransition
//
//  Created by ZhuXueliang on 4/2/16.
//  Copyright © 2016 IOSSOCKET. All rights reserved.
//

import UIKit

class CustomNavigationTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromVC: UIViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toVC: UIViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        
        // where the animation has to happen
        let containerView: UIView = transitionContext.containerView()!
        containerView.addSubview(fromVC.view)
        containerView.addSubview(toVC.view)
        
        toVC.view.alpha = 0.0;
        let screenWidth = UIScreen.mainScreen().bounds.width
        let screenHeight = UIScreen.mainScreen().bounds.height
        toVC.view.frame = CGRect(x: -screenWidth, y: 0, width: screenWidth, height: screenHeight)
        
        // Perform the animation
        UIView.animateWithDuration(self.transitionDuration(transitionContext), delay: 0, options: .CurveEaseInOut, animations: { 
                toVC.view.alpha = 1
                toVC.view.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
            }) { (finished) in
                fromVC.view.removeFromSuperview()
                transitionContext.completeTransition(finished)
                print(finished)
        }
    }
}
