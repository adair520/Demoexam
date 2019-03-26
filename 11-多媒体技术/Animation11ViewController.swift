//
//  Animation11ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/19.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Animation11ViewController: UIViewController,CAAnimationDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    //初始化界面
    func setupView(){
        self.title = "动画"
        //设置导航栏右按钮显示源代码
        let itemcode = UIBarButtonItem(title: "源码", style: .plain, target: self, action: #selector(TestViewController.showcode))
        self.navigationItem.rightBarButtonItem = itemcode
        
        let view1 = UIView(frame: CGRect(x: 10, y: 50, width: 150, height: 150))
        view1.backgroundColor = UIColor.red
        view1.tag = 1
        self.view.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 10, y: 210, width: 150, height: 150))
        view2.backgroundColor = UIColor.orange
        view2.tag = 2
        self.view.addSubview(view2)
       
        let button1 = UIButton(type: .system)
        button1.frame  = CGRect(x: 20, y: 500, width: 100, height: 24)
        button1.backgroundColor = UIColor.black
        button1.setTitle("UIKit实现动画", for: UIControl.State())
        button1.addTarget(self, action: #selector(Animation11ViewController.playAnimation), for: .touchUpInside)
        self.view.addSubview(button1)
        
        let button2 = UIButton(type: .system)
        button2.frame  = CGRect(x: 200, y: 500, width: 100, height: 24)
        button2.backgroundColor = UIColor.purple
        button2.setTitle("帧动画", for: UIControl.State())
        button2.addTarget(self, action: #selector(Animation11ViewController.imagesanimation), for: .touchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(type: .system)
        button3.frame  = CGRect(x: 20, y: 550, width: 100, height: 24)
        button3.backgroundColor = UIColor.purple
        button3.setTitle("关键帧动画", for: UIControl.State())
        button3.addTarget(self, action: #selector(Animation11ViewController.keyanimation), for: .touchUpInside)
        self.view.addSubview(button3)
        
        let button4 = UIButton(type: .system)
        button4.frame  = CGRect(x: 200, y: 550, width: 100, height: 24)
        button4.backgroundColor = UIColor.purple
        button4.setTitle("Animate实现动画", for: UIControl.State())
        button4.addTarget(self, action: #selector(Animation11ViewController.useanimate), for: .touchUpInside)
        self.view.addSubview(button4)
    }
    
    //显示源代码
    @objc func showcode(){
        let textcodevc = UIViewController()
        let textcode = UITextField(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        textcode.backgroundColor = UIColor.black
        textcode.text = "源代码文本对象"
        textcodevc.view.addSubview(textcode)
        self.navigationController?.pushViewController(textcodevc, animated: true)
    }
    //UIKit实现动画
    @objc func playAnimation(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(.easeOut)
        UIView.setAnimationDuration(5)
        UIView.setAnimationBeginsFromCurrentState(true)
        //缩小动画
        let view = self.view.viewWithTag(1)
        view?.frame = CGRect(x: 10, y: 40, width: 0, height: 0)
        view?.backgroundColor = UIColor.blue
        view?.alpha = 0
        //翻转动画
        let view2 = self.view.viewWithTag(1)
        UIView.setAnimationTransition(.curlUp, for: view2!, cache: true)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(Animation11ViewController.animationStop))
        UIView.commitAnimations()
        
    }
    @objc func animationStop(){
        print("AnimationStop")
        self.view.viewWithTag(1)?.removeFromSuperview()
    }
    //animate实现动画
   @objc func useanimate(){
        UIView.animate(withDuration: 25, delay: 1, options: [.curveEaseOut], animations: {
            let view2 = self.view.viewWithTag(2)
            view2?.frame = CGRect(x: 40, y: 40, width: 0, height: 0)
            view2?.backgroundColor = UIColor.blue
            view2?.alpha = 0
        }) { (true) in
            print("Animation stop")
            self.view.viewWithTag(2)?.removeFromSuperview()
        }
    }
    //帧动画
   @objc func  imagesanimation (){
     var images = [UIImage]()
        for i in 1...13{
            images.append(UIImage(named: "animation\(i)")!)
        }
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 225, height: 253))
        imageView.animationImages = images
        imageView.animationDuration = 5
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
        self.view.addSubview(imageView)
    }
    //关键帧动画
    @objc func keyanimation(){
        let imageview = UIImageView(frame: CGRect(x: 200, y: 80, width: 64, height: 64))
        imageview.image = UIImage(named: "keyanimation")
        imageview.tag = 4
        self.view.addSubview(imageview)
        
        let animation = CAKeyframeAnimation(keyPath: "position")
        
        let point1 = CGPoint(x: 40, y: 80)
        let point2 = CGPoint(x: 280, y: 80)
        let point3 = CGPoint(x: 60, y: 300)
        let point4 = CGPoint(x: 280, y: 300)
        
        animation.values = [point1,point2,point3,point4]
        animation.keyTimes = [0.0,0.4,0.6,1.0]
        animation.delegate = self
        animation.duration = 5.0
        imageview.layer.add(animation, forKey: "Move")
        
    }
    func animationDidStart(_ anim: CAAnimation) {
        print("开始关键帧动画")
    }
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        print("结束关键帧动画")
        self.view.viewWithTag(4)?.removeFromSuperview()
    }


}
