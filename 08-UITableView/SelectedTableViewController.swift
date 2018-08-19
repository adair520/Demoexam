//
//  SelectedTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/12.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class SelectedTableViewController: UITableViewController {
    let lever = ["普通","困难","高手","大师","痛苦","王者","传奇"]
    override func viewDidLoad() {
        super.viewDidLoad()

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
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.accessoryType == UITableViewCellAccessoryType.none {
            cell?.accessoryType = UITableViewCellAccessoryType.detailDisclosureButton
            let acertVC = UIAlertController(title: "点击\(cell?.textLabel?.text ?? "")", message: "点击这个", preferredStyle: .alert)
            let action = UIAlertAction(title: "点击\(cell?.textLabel?.text ?? "")", style: .default, handler: nil)
            acertVC.addAction(action)
            self.present(acertVC, animated: true, completion: nil)
        }else{
            
            cell?.accessoryType = UITableViewCellAccessoryType.checkmark
           
            
        }
        
    }

}
