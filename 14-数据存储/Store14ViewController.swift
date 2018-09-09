//
//  Store14ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Store14ViewController: UITableViewController {
   let contentlist = ["Plist","对象归档","SQLLite3","CoreData"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "数据存储"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentlist.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = contentlist[indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let plist = Plist14ViewController()
        let object = Object14ViewController()
        let sqllite = SQLLite14ViewController()
        let coredata = CoreDate14ViewController()
        
        let vcList = [plist,object,sqllite,coredata]
        self.navigationController?.pushViewController(vcList[indexPath.row], animated: true)
        
    }

}
