//
//  CheckGesture10ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/17.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class CheckGesture10ViewController: UIViewController {
   var textview = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isMultipleTouchEnabled = true
        textview = UITextView(frame: CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: 100))
        textview.backgroundColor = UIColor.lightGray
        self.view.addSubview(textview)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("start开始点击")
        let message = "start开始点击"
        textview.text = message
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Move移动事件")
        let message = "Move移动事件"
         textview.text = message
       
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("End结束事件")
        let message = "End结束事件"
         textview.text = message
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Cancel取消事件")
        let message = "Cancel取消事件"
        textview.text = message
    }
    
}
