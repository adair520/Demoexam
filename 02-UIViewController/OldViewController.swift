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
        self.view.backgroundColor = UIColor.white
        label = UILabel(frame: CGRect(x:50, y: 100, width: 200, height: 44))
        label.text = ""
        label.backgroundColor = UIColor.red
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("打开新的视图控制器", for: UIControlState())
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

}
