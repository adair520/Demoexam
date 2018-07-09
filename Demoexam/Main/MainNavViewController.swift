//
//  MainNavViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/10.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MainNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.isNavigationBarHidden = true //上部的导航栏
        self.isToolbarHidden = true //底部的状态栏

    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count>0 {
            
            viewController.hidesBottomBarWhenPushed = true //跳转之后隐藏
        }
        
        
        super.pushViewController(viewController, animated: true)
    }

}
