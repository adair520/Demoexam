//
//  Web13ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/6.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Web13ViewController: UIViewController,UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bounds = UIScreen.main.bounds
        let frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        let webView = UIWebView(frame: frame)
        webView.delegate = self
        webView.backgroundColor = UIColor.clear
        
        let url = URL(string: "https://www.apple.com/")
        let urlRequest = NSURLRequest(url: url!)
        webView.loadRequest(urlRequest as URLRequest)
        
        self.view.addSubview(webView)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
