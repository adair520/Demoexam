
//
//  Gesture10TableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/14.
//  Copyright © 2018年 adairwang. All rights reserved.
//
/*UIResponder提供四个方法处理用户触屏事件：1、touchesBegin 2、touchesMove 3、touchesEnd 4、touchesCanceled(系统事件发生时调用）*/
import UIKit

class Gesture10TableViewController: UITableViewController {
    let cellID = "cellid"
    let gesturelist = ["触摸手势监测","监测触摸到视图","视图移动","单点触摸","双击触摸","长按触摸","捏合手势","3DTouch技术"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "触控技术"
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return gesturelist.count
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = gesturelist[indexPath.row]
        cell.imageView?.image = UIImage(named: "tableviewcell")
        cell.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let checkGesture = CheckGesture10ViewController()
        let gestureVC = [checkGesture]
       
        self.navigationController?.pushViewController(gestureVC[indexPath.row], animated: true)
    }
 



 

}
