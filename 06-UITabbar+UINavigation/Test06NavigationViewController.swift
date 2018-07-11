//
//  Test06NavigationViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test06NavigationViewController: MainNavViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nav视图"
        self.tabBarItem.image = UIImage(named: "tab1")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(Test06NavigationViewController.edit))
        
    }
    @objc func edit(){
        let second06VC = Second06ViewController()
        self.present(second06VC, animated: true, completion: nil)
        
    }

}
