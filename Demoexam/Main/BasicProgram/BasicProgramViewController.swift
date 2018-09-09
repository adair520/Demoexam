//
//  BasicProgramViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/7.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class BasicProgramViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
         textView.backgroundColor = UIColor.lightGray
        self.view.addSubview(textView)
    }

}
