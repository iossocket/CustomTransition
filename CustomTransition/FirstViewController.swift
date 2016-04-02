//
//  ViewController.swift
//  CustomTransition
//
//  Created by ZhuXueliang on 4/2/16.
//  Copyright © 2016 IOSSOCKET. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.delegate = self
    }
    
    @IBAction func showNextAction(sender: AnyObject) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController")
        navigationController?.showViewController(secondVC, sender: nil)
    }
}

extension FirstViewController {
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CustomNavigationTransition()
    }
}

