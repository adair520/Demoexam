//
//  P01ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/10.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class P01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor.clear
         let webView = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
         webView.backgroundColor = UIColor.black
         let path = Bundle.main.path(forResource: "P01", ofType: "html")
        webView.loadRequest(URLRequest(url: URL(fileURLWithPath: path!)))
         self.view.addSubview(webView)
        
    }

}
