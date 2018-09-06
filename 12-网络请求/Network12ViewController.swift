//
//  Network12ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/28.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
//1、判断网络是否联通及连接方式
//2、GET和POST请求
//3、文件上传和进度显示
//4、文件下载和进度显示
class Network12ViewController: UITableViewController {
   let contentlist = ["判断网络是否联通及连接方式","GET和POST请求","文件上传和文件下载","网络请求基本使用"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contentlist.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier:cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
        }
        cell?.textLabel?.text = contentlist[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let networkVC = Network1201ViewController()
        let GetPotVC = Network1202ViewController()
        let upfile = Network1203ViewController()
        let downfile = Network1204ViewController()
        let selectVC = [networkVC,GetPotVC,upfile,downfile]
        self.navigationController?.pushViewController(selectVC[indexPath.row], animated: true)
    }
    


}
