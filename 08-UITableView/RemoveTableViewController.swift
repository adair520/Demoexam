//
//  RemoveTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/12.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class RemoveTableViewController: UITableViewController {
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
        cell?.textLabel?.text = lever[indexPath.row]
        cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)

        return cell!
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
       
        let levercurrent = lever[fromIndexPath.row]
        lever.remove(at: fromIndexPath.row)
        lever.insert(levercurrent, at: to.row)
        
    }

}
