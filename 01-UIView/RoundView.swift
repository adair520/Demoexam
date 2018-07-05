//
//  RoundView.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class RoundView: UIView {
    var color = UIColor.blue
    override init(frame:CGRect)
    {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    override func draw(_ rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        ctx?.clear(self.frame)
        ctx?.setFillColor(color.cgColor)
        ctx?.fillEllipse(in: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
