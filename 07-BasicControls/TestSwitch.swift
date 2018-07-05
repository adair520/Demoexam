//
//  TestSwitch.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class TestSwitch: UISwitch {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.frame = CGRect(x: 10, y: 300, width: 100, height: 50)
        self.setOn(true, animated: true)
        self.thumbTintColor = UIColor.blue
        self.onTintColor = UIColor.yellow
        self.tintColor = UIColor.brown
       // self.addTarget(self, action: #selector(TestSwitch.pressesChanged(_:with:)), for: .valueChanged)
        
    }
    @objc func pressesChanged(testSwitch:UISwitch){
        print("\(testSwitch)")
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        
        
    }
    

}
