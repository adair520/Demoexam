//
//  TestButton.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/25.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class TestButton: UIButton {
    override init(frame: CGRect) {
        super .init(frame: frame)
        //1. 按钮有下面四种类型：
        /*
         UIButtonType.ContactAdd：前面带“+”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.DetailDisclosure：前面带“!”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.System：前面不带图标，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.Custom：定制按钮，前面不带图标，默认文字颜色为白色，无触摸时的高亮效果
         UIButtonType.InfoDark：为感叹号“!”圆形按钮
         UIButtonType.InfoLight：为感叹号“!”圆形按钮
         */
        //创建一个ContactAdd类型的按钮
       
        //设置按钮位置和大小
        self.frame = CGRect(x: 200, y:64, width: 100, height: 50)
        //设置按钮文字
        self.setTitle("按钮", for:UIControlState.normal)
        
        //2.对于Custom定制类型按钮，代码可简化为：
        
        //let button = UIButton(frame:CGRectMake(10, 150, 100, 30))
        
        //3.按钮的文字设置
        
        self.setTitle("普通状态", for:UIControlState.normal) //普通状态下的文字
        self.setTitle("触摸状态", for:UIControlState.highlighted) //触摸状态下的文字
        self.setTitle("禁用状态", for:UIControlState.disabled) //禁用状态下的文字
        
        //4.按钮文字颜色的设置
        
        self.setTitleColor(UIColor.black,for:.normal) //普通状态下文字的颜色
        self.setTitleColor(UIColor.green,for:.highlighted) //触摸状态下文字的颜色
        self.setTitleColor(UIColor.gray,for:.disabled) //禁用状态下文字的颜色
        
        //5.按钮文字阴影颜色的设置
        
        self.setTitleShadowColor(UIColor.green,for:.normal) //普通状态下文字阴影的颜色
        self.setTitleShadowColor(UIColor.yellow,for:.highlighted) //普通状态下文字阴影的颜色
        self.setTitleShadowColor(UIColor.gray,for:.disabled) //普通状态下文字阴影的颜色
        
        //6. 按钮背景颜色设置
        
        self.backgroundColor=UIColor.black
        
        //7.按钮文字图标的设置
        
        self.setImage(UIImage(named:"icon1"),for:.normal)  //设置图标
        self.adjustsImageWhenHighlighted=false //使触摸模式下按钮也不会变暗
        self.adjustsImageWhenDisabled=false //使禁用模式下按钮也不会变暗
        
        //8.设置按钮背景图片
        
        self.setBackgroundImage(UIImage(named:"background1"),for:.normal)
        
        //9.按钮触摸点击事件响应
        
        //不传递触摸对象（即点击的按钮）
        self.addTarget(self,action:#selector(TestButton.tapped1),for:.touchUpInside)
        
        //传递触摸对象（即点击的按钮），需要在定义action参数时，方法名称后面带上冒号
        // button.addTarget(self,action:#selector(BasicControlsViewController.tapped2(_:)),for:.touchUpInside)
        
        
        //常用的触摸事件类型：
        /*
         TouchDown：单点触摸按下事件，点触屏幕
         TouchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
         TouchDragInside：触摸在控件内拖动时
         TouchDragOutside：触摸在控件外拖动时
         TouchDragEnter：触摸从控件之外拖动到内部时
         TouchDragExit：触摸从控件内部拖动到外部时
         TouchUpInside：在控件之内触摸并抬起事件
         TouchUpOutside：在控件之外触摸抬起事件
         TouchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断
         */
    }
    @objc func tapped1(){
        print("tapped")
    }
    @objc func tapped2(btn:UIButton){
        print(btn.title(for: .normal) ?? "")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

