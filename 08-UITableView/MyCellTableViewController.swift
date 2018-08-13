//
//  MyCellTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MyCellTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
        if (cell == nil) {
            cell = Test08Tableviewcell(style: UITableViewCellStyle.default, reuseIdentifier: cellid)
        }
         cell?.textLabel?.text = "自定义的cell"
        return cell!
    }
}
