//
//  TestLabel.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class TestLabel: UILabel {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        let rect:CGRect = CGRect(x: 10, y: 64, width: 100, height: 50)
        self.frame = rect
        //设置Label背景颜色
        self.backgroundColor = UIColor.purple
        //设置label的字体颜色(系统颜色)
        self.textColor = UIColor.black
        /**设置label的字体颜色(RGB）
         self.textColor = UIColor.init(red: 255, green: 255, blue: 0, alpha: 1)
         */
        //设置Label的字体大小
        self.font = UIFont.systemFont(ofSize: 30)
        /**
         设置字体的大小和样式
         label.font = UIFont.init(name: "Thonburi", size: 30)
         */
        //对齐方式
        self.textAlignment = NSTextAlignment.center
        //阴影颜色
        self.shadowColor = UIColor.white
        //阴影偏移大小
        self.shadowOffset = CGSize.init(width: 3, height: 4)
        //显示内容
        self.text = "Swift-Demo"
        //文字过长时的省略方式
        /**
         byTruncatingTail  //隐藏尾部并显示省略号
         byTruncatingMiddle  //隐藏中间部分并显示省略号
         byTruncatingHead  //隐藏头部并显示省略号
         byClipping  //截去多余部分也不显示省略号
         */
        self.lineBreakMode = .byTruncatingTail//原形NSLineBreakMode.byTruncatingTail
        //显示两行文字（默认只显示一行，设为0表示没有行数限制）
        self.numberOfLines = 2
        //设置文本为高亮
        self.isHighlighted = true
        //设置文本高亮的颜色
        self.highlightedTextColor = UIColor.blue
        /*
         //富文本设置
         let attributeString = NSMutableAttributedString.init(string: "welcome to Swift 我是车神")
         //从文本0开始6个字符字体HelveticaNeue-Bold,16号
         attributeString.addAttribute(NSFontAttributeName, value: UIFont.init(name: "HelveticaNeue-Bold", size: 23) ?? UIFont.boldSystemFont(ofSize: 23), range: NSRange.init(location: 0, length: 6))
         //设置富文本字体颜色
         attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.brown, range: NSMakeRange(0, 6))
         //设置文字背景颜色
         attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.red, range: NSMakeRange(6, 5))
         label.attributedText = attributeString
         */
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        self.frame = CGRect(x: 20, y: 64, width: 100, height: 100)
        
        
    }
}
