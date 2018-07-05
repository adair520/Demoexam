//
//  First06ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class First06ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "View1视图"
        self.tabBarItem.image = UIImage(named: "tab1")
        self.view.backgroundColor = UIColor.orange
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(First06ViewController.navPushNextPage))
    }
    @objc func navPushNextPage(){
        let second06VC = Second06ViewController()
        self.navigationController?.pushViewController(second06VC, animated: true)
        
    }
}
