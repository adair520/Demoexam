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
        btn.setTitle("GET", for: UIControlState())
        btn.setTitleColor(.blue, for: UIControlState())
        btn.titleLabel?.textAlignment = .center
        btn.backgroundColor = UIColor.yellow
        btn.addTarget(self, action: #selector(Network1202ViewController.clickbtn2), for: .touchUpInside)
        self.view.addSubview(btn)
        let btn1 = UIButton(frame: CGRect(x: 40, y: 200, width: 200, height: 50))
        btn1.setTitle("POST", for: UIControlState())
        btn1.setTitleColor(.blue, for: UIControlState())
        btn1.titleLabel?.textAlignment = .center
        btn1.backgroundColor = UIColor.yellow
        btn1.addTarget(self, action: #selector(Network1202ViewController.clickbtn3), for: .touchUpInside)
        self.view.addSubview(btn1)
    }
     @objc func clickbtn2(){
        Alamofire.request( "https://httpbin.org/get",method:.get, parameters: ["foo": "bar"])
            .responseJSON { response in
                print("original URL request: \(String(describing: response.request))")  // original URL request
                print("URL response: \(String(describing: response.response))") // URL response
                print("server data: \(String(describing: response.data))")     // server data
                print("result of response serialization: \(response.result)")   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    
    }
    @objc func clickbtn3(){
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
                }
                
        }
        
    }

}
