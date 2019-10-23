//
//  Navigation05ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2019/6/10.
//  Copyright © 2019 adairwang. All rights reserved.
//

import UIKit

class BaseUI05: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.backgroundColor = UIColor.purple
        self.view.addSubview(button)
    }


}
