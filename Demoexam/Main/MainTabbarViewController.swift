//
//  MainTabbarViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.lightGray
        let mainnav = MainNavViewController()
        let mine = UITableViewController()
        self.viewControllers = [mainnav,mine]

    }

}
