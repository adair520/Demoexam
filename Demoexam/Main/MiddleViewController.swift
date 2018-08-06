//
//  MiddleViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/24.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableviewlist:UITableView?
     let cellid = "SwiftCell"
    
    var list = ["01-UIView","02UIViewcontroller","03-UIScrollView","04-UITabbarController","05-UINavigationController","06-UITabbar+UINavivgation","07-BasicControls","08-UITableView","09-UICollectionView","10-触控技术","11-多媒体技术","12-网络请求","13-UIWebview","14-数据请求","15-多线程技术","16-Mapkit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Swift高级教程"
        self.tableviewlist = UITableView(frame: self.view.frame, style: .plain)
        self.tableviewlist?.delegate = self
        self.tableviewlist?.dataSource = self
        self.tableviewlist?.register(DetailViewController.self, forCellReuseIdentifier: cellid)
        self.view.addSubview(tableviewlist!)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.list.count
    }
    
    // UITableViewDataSource协议方法
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell
    {
       
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
        }
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = self.list[indexPath.row]
        
        return cell
    }
    
    // UITableViewDelegate协议方法，点击时调用
    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        // 跳转到detailViewController，取消选中状态
        self.tableviewlist!.deselectRow(at: indexPath as IndexPath, animated: true)
        // 创建DetailViewController
        let detailViewController = DetailViewController()
        // 传递控件的title，在detailView里用于判断生成响应的控件
        detailViewController.title = self.list[indexPath.row]
        // navigationController跳转到detailViewController
        self.navigationController!.pushViewController(detailViewController, animated:true)
    }
    
}

