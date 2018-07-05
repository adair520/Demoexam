//
//  Test06TabbarViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test06TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let item1 = self.tabBar.items?[0]
        item1?.image = UIImage(named: "Tab1")
        item1?.title = "Item1"
        let item2 = self.tabBar.items?[1]
        item2?.image = UIImage(named: "Tab2")
        item2?.title = "Item1"
    }

}
