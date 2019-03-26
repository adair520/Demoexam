//
//  Network1202ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/28.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import Alamofire

class Network1202ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "GET和POST"
        let btn = UIButton(frame: CGRect(x: 40, y: 100, width: 200, height: 50))
        btn.setTitle("GET", for: UIControl.State())
        btn.setTitleColor(.blue, for: UIControl.State())
        btn.titleLabel?.textAlignment = .center
        btn.backgroundColor = UIColor.yellow
        btn.addTarget(self, action: #selector(Network1202ViewController.clickbtn), for: .touchUpInside)
        self.view.addSubview(btn)
        let btn1 = UIButton(frame: CGRect(x: 40, y: 200, width: 200, height: 50))
        btn1.setTitle("POST", for: UIControl.State())
        btn1.setTitleColor(.blue, for: UIControl.State())
        btn1.titleLabel?.textAlignment = .center
        btn1.backgroundColor = UIColor.purple
        btn1.addTarget(self, action: #selector(Network1202ViewController.clickbtn1), for: .touchUpInside)
        self.view.addSubview(btn1)
        let btn2 = UIButton(frame: CGRect(x: 40, y: 300, width: 200, height: 50))
        btn2.setTitle("Delete", for: UIControl.State())
        btn2.setTitleColor(.blue, for: UIControl.State())
        btn2.titleLabel?.textAlignment = .center
        btn2.backgroundColor = UIColor.lightGray
        btn2.addTarget(self, action: #selector(Network1202ViewController.clickbtn2(_:)), for: .touchUpInside)
        self.view.addSubview(btn2)
        print(self.view.frame)
    }
     
     @objc func clickbtn(){
        print("点击了")
        Alamofire.request( "https://httpbin.org/get",method:.get, parameters: ["foo": "bar"])
            .responseJSON { response in
                print("original URL request: \(String(describing: response.request))")  // original URL request
                print("URL response: \(String(describing: response.response))") // URL response
                print("server data: \(String(describing: response.data))")     // server data
                print("result of response serialization: \(response.result)")   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    let message = "Get请求结果\(response.result)"
                    let alert = UIAlertController(title: "Information", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }
        }
    
    }
    @objc func clickbtn1(){
         print("点击了")
        let parameters = [
            "foo": "bar",
            "baz": ["a", 1],
            "qux": [
                "x": 1,
                "y": 2,
                "z": 3
            ]
            ] as [String : Any]
        Alamofire.request("https://httpbin.org/post",method:.post, parameters: parameters)
            .responseJSON { response in
                print("original URL request: \(String(describing: response.request))")  // original URL request
                print("URL response: \(String(describing: response.response))") // URL response
                print("server data: \(String(describing: response.data))")     // server data
                print("result of response serialization: \(response.result)")   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    let message = "POST请求结果\(response.result)"
                    let alert = UIAlertController(title: "Information", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }
                
        }
        
    }
    
    @objc func clickbtn2(_ button: UIButton){
           print("点击了")
        
    }

}
