//
//  Media11ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/19.
//  Copyright © 2018年 adairwang. All rights reserved.
//
/*本部分包括动画、声音、视频
 1、动画部分：主要通过UIKit和Core Animation实现
 UIKit：修改如下属性：frame，bounds，center，transform，backgroundColor,contentStretch
 
 
 
 
 
 */
import UIKit

class Media11ViewController: UITableViewController {
   let contentlist = ["动画","音频","视频","综合","其他"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "多媒体技术"
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentlist.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellid"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = contentlist[indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        let animation = Animation11ViewController()
        let radio = Radio11ViewController()
        let video = Video11ViewController()
        let radioVideo = RadioVideo11ViewController()
        
        let vcList = [animation,radio,video,radioVideo]
        self.navigationController?.pushViewController(vcList[indexPath.row], animated: true)
        
    }
    
    
    

}
