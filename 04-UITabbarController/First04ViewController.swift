//
//  First04ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/22.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class First04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
        self.title = "ITEM1"
        self.tabBarItem.image  = UIImage(named: "Tab1")
        let label = UILabel(frame: CGRect(x: 40, y: 150, width: 240, height: 44))
        label.text = "第1页"
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Arial", size: 36)
        self.view.addSubview(label)
        
        let btn = UIButton(frame: CGRect(x: 40, y: 220, width: 240, height: 44))
        btn.setTitle("进入第二页", for:UIControlState())
        btn.backgroundColor = UIColor.black
        btn.addTarget(self, action: #selector(First04ViewController.openSecondVC), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    @objc func openSecondVC() {
        self.tabBarController?.selectedIndex = 1
    }

}
