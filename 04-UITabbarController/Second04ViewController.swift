//
//  Second04ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/22.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Second04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
        self.title = "ITEM2"
        self.tabBarItem.image  = UIImage(named: "Tab2")
        let label = UILabel(frame: CGRect(x: 40, y: 150, width: 240, height: 44))
        label.text = "第2页"
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Arial", size: 36)
        self.view.addSubview(label)
        self.tabBarItem.badgeValue = "9"
    }

}
