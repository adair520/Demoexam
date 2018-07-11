//
//  Test08TableviewViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/5.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test08TableviewViewController: UIViewController,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let screenRect = UIScreen.main.bounds
        let tableRect = CGRect(x: 0, y: 20, width: screenRect.width, height: screenRect.height)
        let tableView = UITableView(frame: tableRect)
        tableView.dataSource = self
        self.view.addSubview(tableView)
       
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell:Test08Tableviewcell?  = tableView.dequeueReusableCell(withIdentifier: cellID) as? Test08Tableviewcell
        if (cell == nil){
            cell = Test08Tableviewcell(style: .default, reuseIdentifier: cellID)
            
        }
        cell?.title?.text = "客户姓名"
        return cell!
    }

}
