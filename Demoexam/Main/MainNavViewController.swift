//
//  MainNavViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MainNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UITabBarItem(title: "home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        self.tabBarItem = item
        
       

    }

}
