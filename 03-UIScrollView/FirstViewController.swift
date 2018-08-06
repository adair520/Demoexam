//
//  FirstViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        //添加返回按钮
        let btnback = UIButton(frame: CGRect(x:UIScreen.main.bounds.size.width/2 , y: UIScreen.main.bounds.size.height-100, width: 100, height: 40))
        btnback.backgroundColor = UIColor.darkGray
        btnback.titleLabel?.textColor = UIColor.white
        btnback.titleLabel?.text = "返回"
        btnback.titleLabel?.textAlignment = .center
        btnback.addTarget(self, action: #selector(TestViewController.returnback), for: .touchUpInside)
        self.view.addSubview(btnback)


    }
    @objc func returnback(){
        let homeVC = HomeTableViewController()
        self.present(homeVC, animated: true, completion: nil)
    }


}
