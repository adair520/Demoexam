//
//  InsertTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/12.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class InsertTableViewController: UITableViewController {
    var lever = ["普通","困难","高手","大师","痛苦","王者","传奇"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setEditing(true, animated: true)
       
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return lever.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier:cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellid)
        }
        cell?.textLabel?.text = "插入和删除" + lever[indexPath.row]
        cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if indexPath.row % 2 == 0 {
            return .insert
        }else  {
            return .delete
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .insert {
            lever.insert("超级", at: indexPath.row)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }else{
            lever.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .right)
        }
    }
    

}
