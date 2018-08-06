//
//  DetailViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/24.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置背景色
        self.view.backgroundColor = UIColor.white
        //按title加载控件
        loadControl(list: self.title!)
        
        //设置代码和控件展示切换按钮，增加到导航条的右侧
        //这里采用了navigationController不能增加navigationItem
        let btn = UIBarButtonItem(title:"代码", style: .plain, target: self,
                                  action: #selector(DetailViewController.btnCodeClicked))
        self.navigationItem.rightBarButtonItem = btn
    }
    
    func loadControl(list:String) {
        switch (list) {
        case "UILabel":
            let label = UILabel(frame: self.view.bounds)
            label.backgroundColor = UIColor.clear
            label.textAlignment = NSTextAlignment.center
            label.font = UIFont.systemFont(ofSize: 36)
            label.text = "Hello, hangge.com"
            self.view.addSubview(label)
        case "UIButton":
           // let button = UIButton(frame: CGRect(110.0,120.0,100.0,60.0))
            let button = UIButton(frame:CGRect(x: 110, y: 120, width: 100, height: 60))
            button.backgroundColor = UIColor.blue
            button.setTitleColor(UIColor.red, for: UIControlState.normal)
            button.setTitleColor(UIColor.white, for: UIControlState.highlighted)
            button.setTitle("点击我", for: .normal)
            
            button.addTarget(self, action: #selector(DetailViewController.buttonClicked), for: .touchUpInside)
            
            self.view.addSubview(button)
        case "UIImageView":
            let image = UIImage(named: "swift.png")
//            let imageView = UIImageView(frame:
//                CGRectMake((CGRectGetWidth(self.view.bounds) - image!.size.width) / 2.0, 120.0,
//                           image!.size.width, image!.size.height))
            let imageView = UIImageView(frame: CGRect(x: (self.view.bounds.width-(image?.size.width)!)/2, y: 120, width: (image?.size.width)!, height: (image?.size.height)!))
            
            imageView.image = image!
            self.view.addSubview(imageView)
        case "UISlider":
            //let slider = UISlider(frame:CGRectMake(60.0, 120.0, 200.0, 30.0))
            let slider = UISlider(frame: CGRect(x: 60, y: 120, width: 200, height: 30))
            self.view.addSubview(slider)
        case "UIWebView":
            let webView = UIWebView(frame:self.view.bounds)
            let url = URL(string: "http://www.hangge.com")
            let request = URLRequest(url:url!)
            webView.loadRequest(request)
            self.view.addSubview(webView)
            
        default:
            print("control name: \(list)")
        }

 }
    //显示控件的代码
    func loadCode(list:String) {
        var str:String
        switch (list) {
        case "UILabel":
            str = "let label = UILabel(frame: self.view.bounds)\n"
            str += "label.backgroundColor = UIColor.clearColor()\n"
            str += "label.textAlignment = NSTextAlignment.Center\n"
            str += "label.font = UIFont.systemFontOfSize(36)\n"
            str += "label.text = \"Hello, Ucai\"\n"
            str += "self.view.addSubview(label)"
        case "UIButton":
            str = "UIButton"
        case "UISlider":
            str = "let slider = UISlider(frame:CGRectMake(60.0, 120.0, 200.0, 30.0))\n"
            str += "self.view.addSubview(slider)"
        default:
            str = "other ctrl"
        }
        
        //在导航条下方位置显示源代码
        // let txt = UITextView(frame: CGRect(0, 60, self.view.bounds.size.width,self.view.bounds.size.height - 60))
        let txt = UITextView(frame:CGRect(x: 0, y: 60, width: self.view.bounds.size.width, height: self.view.bounds.size.height - 60))
        txt.text = str
        self.view.addSubview(txt)
    }
    //清空所有子视图
    func clearViews() {
        for v in self.view.subviews as [UIView] {
            v.removeFromSuperview()
        }
    }
    
   @objc func buttonClicked() {
        print("you clicked button")
    }
    
    //显示控件的代码
   @objc func btnCodeClicked() {
        print("title: \(String(describing: self.title))")
        clearViews()
        if self.navigationItem.rightBarButtonItem!.title == "代码" {
            loadCode(list: self.title!)
            self.navigationItem.rightBarButtonItem!.title = "效果"
        }
        else {
            self.navigationItem.rightBarButtonItem!.title = "代码"
            loadControl(list: self.title!)
        }
    }
    /*
     func btnBackClicked(sender:AnyObject) {
     self.navigationController.navigationBar.popNavigationItemAnimated(true)
     }
     */
}
