//
//  CourseTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class CourseTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupleftbtn()
        setuprightbtn()
        
    }
    func setupleftbtn(){
        let leftitem = UIBarButtonItem(title: "电子书", style: .plain, target: self, action: #selector(CourseTableViewController.openleftebookVC))
        self.navigationItem.leftBarButtonItem = leftitem
        
    }
    
    func setuprightbtn(){
        let rightitem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(CourseTableViewController.openRightebookVC))
        rightitem.title = "其他版本"
        self.navigationItem.rightBarButtonItem = rightitem
        
    }
    @objc func openleftebookVC(){
        self.navigationController?.pushViewController(EbookViewController()
            , animated: true)
    }
    @objc func openRightebookVC(){
        
    }
}


