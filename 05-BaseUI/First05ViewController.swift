//
//  First05ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class First05ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        //设置工具栏和导航栏
        //self.navigationController?.setToolbarHidden(false, animated:false)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //修改NavigationBar样式
        
        self.navigationItem.prompt = "正在载入。。。"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(First05ViewController.refesh))
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
        self.navigationController?.navigationBar.tintColor = UIColor.purple
 
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "第一页"
        self.view.backgroundColor = UIColor.white
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: UIBarButtonItem.Style.plain, target: self, action: #selector(First05ViewController.openNextPage))

    }
    
    @objc func openNextPage (){
    let Second05VC = Second05ViewController()
        self.navigationController?.pushViewController(Second05VC, animated: true)

    }
    @objc func refesh(){
        print("刷新数据")
        
        
        
    }
 
}
