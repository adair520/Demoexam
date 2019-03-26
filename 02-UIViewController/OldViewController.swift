//
//  02-ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class OldViewController: UIViewController {

    var label:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "视图控制器"
        
        let btnback = UIButton(frame: CGRect(x:UIScreen.main.bounds.size.width/2 , y: UIScreen.main.bounds.size.height-100, width: 100, height: 40))
        btnback.backgroundColor = UIColor.darkGray
        btnback.titleLabel?.textColor = UIColor.white
        btnback.titleLabel?.text = "返回"
        btnback.titleLabel?.textAlignment = .center
        btnback.addTarget(self, action: #selector(TestViewController.returnback), for: .touchUpInside)
        self.view.addSubview(btnback)
        
        
        
        
        self.view.backgroundColor = UIColor.white
        label = UILabel(frame: CGRect(x:50, y: 100, width: 200, height: 44))
        label.text = ""
        label.backgroundColor = UIColor.red
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("打开新的视图控制器", for: UIControl.State())
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(OldViewController.openViewController), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    @objc func openViewController(){
        let newViewController = NewViewController()
        newViewController.viewController = self
        newViewController.view.backgroundColor = UIColor.purple
        self.present(newViewController, animated: true, completion: nil)
    }
    @objc func returnback(){
        let homeVC = HomeTableViewController()
        self.present(homeVC, animated: true, completion: nil)
    }

}
