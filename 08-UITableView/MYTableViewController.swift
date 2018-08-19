//
//  MYTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/16.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MYTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let screenRect = UIScreen.main.bounds.size
//        self.tableView.frame = CGRect(x: 0, y: 20, width: screenRect.width, height: screenRect.height)
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(MYTableViewController.openindextableview))
        
    }
    
//    @objc func  openindextableview(){
//        let indextableview = IndexTableViewController()
//        self.navigationController?.pushViewController(indextableview, animated: true)
//    }
//
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if ((indexPath as NSIndexPath).row % 2  == 0) {
            return 104
        }
        return 40
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "reuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
        if (cell == nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
            cell?.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)
        }
        if((indexPath as NSIndexPath).row % 2 == 0)
        {
            cell?.imageView?.image = UIImage(named: "tableviewcell")
            cell?.textLabel?.text = "修改了高度"
            cell?.detailTextLabel?.text = "副标题"
            
        }else
        {
            cell?.imageView?.image = UIImage(named: "tableviewcell")
            cell?.textLabel?.text = "没有修改高度"
            cell?.detailTextLabel?.text = "副标题"
        }
        return cell!
        

    }
 

    

    

}
