//
//  Test08TableviewViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/5.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test08TableviewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let tablecontents = ["系统Tableview","自定义TableviewCell","修改TableviewCell高度","Tableview添加索引和章节","TableviewCell选择和取消","TableviewCell插入和删除","移动TableviewCell","Tableview嵌套"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "表格视图"
        self.view.backgroundColor = UIColor.lightGray
        let screenRect = UIScreen.main.bounds
        let tableRect = CGRect(x: 0, y: 20, width: screenRect.width, height: screenRect.height)
        let tableView = UITableView(frame: tableRect)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
//
//        let item1 =  UIBarButtonItem(barButtonSystemItem: .done, target:self, action: #selector(Test08TableviewViewController.openrightbuttonitem))
//        let item2 = UIBarButtonItem(barButtonSystemItem: .add, target:self, action: #selector(Test08TableviewViewController.openrightitem2buttonitem))
//
//        self.navigationItem.rightBarButtonItems = [item1,item2]
       
//    }
//    @objc func openrightitem2buttonitem(){
//        let mytableview = MYTableViewController()
//        self.navigationController?.pushViewController(mytableview, animated: true)
//    }
//    @objc func openrightbuttonitem(){
//        
//          let indextableview = IndexTableViewController()
//          self.navigationController?.pushViewController(indextableview, animated: true)
//        
        }
    
    //MARK:代理方法实现
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tablecontents.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
            
        }
         cell?.textLabel?.text = tablecontents[indexPath.row]
         cell?.imageView?.image = UIImage(named: "tableviewcell")
         cell?.accessoryType = .disclosureIndicator
      
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let test01 =  SysTableViewController()
        let test02 =  MyCellTableViewController()
        let test03 =  MYTableViewController()
        let test04 =  IndexTableViewController()
        let test05 =  SelectedTableViewController()
        let test06 =  InsertTableViewController()
        let test07 =  RemoveTableViewController()
        let test08 =  NestedTableViewController()
        
        let contentListVC = [test01,test02,test03,test04,test05,test06,test07,test08]
        self.navigationController?.pushViewController(contentListVC[indexPath.row], animated: true)
       
    }
   
    
    
    

}
