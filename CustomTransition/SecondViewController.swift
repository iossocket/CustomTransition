//
//  SecondViewController.swift
//  CustomTransition
//
//  Created by ZhuXueliang on 4/2/16.
//  Copyright © 2016 IOSSOCKET. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.delegate = nil
    }
    
    deinit {
        print("second dismiss")
    }
}
