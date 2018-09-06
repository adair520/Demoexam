//
//  Network1204ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/28.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import Alamofire

class Network1204ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1、不带参数，不带结果处理
        Alamofire.request("https://httpbin.org/get")
        //3、带参数，不带结果处理
        Alamofire.request("https://httpbin.org/get", parameters: ["foo": "bar"])
        //3、带参数，也带结果处理（这里以返回结果为json格式的为例）
        Alamofire.request("https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request ?? "")  // original URL request
                print(response.response ?? "") // URL response
                print(response.data ?? "")     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)") //具体如何解析json内容可看下方“响应处理”部分
                }
        }
        print(self.view.frame)
        
    }

}
