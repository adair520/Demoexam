//
//  BasicProgramViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/7.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class BasicProgramViewController: UITableViewController {
    let pragramlist = ["基础部分","数据类型","逻辑控制","函数和方法","闭包","构造和析构","扩展","协议","泛型","访问控制"]
    override func viewDidLoad() {
        self.title = "语法整理"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pragramlist.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = pragramlist[indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let P01 = P01ViewController()
        let P02 = UIViewController()
        let P03 = UIViewController()
        let P04 = UIViewController()
        let P05 = UIViewController()
        let P06 = UIViewController()
        let P07 = UIViewController()
        let P08 = UIViewController()
        let P09 = UIViewController()
        let P10 = UIViewController()
        
        
        let vcList = [P01,P02,P03,P04,P05,P06,P07,P08,P09,P10]
        self.navigationController?.pushViewController(vcList[indexPath.row], animated: true)
        
    }

}
