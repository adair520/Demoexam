//
//  Network1201ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/28.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import Alamofire
class Network1201ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "检测网络环境"
        let btn = UIButton(frame: CGRect(x: 40, y: 100, width: 200, height: 50))
        btn.setTitle("开始检测", for: UIControl.State())
        btn.setTitleColor(.blue, for: UIControl.State())
        btn.titleLabel?.textAlignment = .center
        btn.backgroundColor = UIColor.yellow
        btn.addTarget(self, action: #selector(Network1201ViewController.clickbtn), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    @objc func clickbtn() {
        var message = "当前无网络"
        print("点击了")
        let status:NetworkReachabilityManager.NetworkReachabilityStatus = MyNetworkReachabilityManager.sharedManager.networkReachabilityStatus()
        switch status {
        case .notReachable:
            message = "当前无网络"
            print(message)
            break
        case .reachable(NetworkReachabilityManager.ConnectionType.ethernetOrWiFi    ):
            message = "当前是WI-FI网络"
            print(message)
            break
        case .reachable(NetworkReachabilityManager.ConnectionType.wwan):
            message = "当前是3G和4G网络"
            print(message)
            break
        default:
            message = "当前无网络"
            print(message)
            break
            
        }
        let alert = UIAlertController(title: "Information", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }

}
