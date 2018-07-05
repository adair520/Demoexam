//
//  BasicControlsViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/1.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class BasicControlsViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let testlabel = TestLabel()
        let testbutton = TestButton()
        let testSwitch = TestSwitch()
        testSwitch.addTarget(self, action: #selector(BasicControlsViewController.switchChange), for: .valueChanged)
        //let testRefresh = TestRefreshControl()
        let testTextfield = TestTextField()
        self.view.addSubview(testlabel)
         self.view.addSubview(testbutton)
         self.view.addSubview(testSwitch)
        // self.view.addSubview(testRefresh)
         self.view.addSubview(testTextfield)
        
        
    }
    @objc func switchChange(){
        print("switchChanged")
    }
    


}
