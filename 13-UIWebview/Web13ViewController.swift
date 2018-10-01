//
//  Web13ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/6.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit


class Web13ViewController: UIViewController,UIWebViewDelegate {
    var webview:UIWebView!
    var loadtype:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWebview()
        setupLoadtype()
  
    }
    
    func setupLoadtype(){
        self.loadtype = UISegmentedControl(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 50))
        self.loadtype.backgroundColor = UIColor.gray
        self.loadtype.selectedSegmentIndex = 0
        self.view.addSubview(loadtype)
        self.loadtype.addTarget(self, action: #selector(Web13ViewController.typechange(_:)), for: .touchUpInside)
        
    }
    func setupWebview(){
        let bounds = UIScreen.main.bounds
        let frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        self.webview = UIWebView(frame: frame)
        self.webview.delegate = self
        self.webview.backgroundColor = UIColor.orange
    }
    
    @objc func typechange(_ sender:UISegmentedControl){
        let index = sender.selectedSegmentIndex
        switch index {
        case 0:
            let http = "www.baidu.com"
            sender.setTitle("加载网页", forSegmentAt: 0)
            self.webview.loadHTMLString(http, baseURL: nil)
        case 1:
             sender.setTitle("加载图片", forSegmentAt: 1)
            let path = Bundle.main.path(forResource: "test", ofType: "png")
            let urlStr = URL(fileURLWithPath: path!)
            self.webview.loadRequest(URLRequest(url: urlStr))
        case 2:
            sender.setTitle("加载Data数据", forSegmentAt: 2)
            let path = Bundle.main.path(forResource: "test", ofType: "png")
            let urlStr = URL(fileURLWithPath: path!)
            let data = try! Data(contentsOf: urlStr)
            self.webview.load(data, mimeType: "png", textEncodingName: "utf-8", baseURL: NSURL() as URL)
        case 3:
            sender.setTitle("加载Html", forSegmentAt: 3)
            let html = "<h1>欢迎来到：<a href='www.apple.com'>apple</a></h1>"
            self.webview.loadHTMLString(html, baseURL: nil)
        default:
            print("出错了格")
        }
        
    
    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

}
