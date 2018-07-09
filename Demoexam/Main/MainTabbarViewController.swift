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
        
        let homevc = ViewController()
        let mainNav = UINavigationController(rootViewController: homevc)
        let course = CourseTableViewController()
        let mine = UIViewController()
        mine.view.backgroundColor = UIColor.purple
        mine.title = "Mine"
        self.viewControllers = [mainNav,course,mine]
        self.tabBar.isTranslucent = false
 
        //setUpTabbar()
        
        //setChildVC()

    }
    /*
    //设置Tabbar
    func setUpTabbar(){
        //根据颜色值画条线
        let rect = CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:0.5)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.red.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        //这两个很主要缺一不可
        self.tabBar.shadowImage = image
        self.tabBar.backgroundImage = UIImage()
        
        // 设置字体偏移
        UITabBarItem.appearance().titlePositionAdjustment = UIOffsetMake(0.0, -5.0)
        
        //tabBar 底部工具栏背景颜色 (以下两个都行)
        //self.tabBar.barTintColor = UIColor.orange
        self.tabBar.backgroundColor = UIColor.white
        
        //设置 tabBar 工具栏字体颜色 (未选中  和  选中)
        //未选中
       // UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.black, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for: UIControlState.normal)
        //选中
       // UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.red, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for: UIControlState.selected)
        
        // 设置图片选中时颜色必须设置（系统默认选中蓝色）
        UITabBar.appearance().tintColor = UIColor.black
        //或者写法都是一样的
        //self.tabBar.tintColor = UIColor.black
        
    }
    
    //添加子控制器
    func setChildVC(){
        setupOneChildViewController(MainNavViewController(), title: "Home", normalImage: "home", selectedImage: "home")
        
        setupOneChildViewController(CourseTableViewController(), title: "Course", normalImage: "home", selectedImage: "home")
        
        setupOneChildViewController(UIViewController(), title: "Mine", normalImage: "mine", selectedImage: "mine")
    }
        
    //抽取方法
    func setupOneChildViewController(_ vc:UIViewController,title:String, normalImage:String, selectedImage:String){
        
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(named:normalImage)
        vc.tabBarItem.selectedImage = UIImage(named:selectedImage)
        let mainNav = UINavigationController(rootViewController:vc)
        addChildViewController(mainNav)
        
    }
 */
    
    

}
