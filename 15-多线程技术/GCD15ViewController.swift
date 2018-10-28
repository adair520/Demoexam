//
//  GCD15ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class GCD15ViewController: UIViewController {
   var label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
        label.text = "Loading..."
        label.font = UIFont(name: "Arial", size: 24)
        label.backgroundColor = UIColor.orange
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.view.addSubview(label)
        
        let apiURL = URL(string: "http://ip.taobao.com/service/getIpInfo.php?ip=27.156.152.57")
        
        let globalQueue = DispatchQueue.global()
        globalQueue.async{
            let result = try? Data(contentsOf: apiURL!)
            let message  = String(data: result!, encoding: String.Encoding.utf8)
            DispatchQueue.main.async
                {
                    self.label.text = message
            }
        }
        

    }

}
