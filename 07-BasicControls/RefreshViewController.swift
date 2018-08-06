//
//  RefreshViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/5.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class RefreshViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var refreshControl = UIRefreshControl()
    var tableview  = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        tableview = UITableView(frame: self.view.frame)
        
      //self.automaticallyAdjustsScrollViewInsets = false
        refreshControl.addTarget(self, action: #selector(RefreshViewController.openrefresh), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "松开自动刷新")
        tableview.delegate = self
        tableview.dataSource = self
        self.tableview.addSubview(refreshControl)
        self.view.addSubview(tableview)
        
        refreshData()
    }
    @objc func openrefresh(){
        
    }
    func refreshData(){
        tableview.reloadData()
        refreshControl.endRefreshing()
        print("调用了")
    }
    
    //实现协议
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cellid = "cellID"
        var cell = tableview.dequeueReusableCell(withIdentifier: cellid)
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
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        let basiccontrol = BasicControlsViewController()
        self.present(basiccontrol, animated: true, completion: nil)
    }
    
    

}
