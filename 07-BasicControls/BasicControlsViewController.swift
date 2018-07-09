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
        let btn = UIButton(frame: CGRect(x: 50, y: 200, width: 100, height: 30))
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(BasicControlsViewController.openrefreshvc), for: .touchUpInside)
        let testSwitch = TestSwitch()
        testSwitch.addTarget(self, action: #selector(BasicControlsViewController.switchChange), for: .valueChanged)
        
        let testTextfield = TestTextField()
        
        self.view.addSubview(btn)
        self.view.addSubview(testlabel)
        self.view.addSubview(testbutton)
        self.view.addSubview(testSwitch)
        self.view.addSubview(testTextfield)
        
        
    }
    @objc func openrefreshvc(){
        let refreshvc = RefreshViewController()
        self.navigationController?.pushViewController(refreshvc, animated: true)
    }
    @objc func switchChange(){
        print("switchChanged")
    }
    


}
