//
//  SQLLite14ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import SQLite3
//$(SRCROOT)/PrefixHeader.h
class SQLLite14ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    /*
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let db = try? Connection("\(path)/db.sqlite3")
        let users = Table("users")
        let id = Expression<Int64>("id")
        let name = Expression<String?>("name")
        let email = Expression<String>("email")
        
        try! db?.run(users.create(ifNotExists: true, block: { (table) in
            table.column(id, primaryKey: true)
            table.column(name)
            table.column(email, unique: true)
        }))
 */
            
        
    }

}
