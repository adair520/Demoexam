//
//  HomeTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/6.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let contentList = ["01.视图和布局","02.控制器","03.滚动视图","04.选项卡",
                       "05.常用组件","06.通用框架",
                       "07.基本控制器","08.列表","09.集合技术","10.触控技术","11.多媒体技术","12.网络请求",
                       "13.网页加载","14.数据存储","15.多线程技术","16.MapKit","17.图文混排","18.图像和视频处理","19.常用设备",
                       "20.Storyboard","21.测试技术","22.内存泄露检测","23.本地化应用","24.加密和安全",
                       "25.Model层框架","26.项目案例","27.打包和发布"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        setupleftbtn()
        setuprightbtn()
        
    }

    
   func setupleftbtn(){
    let leftitem = UIBarButtonItem(title: "语法", style: .plain, target: self, action: #selector(HomeTableViewController.openleftVC))
        self.navigationItem.leftBarButtonItem = leftitem
        
    }
   
   func setuprightbtn(){
        let rightitem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(HomeTableViewController.openrightVC))
        rightitem.title = "点击右边边"
        self.navigationItem.rightBarButtonItem = rightitem
        
    }
    @objc  func openleftVC(){
        let basicprogram = BasicProgramViewController()
        basicprogram.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(basicprogram, animated: true)
    }
    @objc   func openrightVC(){
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return contentList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        }
        cell?.imageView?.image = UIImage(named: "titlecell")
        cell?.textLabel?.text = contentList[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)

        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let test01 = TestViewController()
        let test02 = OldViewController()
        let test03 = PageViewController()
        let test04 = Test04TabbarViewController()
        let test05 = BaseUI05()
        let test06 = Test06TabbarViewController()
        let test07 = BasicControlsViewController()
        let test08 = Test08TableviewViewController()
        let test09 = Test09CollectionViewController()
        let test10 = Gesture10TableViewController()
        let test11 = Media11ViewController()
        let test12 = Network12ViewController()
        let test13 = Web13ViewController()
        let test14 = Store14ViewController()
        let test15 = MutalProgress15ViewController()
        let test16 = Mapkit16ViewController()
        let test17 = MutalText17ViewController()
        let test18 = ImageAndVideoViewController()
        let test19 = Device19ViewController()
        let test20 = Storyboard20ViewController()
        let test21 = Test21ViewController()
        let test22 = CheckMem22ViewController()
        let test23 = Local23ViewController()
        let test24 = Decode_andEncode24ViewController()
        let test25 = Archive27ViewController()
        let test26 = ProDemo26ViewController()
        let test27 = Archive27ViewController()
       
        
       
        let contentListVC = [test01,test02,test03,test04,test05,test06,test07,test08,test09,test10,test11,test12,test13,test14,
                             test15,test16,test17,test18,test19,test20,test21,test22,test23,test24,test25,test26,test27]
        self.navigationController?.pushViewController(contentListVC[indexPath.row], animated: true)
        //self.present(contentListVC[indexPath.row], animated: true, completion: nil)
        
    }

}
