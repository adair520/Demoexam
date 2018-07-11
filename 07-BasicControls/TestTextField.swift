//
//  TestTextField.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class TestTextField: UITextField {
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.backgroundColor = UIColor.darkGray
        self.frame = CGRect(x: 100, y: 300, width: 100, height: 50)
        self.borderStyle = .roundedRect
        self.placeholder = "you email"
        self.autocorrectionType = .no
        self.returnKeyType = .done
        self.clearButtonMode = .whileEditing
        self.keyboardType = .emailAddress
        self.keyboardAppearance = .dark
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
       
    }
    
    
    
  

}
