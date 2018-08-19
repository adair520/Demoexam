//
//  SysTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class SysTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.tableView.frame  = rect
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
       cell?.imageView?.image = UIImage(named: "tableviewcell")
       cell?.textLabel?.text = "系统自带的tableview"
       cell?.detailTextLabel?.text = "详细标题文字"
        cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)

        return cell!
    }

}
