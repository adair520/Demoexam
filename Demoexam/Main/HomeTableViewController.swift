//
//  HomeTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/6.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let contentList = ["01.UIView和CALayer","02.UIViewController","03.UIScrollView","04.UITabbarController","05.UITabbarVC+UINavigationbarVC",
                       "06.BasicController","07.UITableviewVC","08.UICollectionView","09.触控技术","20.多媒体技术","21.网络请求","22.UIWebView+HTML5","23.数据存储","24.多线程技术","25.MapKit"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return contentList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = contentList[indexPath.row]
        cell?.accessoryType = .disclosureIndicator

        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let test01 = TestViewController()
        let test02 = OldViewController()
        let test03 = PageViewController()
        let test04 = Test04TabbarViewController()
        let test05 = First05ViewController()
        let test06 = Test06TabbarViewController()
        let test07 = BasicControlsViewController()
        let test08 = Test08TableviewViewController()
        let test09 = Test09CollectionViewController()
       
        let contentListVC = [test01,test02,test03,test04,test05,test06,test07,test08,test09]
        
        self.present(contentListVC[indexPath.row], animated: true, completion: nil)
        
    }

}
