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
        self.navigationBar.backgroundColor = UIColor.darkGray
        self.view.backgroundColor = UIColor.lightGray
        self.isNavigationBarHidden = true //上部的导航栏
        self.isToolbarHidden = true //底部的状态栏
        let itemleft1 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(MainNavViewController.oepnleftitem))
         let itemleft2 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(MainNavViewController.oepnleftitem))
         let itemleft3 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(MainNavViewController.oepnleftitem))
        let itemleft4 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action:
            #selector(MainNavViewController.oepnleftitem))
        
        self.navigationItem.leftBarButtonItems =  [itemleft1,itemleft2]
        self.navigationItem.rightBarButtonItems = [itemleft3,itemleft4]
    }
    @objc func oepnleftitem(){
        
    }
    @objc func oepnrightitem(){
        
    }
    
    
    
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count>0 {
            
            viewController.hidesBottomBarWhenPushed = true //跳转之后隐藏
        }
        
        
        super.pushViewController(viewController, animated: true)
    }

}
