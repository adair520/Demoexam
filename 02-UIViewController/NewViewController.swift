//
//  NewViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var viewController:OldViewController?
    let labeltxt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purple
        let label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.backgroundColor = UIColor.blue
        label.text = labeltxt
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.backgroundColor = UIColor.gray
        button.setTitle("close", for: UIControlState())
        button.addTarget(self, action: #selector(NewViewController.dissmissSelf), for:.touchUpInside)
        self.view.addSubview(button)
        
    }
    @objc func dissmissSelf() {
        viewController?.label.text = "返回的数据"
        self.dismiss(animated: true, completion: nil)
        
    }
}
