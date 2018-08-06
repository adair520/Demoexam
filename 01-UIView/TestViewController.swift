//
//  TestViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加返回按钮
        let btnback = UIButton(frame: CGRect(x:UIScreen.main.bounds.size.width/2 , y: UIScreen.main.bounds.size.height-100, width: 100, height: 40))
        btnback.backgroundColor = UIColor.darkGray
        btnback.titleLabel?.textColor = UIColor.white
        btnback.titleLabel?.text = "返回"
        btnback.titleLabel?.textAlignment = .center
        btnback.addTarget(self, action: #selector(TestViewController.returnback), for: .touchUpInside)
        self.view.addSubview(btnback)

        /*UIView的外观属性*/
        self.view.backgroundColor = UIColor.white
        let view = UIView(frame: CGRect(x: 40, y: 80, width: 240, height: 240))
        view.backgroundColor = UIColor.purple
        view.bounds = CGRect(x: -50, y: -50, width: 250, height: 250)//bounds的x和y描述的是自身的坐标原点
        print(view.bounds)
        let subview = UIView(frame: CGRect(x: 40, y: 50, width: 240, height: 240))
        subview.backgroundColor = UIColor.brown
        view.addSubview(subview)
        view.clipsToBounds=true //
        
        self.view.addSubview(view)
        print(view)
        /*
        /*view的几何属性*/
        
        let  frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        let view1 = UIView(frame: frame)
        view1.bounds = CGRect(x: -50, y: -50, width: 200, height: 200) //默认bounds原点在（0.0）设置后只影响子视图的位置，本视图位置由self.view确定
        view1.backgroundColor = UIColor.black
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        subView.backgroundColor = UIColor.purple
        view.addSubview(subView)
        
        self.view.addSubview(view)
        print(view.center)
        
        
        /*view的嵌套和层次*/
        
        let firstView = UIView(frame: CGRect(x: 20, y: 40, width: 200, height: 200))
        firstView.backgroundColor = UIColor.black
        
        let secondView = UIView(frame: CGRect(x: 50, y: 70, width: 200, height: 200))
        secondView.backgroundColor = UIColor.darkGray
        
        let threeView = UIView(frame: CGRect(x: 80, y: 100, width: 200, height: 200))
        threeView.backgroundColor = UIColor.lightGray
        
        self.view.addSubview(firstView)
        self.view.addSubview(secondView)
        self.view.addSubview(threeView)
        //第三个页面插入第二个
        self.view.insertSubview(threeView, belowSubview: secondView)
        //第一个放到当前根视图前面
        self.view.bringSubview(toFront: firstView)
        //移除第一个view
        firstView.removeFromSuperview()
        
        /*view的交互属性*/
        
        let touchView = UIView(frame: CGRect(x: 60, y: 60, width: 200, height: 200))
        touchView.backgroundColor = UIColor.black
        self.view.addSubview(touchView)
        
        let guesture1 = UITapGestureRecognizer(target: self, action: #selector(TestViewController.SingleTap))
        touchView.addGestureRecognizer(guesture1)
        
        /*仿射变换*/
        
        let view5 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view5.center = self.view.center
        view5.backgroundColor = UIColor.black
        self.view.addSubview(view5)
        let transform = view5.transform
        // view.transform = transform.translatedBy(x: 0, y: 100) //平移
        // view.transform = transform.scaledBy(x: 1.5, y: 1.5)   //缩放
        view5.transform = transform.rotated(by: 3.14/4) //旋转
        view5.transform.a = 1.0
        view5.transform.b = 0.5
        view5.transform.c = 0.5
        view5.transform.d = 1.0
        view5.transform.tx = 0.0
        view5.transform.ty = 0.0
        
        /*自定义view*/
        
        let roundView = RoundView(frame: CGRect(x: 40, y: 40, width: 240, height: 240))
        roundView.color = UIColor.green
        self.view.addSubview(roundView)
        
        //CAlayer层
        //边框
        let view2 = UIView(frame: CGRect(x: 60, y: 60, width: 200, height: 200))
        view2.backgroundColor = UIColor.black
        view2.layer.borderWidth = 20
        view2.layer.borderColor  = UIColor.lightGray.cgColor
        self.view.addSubview(view2)
        //阴影
        let view3 = UIView(frame: CGRect(x: 60, y: 100, width: 200, height: 200))
        view3.layer.shadowColor = UIColor.black.cgColor
        view3.layer.shadowOffset = CGSize(width: 10, height: 10)
        view3.layer.shadowRadius = 5
        view3.layer.shadowOpacity = 0.45
        self.view.addSubview(view3)
        
        //圆角
        let view4 = UIView(frame: CGRect(x: 60, y: 60, width: 200, height: 200))
        view4.backgroundColor = UIColor.black
        view4.layer.cornerRadius = 40
        view4.layer.masksToBounds = true
        let subview1 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200 ))
        subview.backgroundColor = UIColor.gray
        view4.addSubview(subview1)
        self.view.addSubview(view4)
        
        //渐变
        
        let rect = CGRect(x: 20, y: 60, width: 240, height: 240)
        let gradientView = UIView(frame: rect)
        
        let granientLayer = CAGradientLayer()
        granientLayer.frame = granientLayer.frame
        let fromColor = UIColor.yellow.cgColor
        let midColor = UIColor.blue.cgColor
        let toColor = UIColor.red.cgColor
        granientLayer.colors = [fromColor,midColor,toColor]
        granientLayer.startPoint = CGPoint(x: 0, y: 0)
        granientLayer.endPoint = CGPoint(x: 1, y: 0)
        granientLayer.locations = [0,0.3,1]
        
        gradientView.layer.addSublayer(granientLayer)
        self.view.addSubview(gradientView)
        
        
        let view6 = UIView(frame: CGRect(x: 10, y: 40, width: 100, height: 100))
        view6.backgroundColor =  UIColor.init(white: 0.4, alpha: 1)
        self.view.addSubview(view6)
       */
        /*
        //UIView的rame and bounds
        
        let firstView1 = UIView(frame: CGRect(x: 10, y: 20, width: 300, height: 300))
        firstView1.bounds = CGRect(x: 100, y: 30, width: 300, height: 300)
        firstView1.backgroundColor = UIColor.red
        self.view.addSubview(firstView1)
        
        let secondView1 = UIView(frame: CGRect(x: 50, y: 70, width: 200, height: 200))
        secondView1.backgroundColor = UIColor.orange
        
        let thirdView1 = UIView(frame: CGRect(x: 80, y: 200, width: 200, height: 200))
        thirdView1.backgroundColor = UIColor.lightGray
        firstView1.clipsToBounds = true
        
        self.view.addSubview(firstView1)
        self.view.addSubview(secondView1)
        firstView.addSubview(thirdView1)
        self.view.insertSubview(thirdView1, belowSubview: secondView1)
        self.view.bringSubview(toFront: firstView1)
        //fisrtView1.removeFromSuperview()
        
        let view7 = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        self.view.addSubview(view7)
        */
    }
    @objc func SingleTap(){
        print("touch me")
    }
    @objc func returnback(){
      let homeVC = HomeTableViewController()
     self.present(homeVC, animated: true, completion: nil)
    }
    

  
}
