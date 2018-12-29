//
//  MineTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MineTableViewController: UITableViewController {
    
    let readme  = ["注释说明","语法说明","快速代码块","架构说明","设置"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = UIColor.darkGray
        self.navigationItem.title = "设置说明"
        tableView.tableFooterView = UIView()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return readme.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier:cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
        }
        cell?.textLabel?.text = readme[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        cell?.backgroundColor = UIColor.purple
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let readme = ReadMeViewController()
        let readmeother = ReadmeotherViewController()
        
        let arrreadme = [readme,readmeother]
        
        self.navigationController?.pushViewController(arrreadme[indexPath.row], animated: true)
    }
    

}
