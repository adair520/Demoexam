//
//  ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Home"
        self.tabBarItem.image = UIImage(named: "home")
        
        let screenFrame = UIScreen.main.bounds
        let screenWidth = screenFrame.size.width
        
       //01-UIView
        let btn1 = UIButton(frame: CGRect(x: 10, y: 60, width: (screenWidth-30)/2, height: 40))
        btn1.setTitle("01-UIView调试", for: UIControlState())
        btn1.contentHorizontalAlignment = .left
        btn1.backgroundColor = UIColor.orange
        btn1.addTarget(self, action: #selector(ViewController.openTestView), for: .touchUpInside)
        self.view.addSubview(btn1)
        //02-UIViewController
        let btn2 = UIButton(frame: CGRect(x: 20+btn1.frame.size.width, y: 60, width: (screenWidth-30)/2, height: 40))
        btn2.setTitle("02-UIViewController调试", for: UIControlState())
        btn2.contentHorizontalAlignment = .left
        btn2.backgroundColor = UIColor.orange
        btn2.addTarget(self, action: #selector(ViewController.openTestViewController), for: .touchUpInside)
        self.view.addSubview(btn2)
        //03-UIScrollView
        let btn3 = UIButton(frame: CGRect(x: 10, y: 110, width: (screenWidth-30)/2, height: 40))
        btn3.setTitle("03-UIScrollView", for: UIControlState())
        btn3.contentHorizontalAlignment = .left
        btn3.backgroundColor = UIColor.orange
        btn3.addTarget(self, action: #selector(ViewController.openTestScrollView), for: .touchUpInside)
        self.view.addSubview(btn3)
        //04-UITabbarController
        let btn4 = UIButton(frame: CGRect(x: 20+btn1.frame.size.width, y: 110, width: (screenWidth-30)/2, height: 40))
        btn4.setTitle("04-UITabbarController", for: UIControlState())
        btn4.contentHorizontalAlignment = .left
        btn4.backgroundColor = UIColor.orange
        btn4.addTarget(self, action: #selector(ViewController.openTestTabbarController), for: .touchUpInside)
        self.view.addSubview(btn4)
        //05-UINavigationBar
        let btn5 = UIButton(frame: CGRect(x: 10, y: 160, width: (screenWidth-30)/2, height: 40))
        btn5.setTitle("05-UINavigationBar", for: UIControlState())
        btn5.contentHorizontalAlignment = .left
        btn5.backgroundColor = UIColor.orange
        btn5.addTarget(self, action: #selector(ViewController.openTestNavigationController), for: .touchUpInside)
        self.view.addSubview(btn5)
        //06-UITabbar+UINavigation
        let btn6 = UIButton(frame: CGRect(x: 20+btn1.frame.size.width, y: 160, width: (screenWidth-30)/2, height: 40))
        btn6.setTitle("06-Navigation+Tabbar", for: UIControlState())
        btn6.contentHorizontalAlignment = .left
        btn6.backgroundColor = UIColor.orange
        btn6.addTarget(self, action: #selector(ViewController.openTestTabbarNavigationController), for: .touchUpInside)
        self.view.addSubview(btn6)
        //07-BasicControls
        let btn7 = UIButton(frame: CGRect(x: 10, y: 210, width: (screenWidth-30)/2, height: 40))
        btn7.setTitle("07-BasicControls", for: UIControlState())
        btn7.contentHorizontalAlignment = .left
        btn7.backgroundColor = UIColor.orange
        btn7.addTarget(self, action: #selector(ViewController.openBasicControls), for: .touchUpInside)
        self.view.addSubview(btn7)
        //08-tableview
        let btn8 = UIButton(frame: CGRect(x: 20+btn7.frame.size.width, y: 210, width: (screenWidth-30)/2, height: 40))
        btn8.setTitle("08-TableView", for: UIControlState())
        btn8.contentHorizontalAlignment = .left
        btn8.backgroundColor = UIColor.orange
        btn8.addTarget(self, action: #selector(ViewController.opentableview), for: .touchUpInside)
        self.view.addSubview(btn8)
        //09-collectionview
        let btn9 = UIButton(frame: CGRect(x: 10, y: 260, width: (screenWidth-30)/2, height: 40))
        btn9.setTitle("09-Collectionview", for: UIControlState())
        btn9.contentHorizontalAlignment = .left
        btn9.backgroundColor = UIColor.orange
        btn9.addTarget(self, action: #selector(ViewController.opencollectionview), for: .touchUpInside)
        self.view.addSubview(btn9)
        
    }
    //01-UIView
    @objc func openTestView() {
        let  testViewController01 = TestViewController()
        self.navigationController?.pushViewController(testViewController01, animated: true)
        
    }
    //02-UIViewController
    @objc func openTestViewController() {
        let  testViewController02 = OldViewController()
        self.navigationController?.pushViewController(testViewController02, animated: true)
        
    }
    //03-UIScrollerView
    @objc func openTestScrollView() {
        let  testScrollView03 = PageViewController()
       self.navigationController?.pushViewController(testScrollView03, animated: true)
    }
    //04-UITabbarController
    @objc func openTestTabbarController() {
        let  testTabbar04 = Test04TabbarViewController()
        //let screenWidth = UIScreen.main.bounds.width
        //testTabbar04.tabBar.frame = CGRect(x: 0, y: 200, width: screenWidth, height: 44)//这个属性是只读，这样修改无效果
        self.navigationController?.pushViewController(testTabbar04, animated: true)
        
    }
    //05-UINavigationController
    @objc func openTestNavigationController() {
        let first05VC = First05ViewController()
        let test05NavigationVC = UINavigationController(rootViewController: first05VC)
        self.navigationController?.pushViewController(test05NavigationVC, animated: true)
        
        
    }
    //060UITabbarNavigationController
    @objc func openTestTabbarNavigationController() {
        let first06VC = First06ViewController()
        let third06VC = Third06ViewController()
        let nav06VC = Test06NavigationViewController(rootViewController: first06VC)
        let test06TabbarVC = Test06TabbarViewController()
        test06TabbarVC.viewControllers = [nav06VC,third06VC]
        self.navigationController?.pushViewController(test06TabbarVC, animated: true)
        
    }
    //openBasicControls
    @objc func openBasicControls(){
        let BasicControls = BasicControlsViewController()
        self.navigationController?.pushViewController(BasicControls, animated: true)
        
    }
    @objc func opentableview(){
        let test08tableview = Test08TableviewViewController()
       self.navigationController?.pushViewController(test08tableview, animated: true)
        
    }
    @objc func opencollectionview(){
        let test09collection = Test09CollectionViewController()
        self.navigationController?.pushViewController(test09collection, animated: true)
    }
    
    
    

}

