//
//  IndexTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/16.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class IndexTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.frame = CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 20
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
         
       

        return cell
    }
 

}
