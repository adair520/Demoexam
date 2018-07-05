//
//  Test04TabbarViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/22.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test04TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let first04VC = First04ViewController()
        let second04VC = Second04ViewController()
        let third04VC = Third04ViewController()
        self.viewControllers  = [first04VC,second04VC,third04VC]
       
        
        
    }
}




