//
//  MutalProgress15ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MutalProgress15ViewController: UITableViewController {

    let contentlist = ["Thread","Operation","GCD","other"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "多线程"
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
        
        let thead = Thred15ViewController()
        let operation = Operation15ViewController()
        let gcd = GCD15ViewController()
        let other = UIViewController()
        
        let vcList = [thead,operation,gcd,other]
        self.navigationController?.pushViewController(vcList[indexPath.row], animated: true)
        
    }

}
