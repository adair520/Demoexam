//
//  CourseTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class CourseTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Course"

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cellid = "cellID"
        var cell = self.tableView.dequeueReusableCell(withIdentifier: cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
        }
        
        let date = NSDate()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "yyy-MM-dd 'at' HH:mm:ss:SSS"
        let strnowtime = timeFormatter.string(from: date as Date) as String
        
        cell?.textLabel?.text = strnowtime
        return cell!
    }
 

}
