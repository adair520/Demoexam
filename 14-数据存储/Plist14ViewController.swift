//
//  Plist14ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Plist14ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         readPlist()
         writePlist()
        
    }
    func readPlist(){
        let plistPath = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let data:NSMutableDictionary = NSMutableDictionary.init(contentsOfFile: plistPath!)!
        let message = data.description
        let alert = UIAlertController(title: "information", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    func writePlist(){
        let dic:NSMutableDictionary = NSMutableDictionary()
        dic.setValue("wangmingyang", forKey: "Name")
        dic.setValue(22, forKey: "Age")
        let plistPath = Bundle.main.path(forResource: "Property List", ofType: "plist")
        dic.write(toFile: plistPath!, atomically: true)
        
    }

}
