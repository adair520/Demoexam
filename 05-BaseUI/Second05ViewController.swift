//
//  Second05ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
var pageNum = 0
class Second05ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "第二页"
        self.view.backgroundColor = UIColor.purple
        pageNum = pageNum + 1
        self.title = "第\(pageNum)页"
        self.view.backgroundColor = UIColor.orange
        let push = UIButton(frame: CGRect(x: 40, y: 120, width: 240, height: 40))
        push.setTitle("Push Page", for: UIControl.State())
        push.addTarget(self, action: #selector(Second05ViewController.pushPage), for: .touchUpInside)
        self.view.addSubview(push)
        
        let pop = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 40))
        pop.setTitle("Pop Page", for: UIControl.State())
        pop.addTarget(self, action: #selector(Second05ViewController.popPage), for: .touchUpInside)
        self.view.addSubview(pop)
        
        let Index = UIButton(frame: CGRect(x: 40, y: 280, width: 240, height: 40))
        Index.setTitle("Goto Index", for: UIControl.State())
        Index.addTarget(self, action: #selector(Second05ViewController.gotoPage), for: .touchUpInside)
        self.view.addSubview(Index)
        
        let root = UIButton(frame: CGRect(x: 40, y: 340, width: 240, height: 40))
        root.setTitle("Goto Root page", for: UIControl.State())
        root.addTarget(self, action: #selector(Second05ViewController.gotoRootPage), for: .touchUpInside)
        self.view.addSubview(root)
    }
    @objc func pushPage(){
        let second05VC = Second05ViewController()
        self.navigationController?.pushViewController(second05VC, animated: true)
     
    }
    @objc func popPage(){
      self.navigationController?.popViewController(animated: true)
    
    }
    @objc func gotoPage(){
        let indexVC = self.navigationController?.viewControllers[2]
        self.navigationController?.popToViewController(indexVC!, animated: true)
    
    }
    @objc func gotoRootPage(){
        self.navigationController?.popToRootViewController(animated: true)
    }
  

}
